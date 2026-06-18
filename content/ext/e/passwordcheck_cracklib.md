---
title: "passwordcheck_cracklib"
linkTitle: "passwordcheck_cracklib"
description: "Strengthen PostgreSQL user password checks with cracklib"
weight: 7000
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/devrimgunduz/passwordcheck_cracklib">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">devrimgunduz/passwordcheck_cracklib</div>
    <div class="ext-card__desc">https://github.com/devrimgunduz/passwordcheck_cracklib</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/passwordcheck_cracklib-3.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">passwordcheck_cracklib-3.1.0.tar.gz</div>
    <div class="ext-card__desc">passwordcheck_cracklib-3.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`passwordcheck_cracklib`**](/ext/e/passwordcheck_cracklib) | `3.1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license lgpl21" href="/ext/license#lgpl21">LGPL-2.1</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7000  | [**`passwordcheck_cracklib`**](/ext/e/passwordcheck_cracklib) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_auth_mon`](/ext/e/pg_auth_mon) [`credcheck`](/ext/e/credcheck) [`pgaudit`](/ext/e/pgaudit) [`login_hook`](/ext/e/login_hook) [`auth_delay`](/ext/e/auth_delay) [`set_user`](/ext/e/set_user) [`sepgsql`](/ext/e/sepgsql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `3.1.0` | {{< pgvers "18,17,16,15,14" >}} | `passwordcheck_cracklib` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `3.1.0` | {{< pgvers "18,17,16,15,14" >}} | `passwordcheck_cracklib_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-passwordcheck-cracklib` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.0.0 1 | AVAIL PGDG 3.0.0 1 | AVAIL PGDG 3.0.0 2 |
| el8.aarch64 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.0.0 1 | AVAIL PGDG 3.0.0 1 | AVAIL PGDG 3.0.0 1 |
| el9.x86_64 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 |
| el9.aarch64 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 |
| el10.x86_64 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 |
| el10.aarch64 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 | AVAIL PGDG 3.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 | AVAIL PIGSTY 3.1.0 1 |
@ el8.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.x86_64.rpm pgdg 3.1.0 12.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.aarch64.rpm pgdg 3.1.0 12.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb pigsty 3.1.0 17.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb pigsty 3.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb pigsty 3.1.0 17.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb pigsty 3.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb pigsty 3.1.0 18.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb pigsty 3.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb pigsty 3.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb pigsty 3.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.x86_64.rpm pgdg 3.1.0 12.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.aarch64.rpm pgdg 3.1.0 12.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb pigsty 3.1.0 17.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb pigsty 3.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb pigsty 3.1.0 17.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb pigsty 3.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb pigsty 3.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb pigsty 3.1.0 18.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb pigsty 3.1.0 18.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb pigsty 3.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.0.0-1.rhel8.1.x86_64.rpm pgdg 3.0.0 11.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/passwordcheck_cracklib_16-3.0.0-1.rhel8.1.x86_64.rpm
@ el8.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.0.0-1.rhel8.1.aarch64.rpm pgdg 3.0.0 11.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/passwordcheck_cracklib_16-3.0.0-1.rhel8.1.aarch64.rpm
@ el9.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb pigsty 3.1.0 17.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb pigsty 3.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb pigsty 3.1.0 17.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb pigsty 3.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb pigsty 3.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb pigsty 3.1.0 18.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb pigsty 3.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb pigsty 3.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.0.0-1.rhel8.x86_64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/passwordcheck_cracklib_15-3.0.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.0.0-1.rhel8.aarch64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/passwordcheck_cracklib_15-3.0.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb pigsty 3.1.0 17.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb pigsty 3.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb pigsty 3.1.0 17.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb pigsty 3.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb pigsty 3.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb pigsty 3.1.0 18.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb pigsty 3.1.0 18.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb pigsty 3.1.0 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.0.0-1.rhel8.x86_64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/passwordcheck_cracklib_14-3.0.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-2.0.0-1.rhel8.x86_64.rpm pgdg 2.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/passwordcheck_cracklib_14-2.0.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.0.0-1.rhel8.aarch64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/passwordcheck_cracklib_14-3.0.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb pigsty 3.1.0 17.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb pigsty 3.1.0 17.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb pigsty 3.1.0 17.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb pigsty 3.1.0 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb pigsty 3.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb pigsty 3.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb pigsty 3.1.0 18.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb pigsty 3.1.0 18.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb pigsty 3.1.0 18.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.1.0-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `passwordcheck_cracklib` using `pig build`:

```bash
pig build pkg passwordcheck_cracklib         # build DEB packages
```


## Install

You can install `passwordcheck_cracklib` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install passwordcheck_cracklib;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y passwordcheck_cracklib -v 18  # PG 18
pig ext install -y passwordcheck_cracklib -v 17  # PG 17
pig ext install -y passwordcheck_cracklib -v 16  # PG 16
pig ext install -y passwordcheck_cracklib -v 15  # PG 15
pig ext install -y passwordcheck_cracklib -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y passwordcheck_cracklib_18       # PG 18
dnf install -y passwordcheck_cracklib_17       # PG 17
dnf install -y passwordcheck_cracklib_16       # PG 16
dnf install -y passwordcheck_cracklib_15       # PG 15
dnf install -y passwordcheck_cracklib_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-passwordcheck-cracklib   # PG 18
apt install -y postgresql-17-passwordcheck-cracklib   # PG 17
apt install -y postgresql-16-passwordcheck-cracklib   # PG 16
apt install -y postgresql-15-passwordcheck-cracklib   # PG 15
apt install -y postgresql-14-passwordcheck-cracklib   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = '$libdir/passwordcheck_cracklib';
```





## Usage

> [passwordcheck_cracklib: Strengthen PostgreSQL user password checks with cracklib](https://github.com/devrimgunduz/passwordcheck_cracklib)

`passwordcheck_cracklib` is like the regular PostgreSQL `passwordcheck` module, except it is built with cracklib for more strict password checks. It checks users' passwords whenever they are set with `CREATE ROLE` or `ALTER ROLE`. If a password is considered too weak, it will be rejected and the command will terminate with an error.

### Configuration

Add the library to `shared_preload_libraries` in `postgresql.conf`:

```ini
shared_preload_libraries = '$libdir/passwordcheck_cracklib'
```

Restart PostgreSQL to activate.

### How It Works

Once loaded, any `CREATE ROLE` or `ALTER ROLE` command that sets a password will have the password checked against cracklib's dictionary. Weak or easily guessable passwords will be rejected automatically.

```sql
-- This will be rejected if the password is too weak
CREATE ROLE myuser WITH LOGIN PASSWORD 'password123';
-- ERROR: password is easily cracked

-- A strong password will be accepted
CREATE ROLE myuser WITH LOGIN PASSWORD 'X9#kLm$vQ2!pR7';
```

No `CREATE EXTENSION` is required -- this is a shared library module only.
