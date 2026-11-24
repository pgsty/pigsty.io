---
title: "logerrors"
linkTitle: "logerrors"
description: "Function for collecting statistics about messages in logfile"
weight: 7140
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/munakoiso/logerrors">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">munakoiso/logerrors</div>
    <div class="ext-card__desc">https://github.com/munakoiso/logerrors</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/logerrors-2.1.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">logerrors-2.1.6.tar.gz</div>
    <div class="ext-card__desc">logerrors-2.1.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`logerrors`**](/ext/e/logerrors) | `2.1.6` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7140  | [**`logerrors`**](/ext/e/logerrors) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pg_stat_log`](/ext/e/pg_stat_log) [`pgelog`](/ext/e/pgelog) [`pg_sqlog`](/ext/e/pg_sqlog) [`log_fdw`](/ext/e/log_fdw) [`pgaudit`](/ext/e/pgaudit) [`pgdisablelogerror`](/ext/e/pgdisablelogerror) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`pgfr_record`](/ext/e/pgfr_record) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `2.1.6` | {{< pgvers "19,18,17,16,15" >}} | `logerrors` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.6` | {{< pgvers "19,18,17,16,15" >}} | `logerrors_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.1.6` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-logerrors` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 2.1.6 3 | AVAIL PGDG 2.1.6 4 | AVAIL PGDG 2.1.6 5 | AVAIL PGDG 2.1.6 9 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 2.1.6 3 | AVAIL PGDG 2.1.6 4 | AVAIL PGDG 2.1.6 5 | AVAIL PGDG 2.1.6 9 |
| el9.x86_64 | AVAIL PGDG 2.1.6 1 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 |
| el9.aarch64 | AVAIL PGDG 2.1.6 1 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 |
| el10.x86_64 | AVAIL PGDG 2.1.6 1 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 | AVAIL PGDG 2.1.6 2 |
| el10.aarch64 | AVAIL PGDG 2.1.6 1 | AVAIL PGDG 2.1.6 6 | AVAIL PGDG 2.1.6 7 | AVAIL PGDG 2.1.6 7 | AVAIL PGDG 2.1.6 7 |
| d12.x86_64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| d12.aarch64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| d13.x86_64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| d13.aarch64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| u22.x86_64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| u22.aarch64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| u24.x86_64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| u24.aarch64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| u26.x86_64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
| u26.aarch64 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 | AVAIL PIGSTY 2.1.6 1 |
@ el9.x86_64 19 logerrors_19 logerrors_19-2.1.6-1PGDG.rhel9.9.x86_64.rpm pgdg 2.1.6 23.6KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/logerrors_19-2.1.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 logerrors_19 logerrors_19-2.1.6-1PGDG.rhel9.9.aarch64.rpm pgdg 2.1.6 23.9KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/logerrors_19-2.1.6-1PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 logerrors_19 logerrors_19-2.1.6-1PGDG.rhel10.3.x86_64.rpm pgdg 2.1.6 23.8KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/logerrors_19-2.1.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 logerrors_19 logerrors_19-2.1.6-1PGDG.rhel10.3.aarch64.rpm pgdg 2.1.6 24.1KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/logerrors_19-2.1.6-1PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb pigsty 2.1.6 30.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb pigsty 2.1.6 30.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~trixie_amd64.deb pigsty 2.1.6 30.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~trixie_arm64.deb pigsty 2.1.6 30.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~jammy_amd64.deb pigsty 2.1.6 33.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~jammy_arm64.deb pigsty 2.1.6 33.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~noble_amd64.deb pigsty 2.1.6 32.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~noble_arm64.deb pigsty 2.1.6 32.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~resolute_amd64.deb pigsty 2.1.6 32.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-logerrors postgresql-19-logerrors_2.1.6-1PGSTY~resolute_arm64.deb pigsty 2.1.6 32.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-19-logerrors_2.1.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 logerrors_18 logerrors_18-2.1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.6 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/logerrors_18-2.1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 logerrors_18 logerrors_18-2.1.5-7PGDG.rhel8.10.x86_64.rpm pgdg 2.1.5 24.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/logerrors_18-2.1.5-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 logerrors_18 logerrors_18-2.1.5-1PGDG.rhel8.x86_64.rpm pgdg 2.1.5 23.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/logerrors_18-2.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 logerrors_18 logerrors_18-2.1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.6 24.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/logerrors_18-2.1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 logerrors_18 logerrors_18-2.1.5-7PGDG.rhel8.10.aarch64.rpm pgdg 2.1.5 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/logerrors_18-2.1.5-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 logerrors_18 logerrors_18-2.1.5-1PGDG.rhel8.aarch64.rpm pgdg 2.1.5 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/logerrors_18-2.1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 logerrors_18 logerrors_18-2.1.6-1PGDG.rhel9.9.x86_64.rpm pgdg 2.1.6 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/logerrors_18-2.1.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 logerrors_18 logerrors_18-2.1.5-7PGDG.rhel9.9.x86_64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/logerrors_18-2.1.5-7PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 logerrors_18 logerrors_18-2.1.6-1PGDG.rhel9.9.aarch64.rpm pgdg 2.1.6 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/logerrors_18-2.1.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 logerrors_18 logerrors_18-2.1.5-7PGDG.rhel9.9.aarch64.rpm pgdg 2.1.5 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/logerrors_18-2.1.5-7PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 logerrors_18 logerrors_18-2.1.6-1PGDG.rhel10.3.x86_64.rpm pgdg 2.1.6 23.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/logerrors_18-2.1.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 logerrors_18 logerrors_18-2.1.5-7PGDG.rhel10.3.x86_64.rpm pgdg 2.1.5 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/logerrors_18-2.1.5-7PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 logerrors_18 logerrors_18-2.1.6-1PGDG.rhel10.3.aarch64.rpm pgdg 2.1.6 24.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/logerrors_18-2.1.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 logerrors_18 logerrors_18-2.1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 24.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/logerrors_18-2.1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 logerrors_18 logerrors_18-2.1.5-7PGDG.rhel10.3.aarch64.rpm pgdg 2.1.5 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/logerrors_18-2.1.5-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 logerrors_18 logerrors_18-2.1.5-7PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/logerrors_18-2.1.5-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 logerrors_18 logerrors_18-2.1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/logerrors_18-2.1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 logerrors_18 logerrors_18-2.1.5-1PGDG.rhel10.aarch64.rpm pgdg 2.1.5 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/logerrors_18-2.1.5-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb pigsty 2.1.6 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb pigsty 2.1.6 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~trixie_amd64.deb pigsty 2.1.6 31.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~trixie_arm64.deb pigsty 2.1.6 30.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~jammy_amd64.deb pigsty 2.1.6 33.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~jammy_arm64.deb pigsty 2.1.6 33.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~noble_amd64.deb pigsty 2.1.6 32.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~noble_arm64.deb pigsty 2.1.6 32.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~resolute_amd64.deb pigsty 2.1.6 32.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-logerrors postgresql-18-logerrors_2.1.6-1PGSTY~resolute_arm64.deb pigsty 2.1.6 32.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-18-logerrors_2.1.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 logerrors_17 logerrors_17-2.1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.6 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/logerrors_17-2.1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 logerrors_17 logerrors_17-2.1.5-7PGDG.rhel8.10.x86_64.rpm pgdg 2.1.5 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/logerrors_17-2.1.5-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 logerrors_17 logerrors_17-2.1.5-1PGDG.rhel8.x86_64.rpm pgdg 2.1.5 23.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/logerrors_17-2.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 logerrors_17 logerrors_17-2.1.3-1PGDG.rhel8.x86_64.rpm pgdg 2.1.3 22.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/logerrors_17-2.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 logerrors_17 logerrors_17-2.1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.6 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/logerrors_17-2.1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 logerrors_17 logerrors_17-2.1.5-7PGDG.rhel8.10.aarch64.rpm pgdg 2.1.5 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/logerrors_17-2.1.5-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 logerrors_17 logerrors_17-2.1.5-1PGDG.rhel8.aarch64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/logerrors_17-2.1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 logerrors_17 logerrors_17-2.1.3-1PGDG.rhel8.aarch64.rpm pgdg 2.1.3 23.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/logerrors_17-2.1.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 logerrors_17 logerrors_17-2.1.6-1PGDG.rhel9.9.x86_64.rpm pgdg 2.1.6 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/logerrors_17-2.1.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 logerrors_17 logerrors_17-2.1.5-7PGDG.rhel9.9.x86_64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/logerrors_17-2.1.5-7PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 logerrors_17 logerrors_17-2.1.6-1PGDG.rhel9.9.aarch64.rpm pgdg 2.1.6 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/logerrors_17-2.1.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 logerrors_17 logerrors_17-2.1.5-7PGDG.rhel9.9.aarch64.rpm pgdg 2.1.5 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/logerrors_17-2.1.5-7PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 logerrors_17 logerrors_17-2.1.6-1PGDG.rhel10.3.x86_64.rpm pgdg 2.1.6 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/logerrors_17-2.1.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 logerrors_17 logerrors_17-2.1.5-7PGDG.rhel10.3.x86_64.rpm pgdg 2.1.5 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/logerrors_17-2.1.5-7PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 logerrors_17 logerrors_17-2.1.6-1PGDG.rhel10.3.aarch64.rpm pgdg 2.1.6 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/logerrors_17-2.1.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 logerrors_17 logerrors_17-2.1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/logerrors_17-2.1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 logerrors_17 logerrors_17-2.1.5-7PGDG.rhel10.3.aarch64.rpm pgdg 2.1.5 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/logerrors_17-2.1.5-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 logerrors_17 logerrors_17-2.1.5-7PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/logerrors_17-2.1.5-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 logerrors_17 logerrors_17-2.1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 23.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/logerrors_17-2.1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 logerrors_17 logerrors_17-2.1.5-1PGDG.rhel10.aarch64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/logerrors_17-2.1.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 logerrors_17 logerrors_17-2.1.3-2PGDG.rhel10.aarch64.rpm pgdg 2.1.3 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/logerrors_17-2.1.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb pigsty 2.1.6 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb pigsty 2.1.6 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~trixie_amd64.deb pigsty 2.1.6 31.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~trixie_arm64.deb pigsty 2.1.6 30.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~jammy_amd64.deb pigsty 2.1.6 38.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~jammy_arm64.deb pigsty 2.1.6 36.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~noble_amd64.deb pigsty 2.1.6 32.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~noble_arm64.deb pigsty 2.1.6 32.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~resolute_amd64.deb pigsty 2.1.6 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-logerrors postgresql-17-logerrors_2.1.6-1PGSTY~resolute_arm64.deb pigsty 2.1.6 32.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-17-logerrors_2.1.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 logerrors_16 logerrors_16-2.1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.6 24.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/logerrors_16-2.1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 logerrors_16 logerrors_16-2.1.5-7PGDG.rhel8.10.x86_64.rpm pgdg 2.1.5 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/logerrors_16-2.1.5-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 logerrors_16 logerrors_16-2.1.5-1PGDG.rhel8.x86_64.rpm pgdg 2.1.5 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/logerrors_16-2.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 logerrors_16 logerrors_16-2.1.3-1PGDG.rhel8.x86_64.rpm pgdg 2.1.3 22.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/logerrors_16-2.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 logerrors_16 logerrors_16-2.1.2-1.rhel8.x86_64.rpm pgdg 2.1.2 22.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/logerrors_16-2.1.2-1.rhel8.x86_64.rpm
@ el8.aarch64 16 logerrors_16 logerrors_16-2.1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.6 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/logerrors_16-2.1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 logerrors_16 logerrors_16-2.1.5-7PGDG.rhel8.10.aarch64.rpm pgdg 2.1.5 24.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/logerrors_16-2.1.5-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 logerrors_16 logerrors_16-2.1.5-1PGDG.rhel8.aarch64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/logerrors_16-2.1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 logerrors_16 logerrors_16-2.1.3-1PGDG.rhel8.aarch64.rpm pgdg 2.1.3 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/logerrors_16-2.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 logerrors_16 logerrors_16-2.1.2-1.rhel8.aarch64.rpm pgdg 2.1.2 22.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/logerrors_16-2.1.2-1.rhel8.aarch64.rpm
@ el9.x86_64 16 logerrors_16 logerrors_16-2.1.6-1PGDG.rhel9.9.x86_64.rpm pgdg 2.1.6 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/logerrors_16-2.1.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 logerrors_16 logerrors_16-2.1.5-7PGDG.rhel9.9.x86_64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/logerrors_16-2.1.5-7PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 logerrors_16 logerrors_16-2.1.6-1PGDG.rhel9.9.aarch64.rpm pgdg 2.1.6 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/logerrors_16-2.1.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 logerrors_16 logerrors_16-2.1.5-7PGDG.rhel9.9.aarch64.rpm pgdg 2.1.5 23.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/logerrors_16-2.1.5-7PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 logerrors_16 logerrors_16-2.1.6-1PGDG.rhel10.3.x86_64.rpm pgdg 2.1.6 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/logerrors_16-2.1.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 logerrors_16 logerrors_16-2.1.5-7PGDG.rhel10.3.x86_64.rpm pgdg 2.1.5 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/logerrors_16-2.1.5-7PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 logerrors_16 logerrors_16-2.1.6-1PGDG.rhel10.3.aarch64.rpm pgdg 2.1.6 24.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/logerrors_16-2.1.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 logerrors_16 logerrors_16-2.1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/logerrors_16-2.1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 logerrors_16 logerrors_16-2.1.5-7PGDG.rhel10.3.aarch64.rpm pgdg 2.1.5 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/logerrors_16-2.1.5-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 logerrors_16 logerrors_16-2.1.5-7PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/logerrors_16-2.1.5-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 logerrors_16 logerrors_16-2.1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/logerrors_16-2.1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 logerrors_16 logerrors_16-2.1.5-1PGDG.rhel10.aarch64.rpm pgdg 2.1.5 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/logerrors_16-2.1.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 logerrors_16 logerrors_16-2.1.3-2PGDG.rhel10.aarch64.rpm pgdg 2.1.3 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/logerrors_16-2.1.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb pigsty 2.1.6 30.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb pigsty 2.1.6 30.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~trixie_amd64.deb pigsty 2.1.6 31.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~trixie_arm64.deb pigsty 2.1.6 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~jammy_amd64.deb pigsty 2.1.6 38.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~jammy_arm64.deb pigsty 2.1.6 36.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~noble_amd64.deb pigsty 2.1.6 32.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~noble_arm64.deb pigsty 2.1.6 32.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~resolute_amd64.deb pigsty 2.1.6 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-logerrors postgresql-16-logerrors_2.1.6-1PGSTY~resolute_arm64.deb pigsty 2.1.6 32.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-16-logerrors_2.1.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 logerrors_15 logerrors_15-2.1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.6 24.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.1.5-7PGDG.rhel8.10.x86_64.rpm pgdg 2.1.5 24.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.1.5-7PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.1.5-1PGDG.rhel8.x86_64.rpm pgdg 2.1.5 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.1.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.1.3-1PGDG.rhel8.x86_64.rpm pgdg 2.1.3 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.1.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.1.2-1.rhel8.x86_64.rpm pgdg 2.1.2 22.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.1.2-1.rhel8.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.1-2.rhel8.x86_64.rpm pgdg 2.1 21.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.1-2.rhel8.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.1-1.rhel8.x86_64.rpm pgdg 2.1 20.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.1-1.rhel8.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.0-2.rhel8.x86_64.rpm pgdg 2.0 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.0-2.rhel8.x86_64.rpm
@ el8.x86_64 15 logerrors_15 logerrors_15-2.0-1.rhel8.x86_64.rpm pgdg 2.0 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/logerrors_15-2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.6 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.1.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.1.5-7PGDG.rhel8.10.aarch64.rpm pgdg 2.1.5 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.1.5-7PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.1.5-1PGDG.rhel8.aarch64.rpm pgdg 2.1.5 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.1.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.1.3-1PGDG.rhel8.aarch64.rpm pgdg 2.1.3 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.1.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.1.2-1.rhel8.aarch64.rpm pgdg 2.1.2 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.1.2-1.rhel8.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.1-2.rhel8.aarch64.rpm pgdg 2.1 21.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.1-2.rhel8.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.1-1.rhel8.aarch64.rpm pgdg 2.1 20.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.1-1.rhel8.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.0-2.rhel8.aarch64.rpm pgdg 2.0 19.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.0-2.rhel8.aarch64.rpm
@ el8.aarch64 15 logerrors_15 logerrors_15-2.0-1.rhel8.aarch64.rpm pgdg 2.0 41.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/logerrors_15-2.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 logerrors_15 logerrors_15-2.1.6-1PGDG.rhel9.9.x86_64.rpm pgdg 2.1.6 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/logerrors_15-2.1.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 15 logerrors_15 logerrors_15-2.1.5-7PGDG.rhel9.9.x86_64.rpm pgdg 2.1.5 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/logerrors_15-2.1.5-7PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 logerrors_15 logerrors_15-2.1.6-1PGDG.rhel9.9.aarch64.rpm pgdg 2.1.6 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/logerrors_15-2.1.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 15 logerrors_15 logerrors_15-2.1.5-7PGDG.rhel9.9.aarch64.rpm pgdg 2.1.5 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/logerrors_15-2.1.5-7PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 logerrors_15 logerrors_15-2.1.6-1PGDG.rhel10.3.x86_64.rpm pgdg 2.1.6 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/logerrors_15-2.1.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 15 logerrors_15 logerrors_15-2.1.5-7PGDG.rhel10.3.x86_64.rpm pgdg 2.1.5 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/logerrors_15-2.1.5-7PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 logerrors_15 logerrors_15-2.1.6-1PGDG.rhel10.3.aarch64.rpm pgdg 2.1.6 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/logerrors_15-2.1.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 logerrors_15 logerrors_15-2.1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.6 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/logerrors_15-2.1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 logerrors_15 logerrors_15-2.1.5-7PGDG.rhel10.3.aarch64.rpm pgdg 2.1.5 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/logerrors_15-2.1.5-7PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 logerrors_15 logerrors_15-2.1.5-7PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/logerrors_15-2.1.5-7PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 logerrors_15 logerrors_15-2.1.5-3PGDG.rhel10.2.aarch64.rpm pgdg 2.1.5 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/logerrors_15-2.1.5-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 logerrors_15 logerrors_15-2.1.5-1PGDG.rhel10.aarch64.rpm pgdg 2.1.5 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/logerrors_15-2.1.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 logerrors_15 logerrors_15-2.1.3-2PGDG.rhel10.aarch64.rpm pgdg 2.1.3 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/logerrors_15-2.1.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb pigsty 2.1.6 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb pigsty 2.1.6 30.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~trixie_amd64.deb pigsty 2.1.6 31.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~trixie_arm64.deb pigsty 2.1.6 30.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~jammy_amd64.deb pigsty 2.1.6 38.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~jammy_arm64.deb pigsty 2.1.6 36.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~noble_amd64.deb pigsty 2.1.6 32.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~noble_arm64.deb pigsty 2.1.6 32.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~resolute_amd64.deb pigsty 2.1.6 32.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-logerrors postgresql-15-logerrors_2.1.6-1PGSTY~resolute_arm64.deb pigsty 2.1.6 32.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/logerrors/postgresql-15-logerrors_2.1.6-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `logerrors` using `pig build`:

```bash
pig build pkg logerrors         # build DEB packages
```


## Install

You can install `logerrors` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install logerrors;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y logerrors -v 19  # PG 19
pig ext install -y logerrors -v 18  # PG 18
pig ext install -y logerrors -v 17  # PG 17
pig ext install -y logerrors -v 16  # PG 16
pig ext install -y logerrors -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y logerrors_19       # PG 19
dnf install -y logerrors_18       # PG 18
dnf install -y logerrors_17       # PG 17
dnf install -y logerrors_16       # PG 16
dnf install -y logerrors_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-logerrors   # PG 19
apt install -y postgresql-18-logerrors   # PG 18
apt install -y postgresql-17-logerrors   # PG 17
apt install -y postgresql-16-logerrors   # PG 16
apt install -y postgresql-15-logerrors   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'logerrors';
```


**Create Extension**:

```sql
CREATE EXTENSION logerrors;
```

## Usage

Sources:

- [Official source](https://github.com/munakoiso/logerrors/blob/v2.1.6/README.md)
- [Official source](https://github.com/munakoiso/logerrors/blob/v2.1.6/logerrors.control)
- [Official source](https://github.com/munakoiso/logerrors/releases/tag/v2.1.6)

`logerrors` collects counts of WARNING, ERROR and FATAL messages through server hooks. Release 2.1.6 fixes PostgreSQL 19 ABI/build compatibility while retaining SQL extension version 2.1.

### Enable and inspect

Add the library to the existing preload list, restart PostgreSQL, then create the SQL extension:

```ini
shared_preload_libraries = 'logerrors'
```

```sql
CREATE EXTENSION logerrors;
SELECT * FROM pg_log_errors_stats();
SELECT * FROM pg_slow_log_stats();
SELECT pg_log_errors_reset();
```

`pg_log_errors_stats()` returns collection intervals, message types, counts, role/database names and SQLSTATE. `pg_slow_log_stats()` reports slow-log counts and reset time; `pg_log_errors_reset()` resets statistics.

### Configuration

`logerrors.interval` controls the collection interval in milliseconds: default 5000, maximum 60000. `logerrors.intervals_count` retains 120 intervals by default, at most 360. `logerrors.excluded_errcodes` accepts comma-separated error codes.

These are bounded in-memory statistics, not a durable audit archive. Restrict access to operational information according to database policy. Replacing the library requires a restart because it is preloaded; SQL extversion 2.1 alone does not identify the 2.1.6 runtime fix.
