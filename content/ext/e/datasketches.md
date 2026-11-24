---
title: "datasketches"
linkTitle: "datasketches"
description: "Approximate analytics sketches and aggregates for PostgreSQL"
weight: 4700
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/apache/datasketches-postgresql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">apache/datasketches-postgresql</div>
    <div class="ext-card__desc">https://github.com/apache/datasketches-postgresql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/apache-datasketches-postgresql-1.7.0-src.tar.gz apache-datasketches-cpp-5.2.0-src.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">apache-datasketches-postgresql-1.7.0-src.tar.gz apache-datasketches-cpp-5.2.0-src.tar.gz</div>
    <div class="ext-card__desc">apache-datasketches-postgresql-1.7.0-src.tar.gz apache-datasketches-cpp-5.2.0-src.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`datasketches`**](/ext/e/datasketches) | `1.7.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4700  | [**`datasketches`**](/ext/e/datasketches) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`ddsketch`](/ext/e/ddsketch) [`count_distinct`](/ext/e/count_distinct) [`tdigest`](/ext/e/tdigest) [`topn`](/ext/e/topn) [`omnisketch`](/ext/e/omnisketch) [`hll`](/ext/e/hll) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> DataSketches C++ core 5.2.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "19,18,17,16,15" >}} | `datasketches` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "19,18,17,16,15" >}} | `datasketches_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-datasketches` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 |
| el9.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| el9.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| el10.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 | AVAIL PGDG 1.7.0 2 |
| el10.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 | AVAIL PGDG 1.7.0 4 |
| d12.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
@ el9.x86_64 19 datasketches_19 datasketches_19-1.7.0-2PGSTY.el9.x86_64.rpm pigsty 1.7.0 965.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_19-1.7.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 datasketches_19 datasketches_19-1.7.0-2PGSTY.el9.aarch64.rpm pigsty 1.7.0 979.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_19-1.7.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 datasketches_19 datasketches_19-1.7.0-2PGSTY.el10.x86_64.rpm pigsty 1.7.0 989.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_19-1.7.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 datasketches_19 datasketches_19-1.7.0-2PGSTY.el10.aarch64.rpm pigsty 1.7.0 994.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_19-1.7.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb pigsty 1.7.0 918.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb pigsty 1.7.0 919.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~trixie_amd64.deb pigsty 1.7.0 944.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~trixie_arm64.deb pigsty 1.7.0 945.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~jammy_amd64.deb pigsty 1.7.0 1017.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~jammy_arm64.deb pigsty 1.7.0 1021.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~noble_amd64.deb pigsty 1.7.0 979.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~noble_arm64.deb pigsty 1.7.0 992.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~resolute_amd64.deb pigsty 1.7.0 947.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-datasketches postgresql-19-datasketches_1.7.0-2PGSTY~resolute_arm64.deb pigsty 1.7.0 953.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-19-datasketches_1.7.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 18 datasketches_18 datasketches_18-1.7.0-3PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 315.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/datasketches_18-1.7.0-3PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 datasketches_18 datasketches_18-1.7.0-2PGSTY.el8.x86_64.rpm pigsty 1.7.0 989.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_18-1.7.0-2PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 datasketches_18 datasketches_18-1.7.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 315.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/datasketches_18-1.7.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 datasketches_18 datasketches_18-1.7.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 314.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/datasketches_18-1.7.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 datasketches_18 datasketches_18-1.7.0-3PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/datasketches_18-1.7.0-3PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 datasketches_18 datasketches_18-1.7.0-2PGSTY.el8.aarch64.rpm pigsty 1.7.0 970.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_18-1.7.0-2PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 datasketches_18 datasketches_18-1.7.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/datasketches_18-1.7.0-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 datasketches_18 datasketches_18-1.7.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/datasketches_18-1.7.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 datasketches_18 datasketches_18-1.7.0-3PGDG.rhel9.9.x86_64.rpm pgdg 1.7.0 312.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/datasketches_18-1.7.0-3PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 datasketches_18 datasketches_18-1.7.0-2PGSTY.el9.x86_64.rpm pigsty 1.7.0 966.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_18-1.7.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 datasketches_18 datasketches_18-1.7.0-3PGDG.rhel9.9.aarch64.rpm pgdg 1.7.0 315.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/datasketches_18-1.7.0-3PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 datasketches_18 datasketches_18-1.7.0-2PGSTY.el9.aarch64.rpm pigsty 1.7.0 979.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_18-1.7.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 datasketches_18 datasketches_18-1.7.0-3PGDG.rhel10.3.x86_64.rpm pgdg 1.7.0 319.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/datasketches_18-1.7.0-3PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 datasketches_18 datasketches_18-1.7.0-2PGSTY.el10.x86_64.rpm pigsty 1.7.0 989.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_18-1.7.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 datasketches_18 datasketches_18-1.7.0-3PGDG.rhel10.3.aarch64.rpm pgdg 1.7.0 317.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/datasketches_18-1.7.0-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 datasketches_18 datasketches_18-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 315.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/datasketches_18-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 datasketches_18 datasketches_18-1.7.0-2PGSTY.el10.aarch64.rpm pigsty 1.7.0 994.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_18-1.7.0-2PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 datasketches_18 datasketches_18-1.7.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 315.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/datasketches_18-1.7.0-2PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb pigsty 1.7.0 918.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb pigsty 1.7.0 919.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~trixie_amd64.deb pigsty 1.7.0 944.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~trixie_arm64.deb pigsty 1.7.0 945.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~jammy_amd64.deb pigsty 1.7.0 1017.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~jammy_arm64.deb pigsty 1.7.0 1021.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~noble_amd64.deb pigsty 1.7.0 979.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~noble_arm64.deb pigsty 1.7.0 992.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~resolute_amd64.deb pigsty 1.7.0 947.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-2PGSTY~resolute_arm64.deb pigsty 1.7.0 953.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 17 datasketches_17 datasketches_17-1.7.0-3PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 315.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/datasketches_17-1.7.0-3PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 datasketches_17 datasketches_17-1.7.0-2PGSTY.el8.x86_64.rpm pigsty 1.7.0 989.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_17-1.7.0-2PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 datasketches_17 datasketches_17-1.7.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 315.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/datasketches_17-1.7.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 datasketches_17 datasketches_17-1.7.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 314.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/datasketches_17-1.7.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 datasketches_17 datasketches_17-1.7.0-3PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/datasketches_17-1.7.0-3PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 datasketches_17 datasketches_17-1.7.0-2PGSTY.el8.aarch64.rpm pigsty 1.7.0 970.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_17-1.7.0-2PGSTY.el8.aarch64.rpm
@ el8.aarch64 17 datasketches_17 datasketches_17-1.7.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/datasketches_17-1.7.0-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 datasketches_17 datasketches_17-1.7.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/datasketches_17-1.7.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 datasketches_17 datasketches_17-1.7.0-3PGDG.rhel9.9.x86_64.rpm pgdg 1.7.0 312.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/datasketches_17-1.7.0-3PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 datasketches_17 datasketches_17-1.7.0-2PGSTY.el9.x86_64.rpm pigsty 1.7.0 966.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_17-1.7.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 datasketches_17 datasketches_17-1.7.0-3PGDG.rhel9.9.aarch64.rpm pgdg 1.7.0 315.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/datasketches_17-1.7.0-3PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 datasketches_17 datasketches_17-1.7.0-2PGSTY.el9.aarch64.rpm pigsty 1.7.0 979.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_17-1.7.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 datasketches_17 datasketches_17-1.7.0-3PGDG.rhel10.3.x86_64.rpm pgdg 1.7.0 319.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/datasketches_17-1.7.0-3PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 datasketches_17 datasketches_17-1.7.0-2PGSTY.el10.x86_64.rpm pigsty 1.7.0 989.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_17-1.7.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 datasketches_17 datasketches_17-1.7.0-3PGDG.rhel10.3.aarch64.rpm pgdg 1.7.0 317.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/datasketches_17-1.7.0-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 datasketches_17 datasketches_17-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 315.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/datasketches_17-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 datasketches_17 datasketches_17-1.7.0-2PGSTY.el10.aarch64.rpm pigsty 1.7.0 994.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_17-1.7.0-2PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 datasketches_17 datasketches_17-1.7.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 315.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/datasketches_17-1.7.0-2PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb pigsty 1.7.0 919.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb pigsty 1.7.0 919.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~trixie_amd64.deb pigsty 1.7.0 944.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~trixie_arm64.deb pigsty 1.7.0 946.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~jammy_amd64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~jammy_arm64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~noble_amd64.deb pigsty 1.7.0 979.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~noble_arm64.deb pigsty 1.7.0 992.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~resolute_amd64.deb pigsty 1.7.0 947.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-2PGSTY~resolute_arm64.deb pigsty 1.7.0 953.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 16 datasketches_16 datasketches_16-1.7.0-3PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 315.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/datasketches_16-1.7.0-3PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 datasketches_16 datasketches_16-1.7.0-2PGSTY.el8.x86_64.rpm pigsty 1.7.0 989.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_16-1.7.0-2PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 datasketches_16 datasketches_16-1.7.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 315.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/datasketches_16-1.7.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 datasketches_16 datasketches_16-1.7.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 314.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/datasketches_16-1.7.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 datasketches_16 datasketches_16-1.7.0-3PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/datasketches_16-1.7.0-3PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 datasketches_16 datasketches_16-1.7.0-2PGSTY.el8.aarch64.rpm pigsty 1.7.0 970.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_16-1.7.0-2PGSTY.el8.aarch64.rpm
@ el8.aarch64 16 datasketches_16 datasketches_16-1.7.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/datasketches_16-1.7.0-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 datasketches_16 datasketches_16-1.7.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 301.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/datasketches_16-1.7.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 datasketches_16 datasketches_16-1.7.0-3PGDG.rhel9.9.x86_64.rpm pgdg 1.7.0 312.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/datasketches_16-1.7.0-3PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 datasketches_16 datasketches_16-1.7.0-2PGSTY.el9.x86_64.rpm pigsty 1.7.0 965.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_16-1.7.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 datasketches_16 datasketches_16-1.7.0-3PGDG.rhel9.9.aarch64.rpm pgdg 1.7.0 315.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/datasketches_16-1.7.0-3PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 datasketches_16 datasketches_16-1.7.0-2PGSTY.el9.aarch64.rpm pigsty 1.7.0 979.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_16-1.7.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 datasketches_16 datasketches_16-1.7.0-3PGDG.rhel10.3.x86_64.rpm pgdg 1.7.0 319.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/datasketches_16-1.7.0-3PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 datasketches_16 datasketches_16-1.7.0-2PGSTY.el10.x86_64.rpm pigsty 1.7.0 989.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_16-1.7.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 datasketches_16 datasketches_16-1.7.0-3PGDG.rhel10.3.aarch64.rpm pgdg 1.7.0 317.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/datasketches_16-1.7.0-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 datasketches_16 datasketches_16-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 315.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/datasketches_16-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 datasketches_16 datasketches_16-1.7.0-2PGSTY.el10.aarch64.rpm pigsty 1.7.0 994.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_16-1.7.0-2PGSTY.el10.aarch64.rpm
@ el10.aarch64 16 datasketches_16 datasketches_16-1.7.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 315.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/datasketches_16-1.7.0-2PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb pigsty 1.7.0 919.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb pigsty 1.7.0 919.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~trixie_amd64.deb pigsty 1.7.0 944.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~trixie_arm64.deb pigsty 1.7.0 945.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~jammy_amd64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~jammy_arm64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~noble_amd64.deb pigsty 1.7.0 979.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~noble_arm64.deb pigsty 1.7.0 992.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~resolute_amd64.deb pigsty 1.7.0 947.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-2PGSTY~resolute_arm64.deb pigsty 1.7.0 953.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 15 datasketches_15 datasketches_15-1.7.0-3PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 326.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/datasketches_15-1.7.0-3PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 datasketches_15 datasketches_15-1.7.0-2PGSTY.el8.x86_64.rpm pigsty 1.7.0 997.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_15-1.7.0-2PGSTY.el8.x86_64.rpm
@ el8.x86_64 15 datasketches_15 datasketches_15-1.7.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 325.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/datasketches_15-1.7.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 datasketches_15 datasketches_15-1.7.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.7.0 325.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/datasketches_15-1.7.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 datasketches_15 datasketches_15-1.7.0-3PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 312.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/datasketches_15-1.7.0-3PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 datasketches_15 datasketches_15-1.7.0-2PGSTY.el8.aarch64.rpm pigsty 1.7.0 979.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_15-1.7.0-2PGSTY.el8.aarch64.rpm
@ el8.aarch64 15 datasketches_15 datasketches_15-1.7.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 312.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/datasketches_15-1.7.0-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 datasketches_15 datasketches_15-1.7.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.7.0 312.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/datasketches_15-1.7.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 datasketches_15 datasketches_15-1.7.0-3PGDG.rhel9.9.x86_64.rpm pgdg 1.7.0 323.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/datasketches_15-1.7.0-3PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 15 datasketches_15 datasketches_15-1.7.0-2PGSTY.el9.x86_64.rpm pigsty 1.7.0 973.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_15-1.7.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 datasketches_15 datasketches_15-1.7.0-3PGDG.rhel9.9.aarch64.rpm pgdg 1.7.0 325.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/datasketches_15-1.7.0-3PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 15 datasketches_15 datasketches_15-1.7.0-2PGSTY.el9.aarch64.rpm pigsty 1.7.0 985.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_15-1.7.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 datasketches_15 datasketches_15-1.7.0-3PGDG.rhel10.3.x86_64.rpm pgdg 1.7.0 326.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/datasketches_15-1.7.0-3PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 15 datasketches_15 datasketches_15-1.7.0-2PGSTY.el10.x86_64.rpm pigsty 1.7.0 995.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_15-1.7.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 datasketches_15 datasketches_15-1.7.0-3PGDG.rhel10.3.aarch64.rpm pgdg 1.7.0 323.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/datasketches_15-1.7.0-3PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 datasketches_15 datasketches_15-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 320.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/datasketches_15-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 datasketches_15 datasketches_15-1.7.0-2PGSTY.el10.aarch64.rpm pigsty 1.7.0 998.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_15-1.7.0-2PGSTY.el10.aarch64.rpm
@ el10.aarch64 15 datasketches_15 datasketches_15-1.7.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 320.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/datasketches_15-1.7.0-2PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb pigsty 1.7.0 934.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb pigsty 1.7.0 934.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~trixie_amd64.deb pigsty 1.7.0 959.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~trixie_arm64.deb pigsty 1.7.0 958.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~jammy_amd64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~jammy_arm64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~noble_amd64.deb pigsty 1.7.0 986.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~noble_arm64.deb pigsty 1.7.0 1000.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~resolute_amd64.deb pigsty 1.7.0 954.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-2PGSTY~resolute_arm64.deb pigsty 1.7.0 961.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-2PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `datasketches` using `pig build`:

```bash
pig build pkg datasketches         # build RPM / DEB packages
```


## Install

You can install `datasketches` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install datasketches;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y datasketches -v 19  # PG 19
pig ext install -y datasketches -v 18  # PG 18
pig ext install -y datasketches -v 17  # PG 17
pig ext install -y datasketches -v 16  # PG 16
pig ext install -y datasketches -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y datasketches_19       # PG 19
dnf install -y datasketches_18       # PG 18
dnf install -y datasketches_17       # PG 17
dnf install -y datasketches_16       # PG 16
dnf install -y datasketches_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-datasketches   # PG 19
apt install -y postgresql-18-datasketches   # PG 18
apt install -y postgresql-17-datasketches   # PG 17
apt install -y postgresql-16-datasketches   # PG 16
apt install -y postgresql-15-datasketches   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION datasketches;
```




## Usage

Sources: [README](https://github.com/apache/datasketches-postgresql/blob/master/README.md), [latest release 1.7.0](https://github.com/apache/datasketches-postgresql/releases/tag/1.7.0), [Apache DataSketches](https://datasketches.apache.org/)

`datasketches` adds approximate analytics sketch types and aggregates to PostgreSQL. The upstream README lists CPC, HLL, Theta, Array Of Doubles, KLL, Quantiles, and Frequent Strings sketches; the 1.7.0 release is the latest published GitHub release, while the default branch has already moved on to `1.8.0-SNAPSHOT`.

```sql
CREATE EXTENSION datasketches;
```

### Core Sketch Families

- `cpc_sketch` and `hll_sketch` for approximate distinct counting.
- `theta_sketch` for distinct counting plus set operations such as union, intersection, and A-not-B.
- `aod_sketch` for tuple-style metrics keyed by identifiers with arrays of doubles.
- `kll_*_sketch` and `quantiles_*_sketch` for quantiles, ranks, PMF, and CDF.
- `frequent_strings_sketch` for heavy-hitter detection.

### Common Patterns

Build a sketch from raw values:

```sql
SELECT cpc_sketch_build(1);
SELECT kll_float_sketch_build(value) FROM normal;
```

Use one-shot approximate aggregates:

```sql
SELECT cpc_sketch_distinct(id) FROM random_ints_100m;
```

Merge sketches across groups or cube dimensions:

```sql
SELECT cpc_sketch_get_estimate(cpc_sketch_union(sketch)) FROM cpc_sketch_test;
SELECT hll_sketch_get_estimate(hll_sketch_union(sketch)) FROM hll_sketch_test;
SELECT kll_float_sketch_get_quantile(kll_float_sketch_merge(sketch), 0.5)
FROM kll_float_sketch_test;
```

Run set operations on Theta sketches:

```sql
SELECT theta_sketch_get_estimate(theta_sketch_intersection(sketch1, sketch2))
FROM theta_set_op_test;
```

Find frequent items above a threshold:

```sql
SELECT frequent_strings_sketch_result_no_false_negatives(
  frequent_strings_sketch_build(9, value),
  1000000
)
FROM zipf_1p1_8k_100m;
```

### Caveats

- Upstream documents PostgreSQL 9.6+ plus Boost 1.75.0 and DataSketches C++ core 5.0.0 or later as build dependencies.
- These are approximate structures meant to be mergeable across dimensions; they are not exact replacements for `COUNT(DISTINCT ...)` or exact histograms.
