---
title: "count_distinct"
linkTitle: "count_distinct"
description: "An alternative to COUNT(DISTINCT …) aggregate, usable with HashAggregate"
weight: 4630
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/count_distinct">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/count_distinct</div>
    <div class="ext-card__desc">https://github.com/tvondra/count_distinct</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/count_distinct-3.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">count_distinct-3.0.2.tar.gz</div>
    <div class="ext-card__desc">count_distinct-3.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`count_distinct`**](/ext/e/count_distinct) | `3.0.2` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4630  | [**`count_distinct`**](/ext/e/count_distinct) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`ddsketch`](/ext/e/ddsketch) [`tdigest`](/ext/e/tdigest) [`topn`](/ext/e/topn) [`omnisketch`](/ext/e/omnisketch) [`datasketches`](/ext/e/datasketches) [`hll`](/ext/e/hll) [`intagg`](/ext/e/intagg) [`intarray`](/ext/e/intarray) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> no pg14 on el8/9 pgdg


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `3.0.2` | {{< pgvers "18,17,16,15,14" >}} | `count_distinct` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.2` | {{< pgvers "18,17,16,15,14" >}} | `count_distinct_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-count-distinct` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 |
| el8.aarch64 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 | AVAIL PIGSTY 3.0.2 2 |
| el9.x86_64 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 2 |
| el9.aarch64 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 |
| el10.x86_64 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 |
| el10.aarch64 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 | AVAIL PGDG 3.0.2 3 |
| d12.x86_64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| d12.aarch64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| d13.x86_64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| d13.aarch64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| u22.x86_64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| u22.aarch64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| u24.x86_64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| u24.aarch64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| u26.x86_64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
| u26.aarch64 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 | AVAIL PIGSTY 3.0.2 1 |
@ el8.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-1PIGSTY.el8.x86_64.rpm pigsty 3.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/count_distinct_18-3.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-1PGDG.rhel8.x86_64.rpm pgdg 3.0.2 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/count_distinct_18-3.0.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-1PIGSTY.el8.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/count_distinct_18-3.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-1PGDG.rhel8.aarch64.rpm pgdg 3.0.2 22.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/count_distinct_18-3.0.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/count_distinct_18-3.0.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-1PIGSTY.el9.x86_64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/count_distinct_18-3.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-1PGDG.rhel9.x86_64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/count_distinct_18-3.0.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.0.2 22.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/count_distinct_18-3.0.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-1PIGSTY.el9.aarch64.rpm pigsty 3.0.2 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/count_distinct_18-3.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-1PGDG.rhel9.aarch64.rpm pgdg 3.0.2 22.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/count_distinct_18-3.0.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.0.2 23.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/count_distinct_18-3.0.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-1PIGSTY.el10.x86_64.rpm pigsty 3.0.2 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/count_distinct_18-3.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 count_distinct_18 count_distinct_18-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 23.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/count_distinct_18-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.0.2 22.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/count_distinct_18-3.0.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-1PIGSTY.el10.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/count_distinct_18-3.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 count_distinct_18 count_distinct_18-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/count_distinct_18-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb pigsty 3.0.2 34.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb pigsty 3.0.2 34.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb pigsty 3.0.2 34.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb pigsty 3.0.2 34.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb pigsty 3.0.2 36.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb pigsty 3.0.2 36.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb pigsty 3.0.2 35.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb pigsty 3.0.2 35.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb pigsty 3.0.2 35.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-count-distinct postgresql-18-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb pigsty 3.0.2 35.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-18-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 count_distinct_17 count_distinct_17-3.0.2-1PIGSTY.el8.x86_64.rpm pigsty 3.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/count_distinct_17-3.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 count_distinct_17 count_distinct_17-3.0.1-6PGDG.rhel8.x86_64.rpm pgdg 3.0.1 20.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/count_distinct_17-3.0.1-6PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 count_distinct_17 count_distinct_17-3.0.2-1PIGSTY.el8.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/count_distinct_17-3.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 count_distinct_17 count_distinct_17-3.0.1-6PGDG.rhel8.aarch64.rpm pgdg 3.0.1 20.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/count_distinct_17-3.0.1-6PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 count_distinct_17 count_distinct_17-3.0.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.0.2 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/count_distinct_17-3.0.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 count_distinct_17 count_distinct_17-3.0.2-1PIGSTY.el9.x86_64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/count_distinct_17-3.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 count_distinct_17 count_distinct_17-3.0.1-6PGDG.rhel9.x86_64.rpm pgdg 3.0.1 20.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/count_distinct_17-3.0.1-6PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 count_distinct_17 count_distinct_17-3.0.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.0.2 22.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/count_distinct_17-3.0.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 count_distinct_17 count_distinct_17-3.0.2-1PIGSTY.el9.aarch64.rpm pigsty 3.0.2 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/count_distinct_17-3.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 count_distinct_17 count_distinct_17-3.0.1-6PGDG.rhel9.aarch64.rpm pgdg 3.0.1 20.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/count_distinct_17-3.0.1-6PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 count_distinct_17 count_distinct_17-3.0.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.0.2 23.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/count_distinct_17-3.0.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 count_distinct_17 count_distinct_17-3.0.2-1PIGSTY.el10.x86_64.rpm pigsty 3.0.2 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/count_distinct_17-3.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 count_distinct_17 count_distinct_17-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 23.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/count_distinct_17-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 count_distinct_17 count_distinct_17-3.0.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.0.2 22.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/count_distinct_17-3.0.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 count_distinct_17 count_distinct_17-3.0.2-1PIGSTY.el10.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/count_distinct_17-3.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 count_distinct_17 count_distinct_17-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/count_distinct_17-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb pigsty 3.0.2 34.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb pigsty 3.0.2 34.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb pigsty 3.0.2 37.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb pigsty 3.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb pigsty 3.0.2 35.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb pigsty 3.0.2 35.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb pigsty 3.0.2 35.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-count-distinct postgresql-17-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb pigsty 3.0.2 35.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-17-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 count_distinct_16 count_distinct_16-3.0.2-1PIGSTY.el8.x86_64.rpm pigsty 3.0.2 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/count_distinct_16-3.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 count_distinct_16 count_distinct_16-3.0.1-5PGDG.rhel8.x86_64.rpm pgdg 3.0.1 20.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/count_distinct_16-3.0.1-5PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 count_distinct_16 count_distinct_16-3.0.2-1PIGSTY.el8.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/count_distinct_16-3.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 count_distinct_16 count_distinct_16-3.0.1-5PGDG.rhel8.aarch64.rpm pgdg 3.0.1 20.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/count_distinct_16-3.0.1-5PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 count_distinct_16 count_distinct_16-3.0.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.0.2 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/count_distinct_16-3.0.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 count_distinct_16 count_distinct_16-3.0.2-1PIGSTY.el9.x86_64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/count_distinct_16-3.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 count_distinct_16 count_distinct_16-3.0.1-5PGDG.rhel9.x86_64.rpm pgdg 3.0.1 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/count_distinct_16-3.0.1-5PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 count_distinct_16 count_distinct_16-3.0.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.0.2 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/count_distinct_16-3.0.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 count_distinct_16 count_distinct_16-3.0.2-1PIGSTY.el9.aarch64.rpm pigsty 3.0.2 16.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/count_distinct_16-3.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 count_distinct_16 count_distinct_16-3.0.1-5PGDG.rhel9.aarch64.rpm pgdg 3.0.1 19.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/count_distinct_16-3.0.1-5PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 count_distinct_16 count_distinct_16-3.0.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.0.2 23.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/count_distinct_16-3.0.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 count_distinct_16 count_distinct_16-3.0.2-1PIGSTY.el10.x86_64.rpm pigsty 3.0.2 16.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/count_distinct_16-3.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 count_distinct_16 count_distinct_16-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/count_distinct_16-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 count_distinct_16 count_distinct_16-3.0.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.0.2 22.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/count_distinct_16-3.0.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 count_distinct_16 count_distinct_16-3.0.2-1PIGSTY.el10.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/count_distinct_16-3.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 count_distinct_16 count_distinct_16-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/count_distinct_16-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb pigsty 3.0.2 34.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb pigsty 3.0.2 34.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb pigsty 3.0.2 37.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb pigsty 3.0.2 37.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb pigsty 3.0.2 35.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb pigsty 3.0.2 35.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb pigsty 3.0.2 35.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-count-distinct postgresql-16-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb pigsty 3.0.2 35.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-16-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 count_distinct_15 count_distinct_15-3.0.2-1PIGSTY.el8.x86_64.rpm pigsty 3.0.2 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/count_distinct_15-3.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 count_distinct_15 count_distinct_15-3.0.1-3.rhel8.x86_64.rpm pgdg 3.0.1 31.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/count_distinct_15-3.0.1-3.rhel8.x86_64.rpm
@ el8.aarch64 15 count_distinct_15 count_distinct_15-3.0.2-1PIGSTY.el8.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/count_distinct_15-3.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 count_distinct_15 count_distinct_15-3.0.1-3.rhel8.aarch64.rpm pgdg 3.0.1 31.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/count_distinct_15-3.0.1-3.rhel8.aarch64.rpm
@ el9.x86_64 15 count_distinct_15 count_distinct_15-3.0.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.0.2 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/count_distinct_15-3.0.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 count_distinct_15 count_distinct_15-3.0.2-1PIGSTY.el9.x86_64.rpm pigsty 3.0.2 16.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/count_distinct_15-3.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 count_distinct_15 count_distinct_15-3.0.1-3.rhel9.x86_64.rpm pgdg 3.0.1 32.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/count_distinct_15-3.0.1-3.rhel9.x86_64.rpm
@ el9.aarch64 15 count_distinct_15 count_distinct_15-3.0.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.0.2 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/count_distinct_15-3.0.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 count_distinct_15 count_distinct_15-3.0.2-1PIGSTY.el9.aarch64.rpm pigsty 3.0.2 16.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/count_distinct_15-3.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 count_distinct_15 count_distinct_15-3.0.1-3.rhel9.aarch64.rpm pgdg 3.0.1 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/count_distinct_15-3.0.1-3.rhel9.aarch64.rpm
@ el10.x86_64 15 count_distinct_15 count_distinct_15-3.0.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/count_distinct_15-3.0.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 count_distinct_15 count_distinct_15-3.0.2-1PIGSTY.el10.x86_64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/count_distinct_15-3.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 count_distinct_15 count_distinct_15-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/count_distinct_15-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 count_distinct_15 count_distinct_15-3.0.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.0.2 22.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/count_distinct_15-3.0.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 count_distinct_15 count_distinct_15-3.0.2-1PIGSTY.el10.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/count_distinct_15-3.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 count_distinct_15 count_distinct_15-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/count_distinct_15-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb pigsty 3.0.2 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb pigsty 3.0.2 34.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb pigsty 3.0.2 37.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb pigsty 3.0.2 37.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb pigsty 3.0.2 35.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb pigsty 3.0.2 35.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb pigsty 3.0.2 35.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-count-distinct postgresql-15-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb pigsty 3.0.2 35.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-15-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 count_distinct_14 count_distinct_14-3.0.2-1PIGSTY.el8.x86_64.rpm pigsty 3.0.2 16.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/count_distinct_14-3.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 count_distinct_14 count_distinct_14-3.0.1-3.rhel8.x86_64.rpm pgdg 3.0.1 32.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/count_distinct_14-3.0.1-3.rhel8.x86_64.rpm
@ el8.aarch64 14 count_distinct_14 count_distinct_14-3.0.2-1PIGSTY.el8.aarch64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/count_distinct_14-3.0.2-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 count_distinct_14 count_distinct_14-3.0.1-3.rhel8.aarch64.rpm pgdg 3.0.1 31.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/count_distinct_14-3.0.1-3.rhel8.aarch64.rpm
@ el9.x86_64 14 count_distinct_14 count_distinct_14-3.0.2-3PGDG.rhel9.8.x86_64.rpm pgdg 3.0.2 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/count_distinct_14-3.0.2-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 count_distinct_14 count_distinct_14-3.0.2-1PIGSTY.el9.x86_64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/count_distinct_14-3.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 count_distinct_14 count_distinct_14-3.0.2-3PGDG.rhel9.8.aarch64.rpm pgdg 3.0.2 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/count_distinct_14-3.0.2-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 count_distinct_14 count_distinct_14-3.0.2-1PIGSTY.el9.aarch64.rpm pigsty 3.0.2 16.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/count_distinct_14-3.0.2-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 count_distinct_14 count_distinct_14-3.0.1-3.rhel9.aarch64.rpm pgdg 3.0.1 31.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/count_distinct_14-3.0.1-3.rhel9.aarch64.rpm
@ el10.x86_64 14 count_distinct_14 count_distinct_14-3.0.2-3PGDG.rhel10.2.x86_64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/count_distinct_14-3.0.2-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 count_distinct_14 count_distinct_14-3.0.2-1PIGSTY.el10.x86_64.rpm pigsty 3.0.2 16.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/count_distinct_14-3.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 count_distinct_14 count_distinct_14-3.0.2-1PGDG.rhel10.x86_64.rpm pgdg 3.0.2 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/count_distinct_14-3.0.2-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 count_distinct_14 count_distinct_14-3.0.2-3PGDG.rhel10.2.aarch64.rpm pgdg 3.0.2 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/count_distinct_14-3.0.2-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 count_distinct_14 count_distinct_14-3.0.2-1PIGSTY.el10.aarch64.rpm pigsty 3.0.2 16.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/count_distinct_14-3.0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 count_distinct_14 count_distinct_14-3.0.2-1PGDG.rhel10.aarch64.rpm pgdg 3.0.2 22.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/count_distinct_14-3.0.2-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb pigsty 3.0.2 34.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb pigsty 3.0.2 34.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb pigsty 3.0.2 34.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb pigsty 3.0.2 37.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb pigsty 3.0.2 37.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb pigsty 3.0.2 35.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb pigsty 3.0.2 35.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb pigsty 3.0.2 35.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-count-distinct postgresql-14-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb pigsty 3.0.2 35.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/count-distinct/postgresql-14-count-distinct_3.0.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `count_distinct` using `pig build`:

```bash
pig build pkg count_distinct         # build RPM / DEB packages
```


## Install

You can install `count_distinct` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install count_distinct;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y count_distinct -v 18  # PG 18
pig ext install -y count_distinct -v 17  # PG 17
pig ext install -y count_distinct -v 16  # PG 16
pig ext install -y count_distinct -v 15  # PG 15
pig ext install -y count_distinct -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y count_distinct_18       # PG 18
dnf install -y count_distinct_17       # PG 17
dnf install -y count_distinct_16       # PG 16
dnf install -y count_distinct_15       # PG 15
dnf install -y count_distinct_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-count-distinct   # PG 18
apt install -y postgresql-17-count-distinct   # PG 17
apt install -y postgresql-16-count-distinct   # PG 16
apt install -y postgresql-15-count-distinct   # PG 15
apt install -y postgresql-14-count-distinct   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION count_distinct;
```




## Usage

> [count_distinct: alternative to COUNT(DISTINCT ...) with better performance](https://github.com/tvondra/count_distinct)

Provides an alternative to `COUNT(DISTINCT ...)` that avoids sorting and supports parallel aggregation.

```sql
CREATE EXTENSION count_distinct;
```

### Functions

| Function | Description |
|---|---|
| `count_distinct(value anyelement)` | Count distinct values (alternative to `COUNT(DISTINCT ...)`) |
| `array_agg_distinct(value anyelement)` | Aggregate distinct values into an array |
| `count_distinct_elements(value anyarray)` | Count distinct elements within input arrays |
| `array_agg_distinct_elements(value anyarray)` | Aggregate distinct elements from input arrays |

### Examples

```sql
CREATE TABLE test_table (id INT, val INT);
INSERT INTO test_table
SELECT mod(i, 1000), (1000 * random())::int
FROM generate_series(1, 10000000) s(i);

-- Instead of:  SELECT id, COUNT(DISTINCT val) FROM test_table GROUP BY 1;
-- Use:
SELECT id, count_distinct(val) FROM test_table GROUP BY 1;

-- Aggregate distinct values into an array
SELECT id, array_agg_distinct(val) FROM test_table GROUP BY 1;

-- Count distinct elements across arrays
SELECT count_distinct_elements(ARRAY[1, 2, 2, 3]);
```
