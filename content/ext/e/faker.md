---
title: "faker"
linkTitle: "faker"
description: "Wrapper for the Faker Python library"
weight: 3210
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://gitlab.com/dalibo/postgresql_faker">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://gitlab.com/dalibo/postgresql_faker</div>
    <div class="ext-card__desc">https://gitlab.com/dalibo/postgresql_faker</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/postgresql_faker-0.5.3.tar.bz2">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">postgresql_faker-0.5.3.tar.bz2</div>
    <div class="ext-card__desc">postgresql_faker-0.5.3.tar.bz2</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`faker`**](/ext/e/faker) | `0.5.3` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang python" href="/ext/language#python">Python</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3210  | [**`faker`**](/ext/e/faker) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plpython3u`](/ext/e/plpython3u) [`dbt2`](/ext/e/dbt2) [`pg_mockable`](/ext/e/pg_mockable) [`pgtap`](/ext/e/pgtap) [`pgsqlmock`](/ext/e/pgsqlmock) [`omni_test`](/ext/e/omni_test) [`random`](/ext/e/random) [`tsm_system_time`](/ext/e/tsm_system_time) [`tsm_system_rows`](/ext/e/tsm_system_rows) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires PL/Python3 and Python Faker; the PIGSTY DEB carries a PG17+ parser compatibility patch.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.5.3` | {{< pgvers "18,17,16,15,14" >}} | `faker` | `plpython3u` |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.5.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql_faker_$v` | - |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-faker` | `postgresql-plpython3-$v`, `python3-fake-factory` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 2 |
| el8.aarch64 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 | AVAIL PGDG 0.5.3 1 |
| el9.x86_64 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 3 |
| el9.aarch64 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 |
| el10.x86_64 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 |
| el10.aarch64 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 | AVAIL PGDG 0.5.3 2 |
| d12.x86_64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 | AVAIL PIGSTY 0.5.3 1 |
@ el8.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel8.x86_64.rpm pgdg 0.5.3 46.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/postgresql_faker_18-0.5.3-7PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel8.aarch64.rpm pgdg 0.5.3 46.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/postgresql_faker_18-0.5.3-7PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-9PGDG.rhel9.8.x86_64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgresql_faker_18-0.5.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel9.x86_64.rpm pgdg 0.5.3 44.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/postgresql_faker_18-0.5.3-7PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-9PGDG.rhel9.8.aarch64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgresql_faker_18-0.5.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel9.aarch64.rpm pgdg 0.5.3 43.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/postgresql_faker_18-0.5.3-7PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-9PGDG.rhel10.2.x86_64.rpm pgdg 0.5.3 44.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgresql_faker_18-0.5.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/postgresql_faker_18-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-9PGDG.rhel10.2.aarch64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgresql_faker_18-0.5.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 postgresql_faker_18 postgresql_faker_18-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/postgresql_faker_18-0.5.3-7PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~bookworm_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~bookworm_arm64.deb pigsty 0.5.3 42.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~trixie_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~trixie_arm64.deb pigsty 0.5.3 42.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~jammy_amd64.deb pigsty 0.5.3 41.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~jammy_arm64.deb pigsty 0.5.3 41.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~noble_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~noble_arm64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~resolute_amd64.deb pigsty 0.5.3 41.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-faker postgresql-18-faker_0.5.3-1PIGSTY~resolute_arm64.deb pigsty 0.5.3 41.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-18-faker_0.5.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel8.x86_64.rpm pgdg 0.5.3 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/postgresql_faker_17-0.5.3-6PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel8.aarch64.rpm pgdg 0.5.3 46.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/postgresql_faker_17-0.5.3-6PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-9PGDG.rhel9.8.x86_64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgresql_faker_17-0.5.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel9.x86_64.rpm pgdg 0.5.3 44.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/postgresql_faker_17-0.5.3-6PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-9PGDG.rhel9.8.aarch64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgresql_faker_17-0.5.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-6PGDG.rhel9.aarch64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/postgresql_faker_17-0.5.3-6PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-9PGDG.rhel10.2.x86_64.rpm pgdg 0.5.3 44.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgresql_faker_17-0.5.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/postgresql_faker_17-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-9PGDG.rhel10.2.aarch64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgresql_faker_17-0.5.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 postgresql_faker_17 postgresql_faker_17-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/postgresql_faker_17-0.5.3-7PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~bookworm_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~bookworm_arm64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~trixie_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~trixie_arm64.deb pigsty 0.5.3 42.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~jammy_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~jammy_arm64.deb pigsty 0.5.3 41.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~noble_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~noble_arm64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~resolute_amd64.deb pigsty 0.5.3 41.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-faker postgresql-17-faker_0.5.3-1PIGSTY~resolute_arm64.deb pigsty 0.5.3 41.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-17-faker_0.5.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel8.x86_64.rpm pgdg 0.5.3 45.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/postgresql_faker_16-0.5.3-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel8.aarch64.rpm pgdg 0.5.3 45.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/postgresql_faker_16-0.5.3-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-9PGDG.rhel9.8.x86_64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgresql_faker_16-0.5.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel9.x86_64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/postgresql_faker_16-0.5.3-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-9PGDG.rhel9.8.aarch64.rpm pgdg 0.5.3 44.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgresql_faker_16-0.5.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-3PGDG.rhel9.aarch64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/postgresql_faker_16-0.5.3-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-9PGDG.rhel10.2.x86_64.rpm pgdg 0.5.3 44.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgresql_faker_16-0.5.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/postgresql_faker_16-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-9PGDG.rhel10.2.aarch64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgresql_faker_16-0.5.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 postgresql_faker_16 postgresql_faker_16-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/postgresql_faker_16-0.5.3-7PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~bookworm_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~bookworm_arm64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~trixie_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~trixie_arm64.deb pigsty 0.5.3 42.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~jammy_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~jammy_arm64.deb pigsty 0.5.3 41.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~noble_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~noble_arm64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~resolute_amd64.deb pigsty 0.5.3 41.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-faker postgresql-16-faker_0.5.3-1PIGSTY~resolute_arm64.deb pigsty 0.5.3 41.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-16-faker_0.5.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel8.x86_64.rpm pgdg 0.5.3 49.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/postgresql_faker_15-0.5.3-1.rhel8.x86_64.rpm
@ el8.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel8.aarch64.rpm pgdg 0.5.3 49.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/postgresql_faker_15-0.5.3-1.rhel8.aarch64.rpm
@ el9.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-9PGDG.rhel9.8.x86_64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgresql_faker_15-0.5.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel9.x86_64.rpm pgdg 0.5.3 48.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/postgresql_faker_15-0.5.3-1.rhel9.x86_64.rpm
@ el9.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-9PGDG.rhel9.8.aarch64.rpm pgdg 0.5.3 44.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgresql_faker_15-0.5.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-1.rhel9.aarch64.rpm pgdg 0.5.3 48.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/postgresql_faker_15-0.5.3-1.rhel9.aarch64.rpm
@ el10.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-9PGDG.rhel10.2.x86_64.rpm pgdg 0.5.3 44.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgresql_faker_15-0.5.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/postgresql_faker_15-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-9PGDG.rhel10.2.aarch64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgresql_faker_15-0.5.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 postgresql_faker_15 postgresql_faker_15-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/postgresql_faker_15-0.5.3-7PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~bookworm_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~bookworm_arm64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~trixie_amd64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~trixie_arm64.deb pigsty 0.5.3 42.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~jammy_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~jammy_arm64.deb pigsty 0.5.3 41.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~noble_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~noble_arm64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~resolute_amd64.deb pigsty 0.5.3 41.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-faker postgresql-15-faker_0.5.3-1PIGSTY~resolute_arm64.deb pigsty 0.5.3 41.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-15-faker_0.5.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel8.x86_64.rpm pgdg 0.5.3 49.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgresql_faker_14-0.5.3-1.rhel8.x86_64.rpm
@ el8.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.4.0-1.rhel8.noarch.rpm pgdg 0.4.0 37.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/postgresql_faker_14-0.4.0-1.rhel8.noarch.rpm
@ el8.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel8.aarch64.rpm pgdg 0.5.3 49.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/postgresql_faker_14-0.5.3-1.rhel8.aarch64.rpm
@ el9.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-9PGDG.rhel9.8.x86_64.rpm pgdg 0.5.3 44.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql_faker_14-0.5.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel9.x86_64.rpm pgdg 0.5.3 48.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql_faker_14-0.5.3-1.rhel9.x86_64.rpm
@ el9.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel9.noarch.rpm pgdg 0.5.3 47.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/postgresql_faker_14-0.5.3-1.rhel9.noarch.rpm
@ el9.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-9PGDG.rhel9.8.aarch64.rpm pgdg 0.5.3 44.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgresql_faker_14-0.5.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-1.rhel9.aarch64.rpm pgdg 0.5.3 48.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/postgresql_faker_14-0.5.3-1.rhel9.aarch64.rpm
@ el10.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-9PGDG.rhel10.2.x86_64.rpm pgdg 0.5.3 44.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgresql_faker_14-0.5.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-7PGDG.rhel10.x86_64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/postgresql_faker_14-0.5.3-7PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-9PGDG.rhel10.2.aarch64.rpm pgdg 0.5.3 44.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgresql_faker_14-0.5.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 postgresql_faker_14 postgresql_faker_14-0.5.3-7PGDG.rhel10.aarch64.rpm pgdg 0.5.3 44.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/postgresql_faker_14-0.5.3-7PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~bookworm_amd64.deb pigsty 0.5.3 41.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~bookworm_arm64.deb pigsty 0.5.3 41.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~trixie_amd64.deb pigsty 0.5.3 41.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~trixie_arm64.deb pigsty 0.5.3 42.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~jammy_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~jammy_arm64.deb pigsty 0.5.3 41.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~noble_amd64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~noble_arm64.deb pigsty 0.5.3 41.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~resolute_amd64.deb pigsty 0.5.3 41.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-faker postgresql-14-faker_0.5.3-1PIGSTY~resolute_arm64.deb pigsty 0.5.3 41.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/postgresql-faker/postgresql-14-faker_0.5.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `faker` using `pig build`:

```bash
pig build pkg faker         # build DEB packages
```


## Install

You can install `faker` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install faker;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y faker -v 18  # PG 18
pig ext install -y faker -v 17  # PG 17
pig ext install -y faker -v 16  # PG 16
pig ext install -y faker -v 15  # PG 15
pig ext install -y faker -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y postgresql_faker_18       # PG 18
dnf install -y postgresql_faker_17       # PG 17
dnf install -y postgresql_faker_16       # PG 16
dnf install -y postgresql_faker_15       # PG 15
dnf install -y postgresql_faker_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-faker   # PG 18
apt install -y postgresql-17-faker   # PG 17
apt install -y postgresql-16-faker   # PG 16
apt install -y postgresql-15-faker   # PG 15
apt install -y postgresql-14-faker   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION faker CASCADE;  -- requires: plpython3u
```




## Usage

> [faker: Wrapper for the Faker Python library](https://github.com/anpandu/postgresql_faker)

`faker` is a PostgreSQL extension that wraps Python's Faker library, providing functions to generate realistic fake data directly in SQL queries. It requires `plpython3u`.

```sql
CREATE EXTENSION faker;
```

### Generate Fake Data

```sql
SELECT faker.name();           -- 'John Smith'
SELECT faker.first_name();     -- 'Jane'
SELECT faker.last_name();      -- 'Doe'
SELECT faker.email();          -- 'jane.doe@example.com'
SELECT faker.address();        -- '123 Main St, Anytown, US 12345'
SELECT faker.company();        -- 'Smith LLC'
SELECT faker.phone_number();   -- '(555) 123-4567'
SELECT faker.text();           -- random paragraph of text
SELECT faker.city();           -- 'Portland'
SELECT faker.country();        -- 'United States'
```

Note: `faker.date()` and `faker.time()` are **not available** because `date` and `time` are reserved PostgreSQL keywords. Use `faker.date_between()` or `faker.date_this_century()` instead.

### Populate Tables with Fake Data

```sql
INSERT INTO users (name, email, address, created_at)
SELECT
  faker.name(),
  faker.email(),
  faker.address(),
  faker.date_this_century()::timestamp
FROM generate_series(1, 1000);
```

### Localized Fake Data

Locale is set per session, not per function call:

```sql
SELECT faker.faker('de_DE');   -- set locale for this session
SELECT faker.name();           -- returns a German name
SELECT faker.address();        -- returns a German address
```

### Unique Values

Use the `unique_` prefix to guarantee unique values within a session:

```sql
SELECT faker.unique_name();
SELECT faker.unique_email();
```

### Discover All Functions

```sql
SELECT faker._functions();     -- list all 500+ available functions
```

All faker functions return `text`. Cast explicitly for other types.

### Common Faker Providers

| Function | Description |
|----------|-------------|
| `faker.name()` | Full name |
| `faker.first_name()` | First name |
| `faker.last_name()` | Last name |
| `faker.email()` | Email address |
| `faker.company_email()` | Company email |
| `faker.phone_number()` | Phone number |
| `faker.address()` | Full address |
| `faker.city()` | City name |
| `faker.country()` | Country name |
| `faker.company()` | Company name |
| `faker.text()` | Random text |
| `faker.date_this_century()` | Random date |
| `faker.ssn()` | Social security number |
| `faker.ean()` | EAN barcode |
