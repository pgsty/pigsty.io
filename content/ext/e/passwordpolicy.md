---
title: "passwordpolicy"
linkTitle: "passwordpolicy"
description: "Dynamically configurable PostgreSQL password complexity checks."
weight: 7040
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fmbiete/passwordpolicy">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fmbiete/passwordpolicy</div>
    <div class="ext-card__desc">https://github.com/fmbiete/passwordpolicy</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/passwordpolicy-2.0.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">passwordpolicy-2.0.5.tar.gz</div>
    <div class="ext-card__desc">passwordpolicy-2.0.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`passwordpolicy`**](/ext/e/passwordpolicy) | `2.0.5` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7040  | [**`passwordpolicy`**](/ext/e/passwordpolicy) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_pwhash`](/ext/e/pg_pwhash) [`passwordcheck`](/ext/e/passwordcheck) [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) [`credcheck`](/ext/e/credcheck) [`chkpass`](/ext/e/chkpass) [`pg_enigma`](/ext/e/pg_enigma) [`column_encrypt`](/ext/e/column_encrypt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGDG RPM and Pigsty DEB package fmbiete/passwordpolicy 2.0.5; requires shared_preload_libraries and cracklib runtime.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `passwordpolicy` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `passwordpolicy_$v` | `cracklib` |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-passwordpolicy` | `cracklib-runtime`, `libcrack2` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 |
| el8.aarch64 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 | AVAIL PGDG 2.0.5 1 |
| el9.x86_64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| el9.aarch64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| el10.x86_64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| el10.aarch64 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 | AVAIL PGDG 2.0.5 3 |
| d12.x86_64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 | AVAIL PIGSTY 2.0.5 1 |
@ el8.x86_64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 27.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/passwordpolicy_18-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 27.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/passwordpolicy_18-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/passwordpolicy_18-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.5 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/passwordpolicy_18-2.0.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/passwordpolicy_18-2.0.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/passwordpolicy_18-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.5 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/passwordpolicy_18-2.0.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/passwordpolicy_18-2.0.5-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/passwordpolicy_18-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/passwordpolicy_18-2.0.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.5 28.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/passwordpolicy_18-2.0.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/passwordpolicy_18-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/passwordpolicy_18-2.0.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 passwordpolicy_18 passwordpolicy_18-2.0.5-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/passwordpolicy_18-2.0.5-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb pigsty 2.0.5 51.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb pigsty 2.0.5 51.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb pigsty 2.0.5 51.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb pigsty 2.0.5 51.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb pigsty 2.0.5 55.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb pigsty 2.0.5 55.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb pigsty 2.0.5 54.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb pigsty 2.0.5 54.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb pigsty 2.0.5 53.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-passwordpolicy postgresql-18-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb pigsty 2.0.5 53.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-18-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 27.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/passwordpolicy_17-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 27.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/passwordpolicy_17-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/passwordpolicy_17-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/passwordpolicy_17-2.0.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/passwordpolicy_17-2.0.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/passwordpolicy_17-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/passwordpolicy_17-2.0.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/passwordpolicy_17-2.0.5-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/passwordpolicy_17-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/passwordpolicy_17-2.0.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.5 28.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/passwordpolicy_17-2.0.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/passwordpolicy_17-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/passwordpolicy_17-2.0.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 passwordpolicy_17 passwordpolicy_17-2.0.5-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/passwordpolicy_17-2.0.5-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb pigsty 2.0.5 51.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb pigsty 2.0.5 51.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb pigsty 2.0.5 51.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb pigsty 2.0.5 51.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb pigsty 2.0.5 62.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb pigsty 2.0.5 61.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb pigsty 2.0.5 54.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb pigsty 2.0.5 54.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb pigsty 2.0.5 53.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-passwordpolicy postgresql-17-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb pigsty 2.0.5 53.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-17-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 27.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/passwordpolicy_16-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 27.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/passwordpolicy_16-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/passwordpolicy_16-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/passwordpolicy_16-2.0.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/passwordpolicy_16-2.0.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/passwordpolicy_16-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/passwordpolicy_16-2.0.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/passwordpolicy_16-2.0.5-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/passwordpolicy_16-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/passwordpolicy_16-2.0.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.5 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/passwordpolicy_16-2.0.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/passwordpolicy_16-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/passwordpolicy_16-2.0.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 passwordpolicy_16 passwordpolicy_16-2.0.5-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/passwordpolicy_16-2.0.5-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb pigsty 2.0.5 51.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb pigsty 2.0.5 51.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb pigsty 2.0.5 51.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb pigsty 2.0.5 51.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb pigsty 2.0.5 62.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb pigsty 2.0.5 61.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb pigsty 2.0.5 54.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb pigsty 2.0.5 54.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb pigsty 2.0.5 53.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-passwordpolicy postgresql-16-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb pigsty 2.0.5 53.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-16-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/passwordpolicy_15-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 27.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/passwordpolicy_15-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/passwordpolicy_15-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.5 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/passwordpolicy_15-2.0.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.5 28.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/passwordpolicy_15-2.0.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/passwordpolicy_15-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.5 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/passwordpolicy_15-2.0.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.5 28.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/passwordpolicy_15-2.0.5-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 28.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/passwordpolicy_15-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.5 28.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/passwordpolicy_15-2.0.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.5 28.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/passwordpolicy_15-2.0.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 28.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/passwordpolicy_15-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.5 28.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/passwordpolicy_15-2.0.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 passwordpolicy_15 passwordpolicy_15-2.0.5-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.5 28.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/passwordpolicy_15-2.0.5-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb pigsty 2.0.5 52.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb pigsty 2.0.5 51.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb pigsty 2.0.5 52.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb pigsty 2.0.5 51.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb pigsty 2.0.5 62.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb pigsty 2.0.5 62.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb pigsty 2.0.5 54.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb pigsty 2.0.5 54.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb pigsty 2.0.5 54.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-passwordpolicy postgresql-15-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb pigsty 2.0.5 54.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-15-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel8.10.x86_64.rpm pgdg 2.0.5 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/passwordpolicy_14-2.0.5-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel8.10.aarch64.rpm pgdg 2.0.5 27.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/passwordpolicy_14-2.0.5-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel9.8.x86_64.rpm pgdg 2.0.5 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/passwordpolicy_14-2.0.5-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel9.7.x86_64.rpm pgdg 2.0.5 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/passwordpolicy_14-2.0.5-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel9.6.x86_64.rpm pgdg 2.0.5 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/passwordpolicy_14-2.0.5-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel9.8.aarch64.rpm pgdg 2.0.5 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/passwordpolicy_14-2.0.5-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel9.7.aarch64.rpm pgdg 2.0.5 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/passwordpolicy_14-2.0.5-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel9.6.aarch64.rpm pgdg 2.0.5 28.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/passwordpolicy_14-2.0.5-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel10.2.x86_64.rpm pgdg 2.0.5 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/passwordpolicy_14-2.0.5-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel10.1.x86_64.rpm pgdg 2.0.5 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/passwordpolicy_14-2.0.5-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel10.0.x86_64.rpm pgdg 2.0.5 28.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/passwordpolicy_14-2.0.5-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel10.2.aarch64.rpm pgdg 2.0.5 28.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/passwordpolicy_14-2.0.5-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel10.1.aarch64.rpm pgdg 2.0.5 28.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/passwordpolicy_14-2.0.5-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 passwordpolicy_14 passwordpolicy_14-2.0.5-1PGDG.rhel10.0.aarch64.rpm pgdg 2.0.5 28.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/passwordpolicy_14-2.0.5-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb pigsty 2.0.5 52.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb pigsty 2.0.5 51.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb pigsty 2.0.5 52.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb pigsty 2.0.5 51.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb pigsty 2.0.5 62.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb pigsty 2.0.5 62.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb pigsty 2.0.5 54.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb pigsty 2.0.5 54.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb pigsty 2.0.5 54.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-passwordpolicy postgresql-14-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb pigsty 2.0.5 54.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/passwordpolicy/postgresql-14-passwordpolicy_2.0.5-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `passwordpolicy` using `pig build`:

```bash
pig build pkg passwordpolicy         # build RPM / DEB packages
```


## Install

You can install `passwordpolicy` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install passwordpolicy;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y passwordpolicy -v 18  # PG 18
pig ext install -y passwordpolicy -v 17  # PG 17
pig ext install -y passwordpolicy -v 16  # PG 16
pig ext install -y passwordpolicy -v 15  # PG 15
pig ext install -y passwordpolicy -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y passwordpolicy_18       # PG 18
dnf install -y passwordpolicy_17       # PG 17
dnf install -y passwordpolicy_16       # PG 16
dnf install -y passwordpolicy_15       # PG 15
dnf install -y passwordpolicy_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-passwordpolicy   # PG 18
apt install -y postgresql-17-passwordpolicy   # PG 17
apt install -y postgresql-16-passwordpolicy   # PG 16
apt install -y postgresql-15-passwordpolicy   # PG 15
apt install -y postgresql-14-passwordpolicy   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = '$libdir/passwordpolicy';
```


**Create Extension**:

```sql
CREATE EXTENSION passwordpolicy;
```




## Usage

Sources: [README](https://github.com/fmbiete/passwordpolicy/blob/v2.0.5/README.md), [v2.0.5 release](https://github.com/fmbiete/passwordpolicy/releases/tag/v2.0.5), [control file](https://github.com/fmbiete/passwordpolicy/blob/v2.0.5/passwordpolicy.control)

`passwordpolicy` is a configurable replacement for PostgreSQL's `passwordcheck` module. It checks passwords during `CREATE ROLE` and `ALTER ROLE`, can enforce password history and validity rules, and can simulate soft account locks after repeated failed logins.

### Enable The Hook

Load the module before other password-check modules, then restart PostgreSQL:

```conf
shared_preload_libraries = 'passwordpolicy'
```

Install the SQL extension in the `postgres` database when using account soft-lock or password-history features:

```sql
CREATE EXTENSION passwordpolicy;
```

### Password Complexity

Settings are dynamic, but new values apply to new sessions:

```conf
password_policy.min_password_len = 15
password_policy.min_special_chars = 1
password_policy.min_numbers = 1
password_policy.min_uppercase_letter = 1
password_policy.min_lowercase_letter = 1
password_policy.require_validuntil = off
```

Enable CrackLib dictionary checks only after creating the dictionary file:

```conf
password_policy.cracklib_dictpath = '/var/cache/cracklib/postgresql_dict'
password_policy.enable_dictionary_check = on
```

### Soft Account Lock

Soft-locking tracks failed login attempts and delays/rejects responses after the configured threshold:

```conf
password_policy_lock.number_failures = 5
password_policy_lock.failure_delay = 5
password_policy_lock.auto_unlock = on
password_policy_lock.auto_unlock_after = 0
password_policy_lock.max_number_accounts = 100
```

Inspect and reset lock state:

```sql
SELECT * FROM passwordpolicy.accounts_locked() ORDER BY usename;
SELECT passwordpolicy.account_locked_reset('app_user');
```

If `password_policy_lock.include_all = false`, only roles listed in `passwordpolicy.accounts_lockable` are considered for soft-lock.

### Password History

Password history stores recent password hashes in the `postgres` database and checks new passwords against them:

```conf
password_policy_history.max_password_history = 5
password_policy_history.max_number_accounts = 100
```

### Caveats

- Version 2.0.5 supports PostgreSQL 14-18.
- This module must be preloaded; changing `shared_preload_libraries` requires a restart.
- PostgreSQL cannot truly block authentication before it happens, so soft-lock simulates the lock by delaying and returning an error. It does not mitigate authentication DoS attacks.
- Size `password_policy_lock.max_number_accounts` and `password_policy_history.max_number_accounts` realistically to avoid wasted memory or missed accounts.
