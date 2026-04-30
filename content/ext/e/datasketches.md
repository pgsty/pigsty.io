---
title: "datasketches"
linkTitle: "datasketches"
description: "Approximate analytics sketches and aggregates for PostgreSQL"
weight: 4690
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/apache/datasketches-postgresql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">apache/datasketches-postgresql</div>
    <div class="ext-card__desc">https://github.com/apache/datasketches-postgresql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/apache-datasketches-postgresql-1.7.0-src.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">apache-datasketches-postgresql-1.7.0-src.tar.gz</div>
    <div class="ext-card__desc">apache-datasketches-postgresql-1.7.0-src.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`datasketches`**](/ext/e/datasketches) | `1.7.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4690  | [**`datasketches`**](/ext/e/datasketches) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> Built against Apache DataSketches C++ core 5.0.0.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `datasketches` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `datasketches_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-datasketches` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 datasketches_18 datasketches_18-1.7.0-1PIGSTY.el8.x86_64.rpm pigsty 1.7.0 324.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_18-1.7.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 datasketches_18 datasketches_18-1.7.0-1PIGSTY.el8.aarch64.rpm pigsty 1.7.0 314.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_18-1.7.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 datasketches_18 datasketches_18-1.7.0-1PIGSTY.el9.x86_64.rpm pigsty 1.7.0 309.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_18-1.7.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 datasketches_18 datasketches_18-1.7.0-1PIGSTY.el9.aarch64.rpm pigsty 1.7.0 315.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_18-1.7.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 datasketches_18 datasketches_18-1.7.0-1PIGSTY.el10.x86_64.rpm pigsty 1.7.0 319.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_18-1.7.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 datasketches_18 datasketches_18-1.7.0-1PIGSTY.el10.aarch64.rpm pigsty 1.7.0 319.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_18-1.7.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 918.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 920.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 943.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 944.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 1017.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 1020.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 977.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-datasketches postgresql-18-datasketches_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 991.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-18-datasketches_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 datasketches_17 datasketches_17-1.7.0-1PIGSTY.el8.x86_64.rpm pigsty 1.7.0 324.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_17-1.7.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 datasketches_17 datasketches_17-1.7.0-1PIGSTY.el8.aarch64.rpm pigsty 1.7.0 314.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_17-1.7.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 datasketches_17 datasketches_17-1.7.0-1PIGSTY.el9.x86_64.rpm pigsty 1.7.0 309.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_17-1.7.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 datasketches_17 datasketches_17-1.7.0-1PIGSTY.el9.aarch64.rpm pigsty 1.7.0 315.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_17-1.7.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 datasketches_17 datasketches_17-1.7.0-1PIGSTY.el10.x86_64.rpm pigsty 1.7.0 319.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_17-1.7.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 datasketches_17 datasketches_17-1.7.0-1PIGSTY.el10.aarch64.rpm pigsty 1.7.0 319.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_17-1.7.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 918.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 919.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 942.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 943.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 977.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-datasketches postgresql-17-datasketches_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 991.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-17-datasketches_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 datasketches_16 datasketches_16-1.7.0-1PIGSTY.el8.x86_64.rpm pigsty 1.7.0 324.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_16-1.7.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 datasketches_16 datasketches_16-1.7.0-1PIGSTY.el8.aarch64.rpm pigsty 1.7.0 314.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_16-1.7.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 datasketches_16 datasketches_16-1.7.0-1PIGSTY.el9.x86_64.rpm pigsty 1.7.0 309.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_16-1.7.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 datasketches_16 datasketches_16-1.7.0-1PIGSTY.el9.aarch64.rpm pigsty 1.7.0 315.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_16-1.7.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 datasketches_16 datasketches_16-1.7.0-1PIGSTY.el10.x86_64.rpm pigsty 1.7.0 319.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_16-1.7.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 datasketches_16 datasketches_16-1.7.0-1PIGSTY.el10.aarch64.rpm pigsty 1.7.0 319.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_16-1.7.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 918.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 919.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 943.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 943.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 977.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-datasketches postgresql-16-datasketches_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 991.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-16-datasketches_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 datasketches_15 datasketches_15-1.7.0-1PIGSTY.el8.x86_64.rpm pigsty 1.7.0 342.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_15-1.7.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 datasketches_15 datasketches_15-1.7.0-1PIGSTY.el8.aarch64.rpm pigsty 1.7.0 332.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_15-1.7.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 datasketches_15 datasketches_15-1.7.0-1PIGSTY.el9.x86_64.rpm pigsty 1.7.0 323.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_15-1.7.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 datasketches_15 datasketches_15-1.7.0-1PIGSTY.el9.aarch64.rpm pigsty 1.7.0 329.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_15-1.7.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 datasketches_15 datasketches_15-1.7.0-1PIGSTY.el10.x86_64.rpm pigsty 1.7.0 325.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_15-1.7.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 datasketches_15 datasketches_15-1.7.0-1PIGSTY.el10.aarch64.rpm pigsty 1.7.0 325.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_15-1.7.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 932.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 933.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 957.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 957.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 984.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-datasketches postgresql-15-datasketches_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 998.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-15-datasketches_1.7.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 datasketches_14 datasketches_14-1.7.0-1PIGSTY.el8.x86_64.rpm pigsty 1.7.0 342.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/datasketches_14-1.7.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 datasketches_14 datasketches_14-1.7.0-1PIGSTY.el8.aarch64.rpm pigsty 1.7.0 332.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/datasketches_14-1.7.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 datasketches_14 datasketches_14-1.7.0-1PIGSTY.el9.x86_64.rpm pigsty 1.7.0 323.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/datasketches_14-1.7.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 datasketches_14 datasketches_14-1.7.0-1PIGSTY.el9.aarch64.rpm pigsty 1.7.0 328.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/datasketches_14-1.7.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 datasketches_14 datasketches_14-1.7.0-1PIGSTY.el10.x86_64.rpm pigsty 1.7.0 325.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/datasketches_14-1.7.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 datasketches_14 datasketches_14-1.7.0-1PIGSTY.el10.aarch64.rpm pigsty 1.7.0 325.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/datasketches_14-1.7.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 932.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 933.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 957.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 957.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 984.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-datasketches postgresql-14-datasketches_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 998.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/datasketches/postgresql-14-datasketches_1.7.0-1PIGSTY~noble_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install datasketches;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y datasketches -v 18  # PG 18
pig ext install -y datasketches -v 17  # PG 17
pig ext install -y datasketches -v 16  # PG 16
pig ext install -y datasketches -v 15  # PG 15
pig ext install -y datasketches -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y datasketches_18       # PG 18
dnf install -y datasketches_17       # PG 17
dnf install -y datasketches_16       # PG 16
dnf install -y datasketches_15       # PG 15
dnf install -y datasketches_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-datasketches   # PG 18
apt install -y postgresql-17-datasketches   # PG 17
apt install -y postgresql-16-datasketches   # PG 16
apt install -y postgresql-15-datasketches   # PG 15
apt install -y postgresql-14-datasketches   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


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
