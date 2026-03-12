---
title: "plxslt"
linkTitle: "plxslt"
description: "XSLT procedural language for PostgreSQL"
weight: 3110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/petere/plxslt">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">petere/plxslt</div>
    <div class="ext-card__desc">https://github.com/petere/plxslt</div>
  </a>
  <a class="ext-card ext-card--source" href="plxslt-0.20140221.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plxslt-0.20140221.tar.gz</div>
    <div class="ext-card__desc">plxslt-0.20140221.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plxslt`**](/ext/e/plxslt) | `0.20140221` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3110  | [**`plxslt`**](/ext/e/plxslt) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pgml`](/ext/e/pgml) [`plpython3u`](/ext/e/plpython3u) [`pg_tle`](/ext/e/pg_tle) [`plv8`](/ext/e/plv8) [`pljava`](/ext/e/pljava) [`plperl`](/ext/e/plperl) [`pllua`](/ext/e/pllua) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.20140221` | {{< pgvers "18,17,16,15,14" >}} | `plxslt` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.20140221` | {{< pgvers "18,17,16,15,14" >}} | `plxslt_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.20140221` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plxslt` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 |
| el8.aarch64 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 |
| el9.x86_64 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 |
| el9.aarch64 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 |
| el10.x86_64 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 |
| el10.aarch64 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 | AVAIL PGDG 0.20140221 1 |
| d12.x86_64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
| d12.aarch64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
| d13.x86_64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
| d13.aarch64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
| u22.x86_64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
| u22.aarch64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
| u24.x86_64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
| u24.aarch64 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 | AVAIL PIGSTY 0.20140221 1 |
@ el8.x86_64 18 plxslt_18 plxslt_18-0.20140221-1PGDG.rhel8.x86_64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plxslt_18-0.20140221-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 plxslt_18 plxslt_18-0.20140221-1PGDG.rhel8.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plxslt_18-0.20140221-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 plxslt_18 plxslt_18-0.20140221-1PGDG.rhel9.x86_64.rpm pgdg 0.20140221 14.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plxslt_18-0.20140221-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 plxslt_18 plxslt_18-0.20140221-1PGDG.rhel9.aarch64.rpm pgdg 0.20140221 14.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plxslt_18-0.20140221-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 plxslt_18 plxslt_18-0.20140221-1PGDG.rhel10.x86_64.rpm pgdg 0.20140221 15.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plxslt_18-0.20140221-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 plxslt_18 plxslt_18-0.20140221-1PGDG.rhel10.aarch64.rpm pgdg 0.20140221 15.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plxslt_18-0.20140221-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb pigsty 0.20140221 13.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb pigsty 0.20140221 13.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~noble_amd64.deb pigsty 0.20140221 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-plxslt postgresql-18-plxslt_0.20140221-1PIGSTY~noble_arm64.deb pigsty 0.20140221 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-18-plxslt_0.20140221-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 plxslt_17 plxslt_17-0.20140221-1PGDG.rhel8.x86_64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plxslt_17-0.20140221-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 plxslt_17 plxslt_17-0.20140221-1PGDG.rhel8.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plxslt_17-0.20140221-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 plxslt_17 plxslt_17-0.20140221-1PGDG.rhel9.x86_64.rpm pgdg 0.20140221 14.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plxslt_17-0.20140221-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 plxslt_17 plxslt_17-0.20140221-1PGDG.rhel9.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plxslt_17-0.20140221-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 plxslt_17 plxslt_17-0.20140221-1PGDG.rhel10.x86_64.rpm pgdg 0.20140221 15.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plxslt_17-0.20140221-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 plxslt_17 plxslt_17-0.20140221-1PGDG.rhel10.aarch64.rpm pgdg 0.20140221 15.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plxslt_17-0.20140221-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb pigsty 0.20140221 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb pigsty 0.20140221 14.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~noble_amd64.deb pigsty 0.20140221 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-plxslt postgresql-17-plxslt_0.20140221-1PIGSTY~noble_arm64.deb pigsty 0.20140221 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-17-plxslt_0.20140221-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 plxslt_16 plxslt_16-0.20140221-1PGDG.rhel8.x86_64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plxslt_16-0.20140221-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 plxslt_16 plxslt_16-0.20140221-1PGDG.rhel8.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plxslt_16-0.20140221-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 plxslt_16 plxslt_16-0.20140221-1PGDG.rhel9.x86_64.rpm pgdg 0.20140221 14.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plxslt_16-0.20140221-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 plxslt_16 plxslt_16-0.20140221-1PGDG.rhel9.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plxslt_16-0.20140221-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 plxslt_16 plxslt_16-0.20140221-1PGDG.rhel10.x86_64.rpm pgdg 0.20140221 15.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plxslt_16-0.20140221-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 plxslt_16 plxslt_16-0.20140221-1PGDG.rhel10.aarch64.rpm pgdg 0.20140221 15.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plxslt_16-0.20140221-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb pigsty 0.20140221 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb pigsty 0.20140221 14.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~noble_amd64.deb pigsty 0.20140221 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-plxslt postgresql-16-plxslt_0.20140221-1PIGSTY~noble_arm64.deb pigsty 0.20140221 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-16-plxslt_0.20140221-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 plxslt_15 plxslt_15-0.20140221-1PGDG.rhel8.x86_64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plxslt_15-0.20140221-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 plxslt_15 plxslt_15-0.20140221-1PGDG.rhel8.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plxslt_15-0.20140221-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 plxslt_15 plxslt_15-0.20140221-1PGDG.rhel9.x86_64.rpm pgdg 0.20140221 14.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plxslt_15-0.20140221-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 plxslt_15 plxslt_15-0.20140221-1PGDG.rhel9.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plxslt_15-0.20140221-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 plxslt_15 plxslt_15-0.20140221-1PGDG.rhel10.x86_64.rpm pgdg 0.20140221 15.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plxslt_15-0.20140221-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 plxslt_15 plxslt_15-0.20140221-1PGDG.rhel10.aarch64.rpm pgdg 0.20140221 15.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plxslt_15-0.20140221-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb pigsty 0.20140221 12.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb pigsty 0.20140221 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb pigsty 0.20140221 14.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~noble_amd64.deb pigsty 0.20140221 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-plxslt postgresql-15-plxslt_0.20140221-1PIGSTY~noble_arm64.deb pigsty 0.20140221 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-15-plxslt_0.20140221-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 plxslt_14 plxslt_14-0.20140221-1PGDG.rhel8.x86_64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plxslt_14-0.20140221-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 plxslt_14 plxslt_14-0.20140221-1PGDG.rhel8.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plxslt_14-0.20140221-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 plxslt_14 plxslt_14-0.20140221-1PGDG.rhel9.x86_64.rpm pgdg 0.20140221 14.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plxslt_14-0.20140221-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 plxslt_14 plxslt_14-0.20140221-1PGDG.rhel9.aarch64.rpm pgdg 0.20140221 14.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plxslt_14-0.20140221-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 plxslt_14 plxslt_14-0.20140221-1PGDG.rhel10.x86_64.rpm pgdg 0.20140221 15.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plxslt_14-0.20140221-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 plxslt_14 plxslt_14-0.20140221-1PGDG.rhel10.aarch64.rpm pgdg 0.20140221 15.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plxslt_14-0.20140221-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb pigsty 0.20140221 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb pigsty 0.20140221 14.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb pigsty 0.20140221 14.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~noble_amd64.deb pigsty 0.20140221 13.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-plxslt postgresql-14-plxslt_0.20140221-1PIGSTY~noble_arm64.deb pigsty 0.20140221 13.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plxslt/postgresql-14-plxslt_0.20140221-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `plxslt` using `pig build`:

```bash
pig build pkg plxslt         # build DEB packages
```


## Install

You can install `plxslt` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install plxslt;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y plxslt -v 18  # PG 18
pig ext install -y plxslt -v 17  # PG 17
pig ext install -y plxslt -v 16  # PG 16
pig ext install -y plxslt -v 15  # PG 15
pig ext install -y plxslt -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y plxslt_18       # PG 18
dnf install -y plxslt_17       # PG 17
dnf install -y plxslt_16       # PG 16
dnf install -y plxslt_15       # PG 15
dnf install -y plxslt_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-plxslt   # PG 18
apt install -y postgresql-17-plxslt   # PG 17
apt install -y postgresql-16-plxslt   # PG 16
apt install -y postgresql-15-plxslt   # PG 15
apt install -y postgresql-14-plxslt   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION plxslt;
```




## Usage

> [plxslt: XSLT procedural language for PostgreSQL](https://github.com/petere/plxslt)

`plxslt` enables writing PostgreSQL functions as XSLT stylesheets for transforming XML data.

```sql
CREATE EXTENSION plxslt;
```

### Create XSLT Functions

The function body is an XSLT stylesheet. The first parameter must be of type `xml` and receives the input document:

```sql
CREATE FUNCTION extract_title(xml) RETURNS xml AS $$
<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:value-of select="//title"/>
  </xsl:template>
</xsl:stylesheet>
$$ LANGUAGE xslt;

SELECT extract_title('<doc><title>Hello World</title></doc>'::xml);
```

### Return Types

The return type must match the stylesheet's output method:

| Output Method | Return Type |
|---------------|-------------|
| `xml` | `xml` |
| `text` | `text` or `varchar` |
| `html` | `text` or `varchar` |

### Passing Parameters

Additional function parameters beyond the first `xml` parameter are passed as XSL stylesheet parameters:

```sql
CREATE FUNCTION transform_with_param(xml, text) RETURNS xml AS $$
<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="arg2"/>
  <xsl:template match="/">
    <result>
      <xsl:value-of select="$arg2"/>
    </result>
  </xsl:template>
</xsl:stylesheet>
$$ LANGUAGE xslt;
```

### Limitations

- First parameter must be `xml` type
- Triggers are not supported
- Only XSLT 1.0 transformations are supported (via libxslt)
