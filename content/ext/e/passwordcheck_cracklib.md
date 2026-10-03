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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/passwordcheck_cracklib-3.2.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">passwordcheck_cracklib-3.2.1.tar.gz</div>
    <div class="ext-card__desc">passwordcheck_cracklib-3.2.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`passwordcheck_cracklib`**](/ext/e/passwordcheck_cracklib) | `3.2.1` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license lgpl21" href="/ext/license#lgpl21">LGPL-2.1</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7000  | [**`passwordcheck_cracklib`**](/ext/e/passwordcheck_cracklib) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_pwhash`](/ext/e/pg_pwhash) [`passwordcheck`](/ext/e/passwordcheck) [`credcheck`](/ext/e/credcheck) [`passwordpolicy`](/ext/e/passwordpolicy) [`chkpass`](/ext/e/chkpass) [`pg_enigma`](/ext/e/pg_enigma) [`column_encrypt`](/ext/e/column_encrypt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Preload-only; requires cracklib dictionaries.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.2.1` | {{< pgvers "18,17,16,15,14" >}} | `passwordcheck_cracklib` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.2.1` | {{< pgvers "18,17,16,15,14" >}} | `passwordcheck_cracklib_$v` | `cracklib-dicts` |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.2.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-passwordcheck-cracklib` | `cracklib-runtime`, `libcrack2` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 3 |
| el8.aarch64 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 2 | AVAIL PIGSTY 3.2.1 2 |
| el9.x86_64 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 4 |
| el9.aarch64 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 |
| el10.x86_64 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 |
| el10.aarch64 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 | AVAIL PIGSTY 3.2.1 3 |
| d12.x86_64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| d12.aarch64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| d13.x86_64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| d13.aarch64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| u22.x86_64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| u22.aarch64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| u24.x86_64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| u24.aarch64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| u26.x86_64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
| u26.aarch64 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 | AVAIL PIGSTY 3.2.1 1 |
@ el8.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.2.1-1PGSTY.el8.x86_64.rpm pigsty 3.2.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/passwordcheck_cracklib_18-3.2.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.x86_64.rpm pgdg 3.1.0 12.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.2.1-1PGSTY.el8.aarch64.rpm pigsty 3.2.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/passwordcheck_cracklib_18-3.2.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.aarch64.rpm pgdg 3.1.0 12.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.2.1-1PGSTY.el9.x86_64.rpm pigsty 3.2.1 26.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/passwordcheck_cracklib_18-3.2.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel9.x86_64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.2.1-1PGSTY.el9.aarch64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/passwordcheck_cracklib_18-3.2.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel9.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.2.1-1PGSTY.el10.x86_64.rpm pigsty 3.2.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/passwordcheck_cracklib_18-3.2.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel10.x86_64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.2.1-1PGSTY.el10.aarch64.rpm pigsty 3.2.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/passwordcheck_cracklib_18-3.2.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/passwordcheck_cracklib_18-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 passwordcheck_cracklib_18 passwordcheck_cracklib_18-3.1.0-3PGDG.rhel10.aarch64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/passwordcheck_cracklib_18-3.1.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb pigsty 3.2.1 18.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb pigsty 3.2.1 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb pigsty 3.2.1 18.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb pigsty 3.2.1 18.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb pigsty 3.2.1 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-passwordcheck-cracklib postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb pigsty 3.2.1 18.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-18-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.2.1-1PGSTY.el8.x86_64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/passwordcheck_cracklib_17-3.2.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.x86_64.rpm pgdg 3.1.0 12.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.2.1-1PGSTY.el8.aarch64.rpm pigsty 3.2.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/passwordcheck_cracklib_17-3.2.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.aarch64.rpm pgdg 3.1.0 12.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/passwordcheck_cracklib_17-3.1.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.2.1-1PGSTY.el9.x86_64.rpm pigsty 3.2.1 26.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/passwordcheck_cracklib_17-3.2.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-2PGDG.rhel9.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/passwordcheck_cracklib_17-3.1.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.2.1-1PGSTY.el9.aarch64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/passwordcheck_cracklib_17-3.2.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-2PGDG.rhel9.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/passwordcheck_cracklib_17-3.1.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.2.1-1PGSTY.el10.x86_64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/passwordcheck_cracklib_17-3.2.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-3PGDG.rhel10.x86_64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/passwordcheck_cracklib_17-3.1.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.2.1-1PGSTY.el10.aarch64.rpm pigsty 3.2.1 26.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/passwordcheck_cracklib_17-3.2.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/passwordcheck_cracklib_17-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 passwordcheck_cracklib_17 passwordcheck_cracklib_17-3.1.0-3PGDG.rhel10.aarch64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/passwordcheck_cracklib_17-3.1.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb pigsty 3.2.1 17.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb pigsty 3.2.1 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb pigsty 3.2.1 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-passwordcheck-cracklib postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb pigsty 3.2.1 18.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-17-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.2.1-1PGSTY.el8.x86_64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/passwordcheck_cracklib_16-3.2.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.0.0-1.rhel8.1.x86_64.rpm pgdg 3.0.0 11.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/passwordcheck_cracklib_16-3.0.0-1.rhel8.1.x86_64.rpm
@ el8.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.2.1-1PGSTY.el8.aarch64.rpm pigsty 3.2.1 26.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/passwordcheck_cracklib_16-3.2.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.0.0-1.rhel8.1.aarch64.rpm pgdg 3.0.0 11.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/passwordcheck_cracklib_16-3.0.0-1.rhel8.1.aarch64.rpm
@ el9.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.2.1-1PGSTY.el9.x86_64.rpm pigsty 3.2.1 26.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/passwordcheck_cracklib_16-3.2.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.0.0-1.rhel9.1.x86_64.rpm pgdg 3.0.0 11.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/passwordcheck_cracklib_16-3.0.0-1.rhel9.1.x86_64.rpm
@ el9.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.2.1-1PGSTY.el9.aarch64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/passwordcheck_cracklib_16-3.2.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.0.0-1.rhel9.1.aarch64.rpm pgdg 3.0.0 10.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/passwordcheck_cracklib_16-3.0.0-1.rhel9.1.aarch64.rpm
@ el10.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.2.1-1PGSTY.el10.x86_64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/passwordcheck_cracklib_16-3.2.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-3PGDG.rhel10.x86_64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/passwordcheck_cracklib_16-3.1.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.2.1-1PGSTY.el10.aarch64.rpm pigsty 3.2.1 26.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/passwordcheck_cracklib_16-3.2.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/passwordcheck_cracklib_16-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 passwordcheck_cracklib_16 passwordcheck_cracklib_16-3.1.0-3PGDG.rhel10.aarch64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/passwordcheck_cracklib_16-3.1.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb pigsty 3.2.1 17.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb pigsty 3.2.1 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb pigsty 3.2.1 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-passwordcheck-cracklib postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb pigsty 3.2.1 18.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-16-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.2.1-1PGSTY.el8.x86_64.rpm pigsty 3.2.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/passwordcheck_cracklib_15-3.2.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.0.0-1.rhel8.x86_64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/passwordcheck_cracklib_15-3.0.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.2.1-1PGSTY.el8.aarch64.rpm pigsty 3.2.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/passwordcheck_cracklib_15-3.2.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.0.0-1.rhel8.aarch64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/passwordcheck_cracklib_15-3.0.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.2.1-1PGSTY.el9.x86_64.rpm pigsty 3.2.1 26.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/passwordcheck_cracklib_15-3.2.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.0.0-1.rhel9.x86_64.rpm pgdg 3.0.0 11.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/passwordcheck_cracklib_15-3.0.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.2.1-1PGSTY.el9.aarch64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/passwordcheck_cracklib_15-3.2.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.0.0-1.rhel9.aarch64.rpm pgdg 3.0.0 10.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/passwordcheck_cracklib_15-3.0.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.2.1-1PGSTY.el10.x86_64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/passwordcheck_cracklib_15-3.2.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-3PGDG.rhel10.x86_64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/passwordcheck_cracklib_15-3.1.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.2.1-1PGSTY.el10.aarch64.rpm pigsty 3.2.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/passwordcheck_cracklib_15-3.2.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/passwordcheck_cracklib_15-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 passwordcheck_cracklib_15 passwordcheck_cracklib_15-3.1.0-3PGDG.rhel10.aarch64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/passwordcheck_cracklib_15-3.1.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb pigsty 3.2.1 17.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb pigsty 3.2.1 18.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb pigsty 3.2.1 18.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-passwordcheck-cracklib postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb pigsty 3.2.1 18.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-15-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.2.1-1PGSTY.el8.x86_64.rpm pigsty 3.2.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/passwordcheck_cracklib_14-3.2.1-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.0.0-1.rhel8.x86_64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/passwordcheck_cracklib_14-3.0.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-2.0.0-1.rhel8.x86_64.rpm pgdg 2.0.0 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/passwordcheck_cracklib_14-2.0.0-1.rhel8.x86_64.rpm
@ el8.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.2.1-1PGSTY.el8.aarch64.rpm pigsty 3.2.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/passwordcheck_cracklib_14-3.2.1-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.0.0-1.rhel8.aarch64.rpm pgdg 3.0.0 11.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/passwordcheck_cracklib_14-3.0.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.2.1-1PGSTY.el9.x86_64.rpm pigsty 3.2.1 26.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/passwordcheck_cracklib_14-3.2.1-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.x86_64.rpm pgdg 3.1.0 11.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.0.0-1.rhel9.x86_64.rpm pgdg 3.0.0 11.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/passwordcheck_cracklib_14-3.0.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-2.0.0-1.rhel9.x86_64.rpm pgdg 2.0.0 16.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/passwordcheck_cracklib_14-2.0.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.2.1-1PGSTY.el9.aarch64.rpm pigsty 3.2.1 26.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/passwordcheck_cracklib_14-3.2.1-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.aarch64.rpm pgdg 3.1.0 11.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.0.0-1.rhel9.aarch64.rpm pgdg 3.0.0 10.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/passwordcheck_cracklib_14-3.0.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.2.1-1PGSTY.el10.x86_64.rpm pigsty 3.2.1 26.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/passwordcheck_cracklib_14-3.2.1-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.x86_64.rpm pgdg 3.1.0 11.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-3PGDG.rhel10.x86_64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/passwordcheck_cracklib_14-3.1.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.2.1-1PGSTY.el10.aarch64.rpm pigsty 3.2.1 27.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/passwordcheck_cracklib_14-3.2.1-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.aarch64.rpm pgdg 3.1.0 11.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/passwordcheck_cracklib_14-3.1.0-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 passwordcheck_cracklib_14 passwordcheck_cracklib_14-3.1.0-3PGDG.rhel10.aarch64.rpm pgdg 3.1.0 12.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/passwordcheck_cracklib_14-3.1.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb pigsty 3.2.1 18.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb pigsty 3.2.1 17.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb pigsty 3.2.1 18.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb pigsty 3.2.1 18.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb pigsty 3.2.1 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb pigsty 3.2.1 18.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb pigsty 3.2.1 18.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-passwordcheck-cracklib postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb pigsty 3.2.1 18.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordcheck-cracklib/postgresql-14-passwordcheck-cracklib_3.2.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `passwordcheck_cracklib` using `pig build`:

```bash
pig build pkg passwordcheck_cracklib         # build RPM / DEB packages
```


## Install

You can install `passwordcheck_cracklib` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install passwordcheck_cracklib;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y passwordcheck_cracklib -v 18  # PG 18
pig ext install -y passwordcheck_cracklib -v 17  # PG 17
pig ext install -y passwordcheck_cracklib -v 16  # PG 16
pig ext install -y passwordcheck_cracklib -v 15  # PG 15
pig ext install -y passwordcheck_cracklib -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y passwordcheck_cracklib_18       # PG 18
dnf install -y passwordcheck_cracklib_17       # PG 17
dnf install -y passwordcheck_cracklib_16       # PG 16
dnf install -y passwordcheck_cracklib_15       # PG 15
dnf install -y passwordcheck_cracklib_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-passwordcheck-cracklib   # PG 18
apt install -y postgresql-17-passwordcheck-cracklib   # PG 17
apt install -y postgresql-16-passwordcheck-cracklib   # PG 16
apt install -y postgresql-15-passwordcheck-cracklib   # PG 15
apt install -y postgresql-14-passwordcheck-cracklib   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = '$libdir/passwordcheck_cracklib';
```


## Usage

Sources:

- [3.2.1 README](https://github.com/devrimgunduz/passwordcheck_cracklib/blob/3.2.1/README.md)
- [3.2.1 password hook](https://github.com/devrimgunduz/passwordcheck_cracklib/blob/3.2.1/passwordcheck_cracklib.c)
- [PostgreSQL passwordcheck manual](https://www.postgresql.org/docs/18/passwordcheck.html)

`passwordcheck_cracklib` checks passwords supplied through `CREATE ROLE` and `ALTER ROLE` with CrackLib. It is a server hook library, with no SQL extension objects.

### Enable the Hook

Add it to the existing preload list and restart PostgreSQL:

```ini
shared_preload_libraries = '$libdir/passwordcheck_cracklib'
```

Do not run `CREATE EXTENSION passwordcheck_cracklib`. CrackLib's library and dictionary must be available to the PostgreSQL operating-system account.

### Password Checks

```sql
CREATE ROLE app_user LOGIN PASSWORD 'password123';
```

Weak plaintext passwords cause an error. The hook checks length, the relationship to the username, character composition, and the CrackLib dictionary. A password passing those checks is not a guarantee of resistance to every attack.

### Security Boundary

Dictionary checks require the plaintext password at password-change time. When a client supplies an already hashed password, the module cannot perform full strength checks; its remaining check is whether the password equals the username. Enforce the intended password-change path and protect the connection carrying plaintext passwords.

Existing passwords are not scanned retroactively. The hook also chains to a previously installed password-check hook; review other credential-policy libraries before loading them together.
