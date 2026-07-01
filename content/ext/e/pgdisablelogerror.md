---
title: "pgdisablelogerror"
linkTitle: "pgdisablelogerror"
description: "Disable selected SQLSTATE error codes from PostgreSQL server logging."
weight: 5260
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fmbiete/pgdisablelogerror">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fmbiete/pgdisablelogerror</div>
    <div class="ext-card__desc">https://github.com/fmbiete/pgdisablelogerror</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgdisablelogerror-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgdisablelogerror-1.0.tar.gz</div>
    <div class="ext-card__desc">pgdisablelogerror-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgdisablelogerror`**](/ext/e/pgdisablelogerror) | `1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd" href="/ext/license#bsd">BSD</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5260  | [**`pgdisablelogerror`**](/ext/e/pgdisablelogerror) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`logerrors`](/ext/e/logerrors) [`pgauditlogtofile`](/ext/e/pgauditlogtofile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGDG RPM and Pigsty DEB package fmbiete/pgdisablelogerror 1.0; control is relocatable=true and requires shared_preload_libraries.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgdisablelogerror` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgdisablelogerror_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgdisablelogerror` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el8.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el9.x86_64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| el9.aarch64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| el10.x86_64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| el10.aarch64 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 | AVAIL PGDG 1.0 3 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgdisablelogerror_18-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgdisablelogerror_18-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgdisablelogerror_18-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgdisablelogerror_18-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgdisablelogerror_18-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 12.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgdisablelogerror_18-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 12.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgdisablelogerror_18-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgdisablelogerror_18-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgdisablelogerror_18-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgdisablelogerror_18-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 13.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgdisablelogerror_18-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgdisablelogerror_18-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgdisablelogerror_18-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgdisablelogerror_18 pgdisablelogerror_18-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgdisablelogerror_18-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 12.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgdisablelogerror postgresql-18-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 12.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-18-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgdisablelogerror_17-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgdisablelogerror_17-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgdisablelogerror_17-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgdisablelogerror_17-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgdisablelogerror_17-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgdisablelogerror_17-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgdisablelogerror_17-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgdisablelogerror_17-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgdisablelogerror_17-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgdisablelogerror_17-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 13.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgdisablelogerror_17-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgdisablelogerror_17-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgdisablelogerror_17-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgdisablelogerror_17 pgdisablelogerror_17-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgdisablelogerror_17-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 12.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgdisablelogerror postgresql-17-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-17-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgdisablelogerror_16-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgdisablelogerror_16-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgdisablelogerror_16-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgdisablelogerror_16-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgdisablelogerror_16-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgdisablelogerror_16-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgdisablelogerror_16-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgdisablelogerror_16-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgdisablelogerror_16-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgdisablelogerror_16-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 13.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgdisablelogerror_16-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgdisablelogerror_16-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgdisablelogerror_16-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgdisablelogerror_16 pgdisablelogerror_16-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgdisablelogerror_16-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 12.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgdisablelogerror postgresql-16-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-16-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgdisablelogerror_15-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgdisablelogerror_15-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgdisablelogerror_15-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgdisablelogerror_15-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgdisablelogerror_15-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgdisablelogerror_15-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgdisablelogerror_15-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgdisablelogerror_15-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgdisablelogerror_15-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgdisablelogerror_15-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 13.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgdisablelogerror_15-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgdisablelogerror_15-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgdisablelogerror_15-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgdisablelogerror_15 pgdisablelogerror_15-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgdisablelogerror_15-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 12.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 12.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgdisablelogerror postgresql-15-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-15-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgdisablelogerror_14-1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgdisablelogerror_14-1.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgdisablelogerror_14-1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgdisablelogerror_14-1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgdisablelogerror_14-1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgdisablelogerror_14-1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.0 12.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgdisablelogerror_14-1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.0 13.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgdisablelogerror_14-1.0-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgdisablelogerror_14-1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.0 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgdisablelogerror_14-1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.0 13.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgdisablelogerror_14-1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgdisablelogerror_14-1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgdisablelogerror_14-1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgdisablelogerror_14 pgdisablelogerror_14-1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.0 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgdisablelogerror_14-1.0-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 12.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgdisablelogerror postgresql-14-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 12.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgdisablelogerror/postgresql-14-pgdisablelogerror_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgdisablelogerror` using `pig build`:

```bash
pig build pkg pgdisablelogerror         # build RPM / DEB packages
```


## Install

You can install `pgdisablelogerror` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgdisablelogerror;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgdisablelogerror -v 18  # PG 18
pig ext install -y pgdisablelogerror -v 17  # PG 17
pig ext install -y pgdisablelogerror -v 16  # PG 16
pig ext install -y pgdisablelogerror -v 15  # PG 15
pig ext install -y pgdisablelogerror -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgdisablelogerror_18       # PG 18
dnf install -y pgdisablelogerror_17       # PG 17
dnf install -y pgdisablelogerror_16       # PG 16
dnf install -y pgdisablelogerror_15       # PG 15
dnf install -y pgdisablelogerror_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgdisablelogerror   # PG 18
apt install -y postgresql-17-pgdisablelogerror   # PG 17
apt install -y postgresql-16-pgdisablelogerror   # PG 16
apt install -y postgresql-15-pgdisablelogerror   # PG 15
apt install -y postgresql-14-pgdisablelogerror   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = '$libdir/pgdisablelogerror';
```


**Create Extension**:

```sql
CREATE EXTENSION pgdisablelogerror;
```

## Usage

Sources: [README](https://github.com/fmbiete/pgdisablelogerror/blob/v1.0/README.md), [v1.0 release](https://github.com/fmbiete/pgdisablelogerror/releases/tag/v1.0), [control file](https://github.com/fmbiete/pgdisablelogerror/blob/v1.0/pgdisablelogerror.control)

`pgdisablelogerror` suppresses PostgreSQL server log entries for configured SQLSTATE error codes. It is useful when expected application errors, such as duplicate-key violations, are too noisy in the server log.

### Enable The Hook

Load the module and restart PostgreSQL:

```conf
shared_preload_libraries = 'pgdisablelogerror'
```

Create the extension once in the `postgres` database:

```sql
CREATE EXTENSION pgdisablelogerror;
```

### Configure SQLSTATE Codes

Set `pgdisablelogerror.sqlerrcode` to a comma-separated list of SQLSTATE codes:

```conf
pgdisablelogerror.sqlerrcode = '23505,23503'
```

An empty or NULL value disables suppression:

```conf
pgdisablelogerror.sqlerrcode = ''
```

To identify SQLSTATE values in normal PostgreSQL logs, add `%e` to `log_line_prefix`.

### Caveats

- Version 1.0 supports PostgreSQL 14-18.
- This extension affects logging, not error behavior. Clients still receive the original error.
- Use narrow SQLSTATE lists. Suppressing broad error classes can hide real operational problems.
