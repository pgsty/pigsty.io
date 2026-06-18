---
title: "pg_utl_smtp"
linkTitle: "pg_utl_smtp"
description: "Oracle UTL_SMTP compatibility extension for PostgreSQL"
weight: 9290
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hexacluster/pg_utl_smtp">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hexacluster/pg_utl_smtp</div>
    <div class="ext-card__desc">https://github.com/hexacluster/pg_utl_smtp</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_utl_smtp-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_utl_smtp-1.0.tar.gz</div>
    <div class="ext-card__desc">pg_utl_smtp-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_utl_smtp`**](/ext/e/pg_utl_smtp) | `1.0.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9290  | [**`pg_utl_smtp`**](/ext/e/pg_utl_smtp) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `utl_smtp` |
{.ext-table}

| **Related** | [`plperlu`](/ext/e/plperlu) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> runtime requires plperlu and Perl Net::SMTP


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_utl_smtp` | `plperlu` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_utl_smtp_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-utl-smtp` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el8.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el9.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el9.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el10.x86_64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| el10.aarch64 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 | AVAIL PGDG 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 |
@ el8.x86_64 18 pg_utl_smtp_18 pg_utl_smtp_18-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_utl_smtp_18-1.0-2PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pg_utl_smtp_18 pg_utl_smtp_18-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_utl_smtp_18-1.0-2PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 18 pg_utl_smtp_18 pg_utl_smtp_18-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_utl_smtp_18-1.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_utl_smtp_18 pg_utl_smtp_18-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_utl_smtp_18-1.0-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 18 pg_utl_smtp_18 pg_utl_smtp_18-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_utl_smtp_18-1.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_utl_smtp_18 pg_utl_smtp_18-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_utl_smtp_18-1.0-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-utl-smtp postgresql-18-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-18-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_utl_smtp_17 pg_utl_smtp_17-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_utl_smtp_17-1.0-2PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pg_utl_smtp_17 pg_utl_smtp_17-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_utl_smtp_17-1.0-2PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 17 pg_utl_smtp_17 pg_utl_smtp_17-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_utl_smtp_17-1.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_utl_smtp_17 pg_utl_smtp_17-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_utl_smtp_17-1.0-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 17 pg_utl_smtp_17 pg_utl_smtp_17-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_utl_smtp_17-1.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_utl_smtp_17 pg_utl_smtp_17-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_utl_smtp_17-1.0-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-utl-smtp postgresql-17-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-17-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_utl_smtp_16 pg_utl_smtp_16-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_utl_smtp_16-1.0-2PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pg_utl_smtp_16 pg_utl_smtp_16-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_utl_smtp_16-1.0-2PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 16 pg_utl_smtp_16 pg_utl_smtp_16-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_utl_smtp_16-1.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_utl_smtp_16 pg_utl_smtp_16-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_utl_smtp_16-1.0-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 16 pg_utl_smtp_16 pg_utl_smtp_16-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_utl_smtp_16-1.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_utl_smtp_16 pg_utl_smtp_16-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_utl_smtp_16-1.0-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-utl-smtp postgresql-16-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-16-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_utl_smtp_15 pg_utl_smtp_15-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_utl_smtp_15-1.0-2PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pg_utl_smtp_15 pg_utl_smtp_15-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_utl_smtp_15-1.0-2PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 15 pg_utl_smtp_15 pg_utl_smtp_15-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_utl_smtp_15-1.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_utl_smtp_15 pg_utl_smtp_15-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_utl_smtp_15-1.0-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 15 pg_utl_smtp_15 pg_utl_smtp_15-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_utl_smtp_15-1.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_utl_smtp_15 pg_utl_smtp_15-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_utl_smtp_15-1.0-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-utl-smtp postgresql-15-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-15-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_utl_smtp_14 pg_utl_smtp_14-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_utl_smtp_14-1.0-2PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pg_utl_smtp_14 pg_utl_smtp_14-1.0-2PGDG.rhel8.10.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_utl_smtp_14-1.0-2PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 14 pg_utl_smtp_14 pg_utl_smtp_14-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_utl_smtp_14-1.0-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_utl_smtp_14 pg_utl_smtp_14-1.0-2PGDG.rhel9.8.noarch.rpm pgdg 1.0 12.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_utl_smtp_14-1.0-2PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 14 pg_utl_smtp_14 pg_utl_smtp_14-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_utl_smtp_14-1.0-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_utl_smtp_14 pg_utl_smtp_14-1.0-2PGDG.rhel10.2.noarch.rpm pgdg 1.0 12.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_utl_smtp_14-1.0-2PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-utl-smtp postgresql-14-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb pigsty 1.0.0 7.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-utl-smtp/postgresql-14-utl-smtp_1.0.0-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_utl_smtp` using `pig build`:

```bash
pig build pkg pg_utl_smtp         # build DEB packages
```


## Install

You can install `pg_utl_smtp` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_utl_smtp;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_utl_smtp -v 18  # PG 18
pig ext install -y pg_utl_smtp -v 17  # PG 17
pig ext install -y pg_utl_smtp -v 16  # PG 16
pig ext install -y pg_utl_smtp -v 15  # PG 15
pig ext install -y pg_utl_smtp -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_utl_smtp_18       # PG 18
dnf install -y pg_utl_smtp_17       # PG 17
dnf install -y pg_utl_smtp_16       # PG 16
dnf install -y pg_utl_smtp_15       # PG 15
dnf install -y pg_utl_smtp_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-utl-smtp   # PG 18
apt install -y postgresql-17-utl-smtp   # PG 17
apt install -y postgresql-16-utl-smtp   # PG 16
apt install -y postgresql-15-utl-smtp   # PG 15
apt install -y postgresql-14-utl-smtp   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_utl_smtp CASCADE;  -- requires: plperlu
```



## Usage

> [pg_utl_smtp: Oracle UTL_SMTP compatibility extension for PostgreSQL](https://github.com/hexacluster/pg_utl_smtp)

### Enabling

```sql
CREATE EXTENSION plperlu;
CREATE EXTENSION pg_utl_smtp;
```

### Sending an Email

```sql
DO $$
DECLARE
    c utl_smtp.connection;
BEGIN
    c := utl_smtp.open_connection('smtp.example.com', 25);
    CALL utl_smtp.ehlo(c, 'mydomain.com');
    CALL utl_smtp.mail(c, 'sender@example.com');
    CALL utl_smtp.rcpt(c, 'recipient@example.com');
    CALL utl_smtp.open_data(c);
    CALL utl_smtp.write_data(c, 'From: sender@example.com' || E'\r\n');
    CALL utl_smtp.write_data(c, 'To: recipient@example.com' || E'\r\n');
    CALL utl_smtp.write_data(c, 'Subject: Test Email' || E'\r\n');
    CALL utl_smtp.write_data(c, E'\r\n');
    CALL utl_smtp.write_data(c, 'Hello from PostgreSQL!');
    CALL utl_smtp.close_data(c);
    CALL utl_smtp.quit(c);
END;
$$;
```

### Procedures

- **OPEN_CONNECTION(host, port, tx_timeout, ...)** - Opens a connection to an SMTP server. Returns a `utl_smtp.connection` type. Supports SSL/TLS via `secure_connection_before_smtp`.
- **EHLO(c, domain)** / **HELO(c, domain)** - Performs initial SMTP handshake.
- **MAIL(c, sender)** - Initiates a mail transaction.
- **RCPT(c, recipient)** - Specifies e-mail recipient. Call multiple times for multiple recipients.
- **OPEN_DATA(c)** - Sends the DATA command to begin message body.
- **WRITE_DATA(c, data)** - Writes a portion of the message body.
- **WRITE_RAW_DATA(c, data)** - Writes raw data to the message body.
- **CLOSE_DATA(c)** - Closes the data session.
- **QUIT(c)** - Terminates the SMTP session and disconnects.

### Connection Type

```sql
-- utl_smtp.connection composite type
(host varchar(255), port integer, tx_timeout integer,
 private_tcp_con integer, private_state integer)
```

### Notes

- Requires the Perl `Net::SMTP` module installed on the system
- Use `E'\r\n'` for line breaks instead of `utl_tcp.crlf`
- The `wallet_path` and `wallet_password` parameters are not used
