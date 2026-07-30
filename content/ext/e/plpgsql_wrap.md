---
title: "plpgsql_wrap"
linkTitle: "plpgsql_wrap"
description: "Oracle WRAP-equivalent PL/pgSQL language handler storing AES-256-GCM encrypted procedure source."
weight: 9210
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hexacluster/plpgsql_wrap/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hexacluster/plpgsql_wrap</div>
    <div class="ext-card__desc">https://github.com/hexacluster/plpgsql_wrap/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/plpgsql_wrap-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plpgsql_wrap-1.0.tar.gz</div>
    <div class="ext-card__desc">plpgsql_wrap-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plpgsql_wrap`**](/ext/e/plpgsql_wrap) | `1.0` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9210  | [**`plpgsql_wrap`**](/ext/e/plpgsql_wrap) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`plpgsql`](/ext/e/plpgsql) [`plisql`](/ext/e/plisql) [`orafce`](/ext/e/orafce) [`plx`](/ext/e/plx) [`db2fce`](/ext/e/db2fce) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGDG RPM and Pigsty DEB package hexacluster/plpgsql_wrap 1.0; control requires plpgsql and superuser=true; links OpenSSL.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `plpgsql_wrap` | `plpgsql` |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `plpgsql_wrap_$v` | `openssl-libs` |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plpgsql-wrap` | `libssl3` |
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
@ el8.x86_64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plpgsql_wrap_18-1.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.0 22.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plpgsql_wrap_18-1.0-2PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel9.8.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plpgsql_wrap_18-1.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel9.7.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plpgsql_wrap_18-1.0-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel9.6.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plpgsql_wrap_18-1.0-2PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel9.8.aarch64.rpm pgdg 1.0 22.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plpgsql_wrap_18-1.0-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel9.7.aarch64.rpm pgdg 1.0 22.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plpgsql_wrap_18-1.0-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel9.6.aarch64.rpm pgdg 1.0 22.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plpgsql_wrap_18-1.0-2PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel10.2.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plpgsql_wrap_18-1.0-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel10.1.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plpgsql_wrap_18-1.0-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel10.0.x86_64.rpm pgdg 1.0 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plpgsql_wrap_18-1.0-2PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plpgsql_wrap_18-1.0-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel10.1.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plpgsql_wrap_18-1.0-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 plpgsql_wrap_18 plpgsql_wrap_18-1.0-2PGDG.rhel10.0.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plpgsql_wrap_18-1.0-2PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 30.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 32.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-plpgsql-wrap postgresql-18-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-18-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plpgsql_wrap_17-1.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.0 22.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plpgsql_wrap_17-1.0-2PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel9.8.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plpgsql_wrap_17-1.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel9.7.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plpgsql_wrap_17-1.0-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel9.6.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plpgsql_wrap_17-1.0-2PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel9.8.aarch64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plpgsql_wrap_17-1.0-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel9.7.aarch64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plpgsql_wrap_17-1.0-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel9.6.aarch64.rpm pgdg 1.0 22.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plpgsql_wrap_17-1.0-2PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel10.2.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plpgsql_wrap_17-1.0-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel10.1.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plpgsql_wrap_17-1.0-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel10.0.x86_64.rpm pgdg 1.0 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plpgsql_wrap_17-1.0-2PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plpgsql_wrap_17-1.0-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel10.1.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plpgsql_wrap_17-1.0-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 plpgsql_wrap_17 plpgsql_wrap_17-1.0-2PGDG.rhel10.0.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plpgsql_wrap_17-1.0-2PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 30.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 36.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 37.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-plpgsql-wrap postgresql-17-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-17-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plpgsql_wrap_16-1.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.0 22.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plpgsql_wrap_16-1.0-2PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel9.8.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plpgsql_wrap_16-1.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel9.7.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plpgsql_wrap_16-1.0-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel9.6.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plpgsql_wrap_16-1.0-2PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel9.8.aarch64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plpgsql_wrap_16-1.0-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel9.7.aarch64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plpgsql_wrap_16-1.0-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel9.6.aarch64.rpm pgdg 1.0 22.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plpgsql_wrap_16-1.0-2PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel10.2.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plpgsql_wrap_16-1.0-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel10.1.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plpgsql_wrap_16-1.0-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel10.0.x86_64.rpm pgdg 1.0 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plpgsql_wrap_16-1.0-2PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plpgsql_wrap_16-1.0-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel10.1.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plpgsql_wrap_16-1.0-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 plpgsql_wrap_16 plpgsql_wrap_16-1.0-2PGDG.rhel10.0.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plpgsql_wrap_16-1.0-2PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 30.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 36.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 36.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-plpgsql-wrap postgresql-16-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-16-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plpgsql_wrap_15-1.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.0 22.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plpgsql_wrap_15-1.0-2PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel9.8.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plpgsql_wrap_15-1.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel9.7.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plpgsql_wrap_15-1.0-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel9.6.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plpgsql_wrap_15-1.0-2PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel9.8.aarch64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plpgsql_wrap_15-1.0-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel9.7.aarch64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plpgsql_wrap_15-1.0-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel9.6.aarch64.rpm pgdg 1.0 22.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plpgsql_wrap_15-1.0-2PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel10.2.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plpgsql_wrap_15-1.0-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel10.1.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plpgsql_wrap_15-1.0-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel10.0.x86_64.rpm pgdg 1.0 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plpgsql_wrap_15-1.0-2PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plpgsql_wrap_15-1.0-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel10.1.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plpgsql_wrap_15-1.0-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 plpgsql_wrap_15 plpgsql_wrap_15-1.0-2PGDG.rhel10.0.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plpgsql_wrap_15-1.0-2PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 31.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 30.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 36.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 36.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-plpgsql-wrap postgresql-15-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-15-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel8.10.x86_64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plpgsql_wrap_14-1.0-2PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel8.10.aarch64.rpm pgdg 1.0 22.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plpgsql_wrap_14-1.0-2PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel9.8.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plpgsql_wrap_14-1.0-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel9.7.x86_64.rpm pgdg 1.0 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plpgsql_wrap_14-1.0-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel9.6.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plpgsql_wrap_14-1.0-2PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel9.8.aarch64.rpm pgdg 1.0 22.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plpgsql_wrap_14-1.0-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel9.7.aarch64.rpm pgdg 1.0 22.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plpgsql_wrap_14-1.0-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel9.6.aarch64.rpm pgdg 1.0 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plpgsql_wrap_14-1.0-2PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel10.2.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plpgsql_wrap_14-1.0-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel10.1.x86_64.rpm pgdg 1.0 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plpgsql_wrap_14-1.0-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel10.0.x86_64.rpm pgdg 1.0 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plpgsql_wrap_14-1.0-2PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel10.2.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plpgsql_wrap_14-1.0-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel10.1.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plpgsql_wrap_14-1.0-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 plpgsql_wrap_14 plpgsql_wrap_14-1.0-2PGDG.rhel10.0.aarch64.rpm pgdg 1.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plpgsql_wrap_14-1.0-2PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 30.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 30.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 30.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 36.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 36.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 32.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 32.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-plpgsql-wrap postgresql-14-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 31.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plpgsql-wrap/postgresql-14-plpgsql-wrap_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `plpgsql_wrap` using `pig build`:

```bash
pig build pkg plpgsql_wrap         # build RPM / DEB packages
```


## Install

You can install `plpgsql_wrap` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install plpgsql_wrap;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y plpgsql_wrap -v 18  # PG 18
pig ext install -y plpgsql_wrap -v 17  # PG 17
pig ext install -y plpgsql_wrap -v 16  # PG 16
pig ext install -y plpgsql_wrap -v 15  # PG 15
pig ext install -y plpgsql_wrap -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y plpgsql_wrap_18       # PG 18
dnf install -y plpgsql_wrap_17       # PG 17
dnf install -y plpgsql_wrap_16       # PG 16
dnf install -y plpgsql_wrap_15       # PG 15
dnf install -y plpgsql_wrap_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-plpgsql-wrap   # PG 18
apt install -y postgresql-17-plpgsql-wrap   # PG 17
apt install -y postgresql-16-plpgsql-wrap   # PG 16
apt install -y postgresql-15-plpgsql-wrap   # PG 15
apt install -y postgresql-14-plpgsql-wrap   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION plpgsql_wrap CASCADE;  -- requires: plpgsql
```




## Usage

Sources: [README](https://github.com/HexaCluster/plpgsql_wrap/blob/v1.0/README.md), [v1.0 release](https://github.com/HexaCluster/plpgsql_wrap/releases/tag/v1.0), [control file](https://github.com/HexaCluster/plpgsql_wrap/blob/v1.0/plpgsql_wrap.control)

`plpgsql_wrap` provides an Oracle WRAP-style procedural language for PostgreSQL. Functions written with `LANGUAGE plpgsql_wrap` are validated as PL/pgSQL and then stored encrypted in `pg_proc.prosrc` as `PLPGSQLWRAP:1:<hex>`.

### Install With A Key

Build the extension with a 32-byte AES-256-GCM key:

```bash
export WRAP_KEY_HEX=$(openssl rand -hex 32)
make WRAP_KEY_HEX=$WRAP_KEY_HEX
sudo make install
```

Back up the key. Wrapped functions can only be unwrapped or restored safely when the correct compiled key is available.

Install the extension in each database that needs the language:

```sql
CREATE EXTENSION plpgsql_wrap; -- requires plpgsql
```

### Create Wrapped Functions

Use normal PL/pgSQL syntax with a different language name:

```sql
CREATE OR REPLACE FUNCTION public.calculate_bonus(emp_id int, yr int)
RETURNS numeric
LANGUAGE plpgsql_wrap
AS $$
DECLARE
  v_salary numeric;
BEGIN
  SELECT salary INTO v_salary FROM employees WHERE id = emp_id;
  RETURN v_salary * 0.15;
END;
$$;
```

The stored body is opaque:

```sql
SELECT substring(prosrc, 1, 32) AS wrapped_code
FROM pg_proc
WHERE proname = 'calculate_bonus';
```

### Dump, Restore, And Unwrap

`pg_dump` emits the encrypted `PLPGSQLWRAP:1:` blob. A restore on a server with the same compiled key works normally. A different key leaves the blob stored, but calls fail when the validator/authentication path cannot authenticate it.

Superusers can permanently unwrap a function when they know the key:

```sql
SELECT plpgsql_wrap.unwrap_procedure(
  'myhexkey',
  'public',
  'calculate_bonus',
  'emp_id int, yr int'
);
```

### Caveats

- Version 1.0 supports PostgreSQL 14-18.
- The control file requires `plpgsql` and superuser installation.
- This protects casual source inspection and dumps, but the compiled key is a critical secret. Treat package artifacts and build logs accordingly.
- Syntax is validated before encryption, so ordinary PL/pgSQL syntax errors abort `CREATE FUNCTION` before encrypted storage is written.
