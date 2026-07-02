---
title: "pgsql_tweaks"
linkTitle: "pgsql_tweaks"
description: "Some functions and views for daily usage"
weight: 4200
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/pgsql_tweaks/pgsql_tweaks">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/pgsql_tweaks/pgsql_tweaks</div>
    <div class="ext-card__desc">https://codeberg.org/pgsql_tweaks/pgsql_tweaks</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsql_tweaks-v1.0.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsql_tweaks-v1.0.3.tar.gz</div>
    <div class="ext-card__desc">pgsql_tweaks-v1.0.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgsql_tweaks`**](/ext/e/pgsql_tweaks) | `1.0.3` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4200  | [**`pgsql_tweaks`**](/ext/e/pgsql_tweaks) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_extra_time`](/ext/e/pg_extra_time) [`extra_window_functions`](/ext/e/extra_window_functions) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pgsql_tweaks` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `pgsql_tweaks_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgsql-tweaks` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.3 3 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 11 | AVAIL PIGSTY 1.0.3 11 | AVAIL PIGSTY 1.0.3 13 |
| el8.aarch64 | AVAIL PIGSTY 1.0.3 3 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 11 | AVAIL PIGSTY 1.0.3 11 | AVAIL PIGSTY 1.0.3 11 |
| el9.x86_64 | AVAIL PIGSTY 1.0.3 6 | AVAIL PIGSTY 1.0.3 12 | AVAIL PIGSTY 1.0.3 14 | AVAIL PIGSTY 1.0.3 14 | AVAIL PIGSTY 1.0.3 15 |
| el9.aarch64 | AVAIL PIGSTY 1.0.3 6 | AVAIL PIGSTY 1.0.3 12 | AVAIL PIGSTY 1.0.3 14 | AVAIL PIGSTY 1.0.3 14 | AVAIL PIGSTY 1.0.3 14 |
| el10.x86_64 | AVAIL PIGSTY 1.0.3 6 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 9 |
| el10.aarch64 | AVAIL PIGSTY 1.0.3 6 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 9 | AVAIL PIGSTY 1.0.3 9 |
| d12.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 | AVAIL PIGSTY 1.0.3 1 |
@ el8.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_tweaks_18-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgsql_tweaks_18-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgsql_tweaks_18-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_tweaks_18-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgsql_tweaks_18-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgsql_tweaks_18-1.0.2-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_tweaks_18-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_tweaks_18-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_tweaks_18-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_tweaks_18-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_tweaks_18-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_tweaks_18-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_tweaks_18-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_tweaks_18-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_tweaks_18-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_tweaks_18-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_tweaks_18-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_tweaks_18-1.0.2-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_tweaks_18-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_tweaks_18-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_tweaks_18-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_tweaks_18-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_tweaks_18-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_tweaks_18-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_tweaks_18-1.0.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_tweaks_18-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_tweaks_18-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_tweaks_18-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_tweaks_18-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgsql_tweaks_18 pgsql_tweaks_18-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_tweaks_18-1.0.2-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgsql-tweaks postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-18-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_tweaks_17-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 27.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_tweaks_17-0.10.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_tweaks_17-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 27.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_tweaks_17-0.10.3-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_tweaks_17-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_tweaks_17-0.10.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_tweaks_17-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 25.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 23.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_tweaks_17-0.10.3-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_tweaks_17-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_tweaks_17-0.11.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_tweaks_17-1.0.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pgsql_tweaks_17 pgsql_tweaks_17-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_tweaks_17-0.11.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgsql-tweaks postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-17-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_tweaks_16-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 27.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-0.10.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm
@ el8.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm pgdg 0.10.1 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_tweaks_16-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 27.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-0.10.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm
@ el8.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm pgdg 0.10.1 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_tweaks_16-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-0.10.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm
@ el9.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm pgdg 0.10.1 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_tweaks_16-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-0.10.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-0.10.2-1PGDG.rhel7.noarch.rpm
@ el9.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm pgdg 0.10.1 22.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_tweaks_16-0.10.1-2.rhel7.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_tweaks_16-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_tweaks_16-0.11.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_tweaks_16-1.0.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pgsql_tweaks_16 pgsql_tweaks_16-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_tweaks_16-0.11.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgsql-tweaks postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-16-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_tweaks_15-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 27.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-0.10.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm
@ el8.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.0-1.rhel7.noarch.rpm pgdg 0.10.0 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_tweaks_15-0.10.0-1.rhel7.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_tweaks_15-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-0.10.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm
@ el8.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.1-1.rhel7.noarch.rpm pgdg 0.10.1 23.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_tweaks_15-0.10.1-1.rhel7.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_tweaks_15-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 26.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-0.10.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm
@ el9.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.0-1.rhel7.noarch.rpm pgdg 0.10.0 22.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_tweaks_15-0.10.0-1.rhel7.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_tweaks_15-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 25.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-0.10.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-0.10.2-1PGDG.rhel7.noarch.rpm
@ el9.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.10.1-1.rhel7.noarch.rpm pgdg 0.10.1 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_tweaks_15-0.10.1-1.rhel7.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_tweaks_15-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_tweaks_15-0.11.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_tweaks_15-1.0.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pgsql_tweaks_15 pgsql_tweaks_15-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_tweaks_15-0.11.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgsql-tweaks postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-15-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PIGSTY.el8.x86_64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_tweaks_14-1.0.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 27.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.10.3-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.0-1.rhel7.noarch.rpm pgdg 0.10.0 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.10.0-1.rhel7.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.9.1-1.rhel7.noarch.rpm pgdg 0.9.1 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.9.1-1.rhel7.noarch.rpm
@ el8.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.8.0-1.rhel7.noarch.rpm pgdg 0.8.0 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_tweaks_14-0.8.0-1.rhel7.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PIGSTY.el8.aarch64.rpm pigsty 1.0.3 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_tweaks_14-1.0.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel8.10.noarch.rpm pgdg 1.0.3 29.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-1.0.3-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel8.noarch.rpm pgdg 1.0.2 29.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-1.0.2-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.0-1PGDG.rhel8.noarch.rpm pgdg 1.0.0 29.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-1.0.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.3-1PGDG.rhel8.noarch.rpm pgdg 0.11.3 27.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-0.11.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.0-1PGDG.rhel8.noarch.rpm pgdg 0.11.0 26.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-0.11.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.7-1PGDG.rhel8.noarch.rpm pgdg 0.10.7 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-0.10.7-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.6-1PGDG.rhel8.noarch.rpm pgdg 0.10.6 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-0.10.6-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.3-1PGDG.rhel8.noarch.rpm pgdg 0.10.3 23.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-0.10.3-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm
@ el8.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.1-1.rhel7.noarch.rpm pgdg 0.10.1 23.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_tweaks_14-0.10.1-1.rhel7.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PIGSTY.el9.x86_64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_tweaks_14-1.0.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.10.3-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.0-1.rhel7.noarch.rpm pgdg 0.10.0 22.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.10.0-1.rhel7.noarch.rpm
@ el9.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.9.1-1.rhel7.noarch.rpm pgdg 0.9.1 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_tweaks_14-0.9.1-1.rhel7.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PIGSTY.el9.aarch64.rpm pigsty 1.0.3 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_tweaks_14-1.0.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-1.0.3-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel9.7.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-1.0.3-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel9.6.noarch.rpm pgdg 1.0.3 27.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-1.0.3-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel9.8.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-1.0.2-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel9.noarch.rpm pgdg 1.0.2 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-1.0.2-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.0-1PGDG.rhel9.noarch.rpm pgdg 1.0.0 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-1.0.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.3-1PGDG.rhel9.noarch.rpm pgdg 0.11.3 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-0.11.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.0-1PGDG.rhel9.noarch.rpm pgdg 0.11.0 25.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-0.11.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.7-1PGDG.rhel9.noarch.rpm pgdg 0.10.7 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-0.10.7-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.6-1PGDG.rhel9.noarch.rpm pgdg 0.10.6 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-0.10.6-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.3-1PGDG.rhel9.noarch.rpm pgdg 0.10.3 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-0.10.3-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm pgdg 0.10.2 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-0.10.2-1PGDG.rhel7.noarch.rpm
@ el9.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.10.1-1.rhel7.noarch.rpm pgdg 0.10.1 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_tweaks_14-0.10.1-1.rhel7.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PIGSTY.el10.x86_64.rpm pigsty 1.0.3 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_tweaks_14-1.0.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_tweaks_14-0.11.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PIGSTY.el10.aarch64.rpm pigsty 1.0.3 28.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_tweaks_14-1.0.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-1.0.3-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel10.1.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-1.0.3-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.3-1PGDG.rhel10.0.noarch.rpm pgdg 1.0.3 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-1.0.3-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel10.2.noarch.rpm pgdg 1.0.2 27.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-1.0.2-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.2-1PGDG.rhel10.noarch.rpm pgdg 1.0.2 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-1.0.2-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-1.0.0-1PGDG.rhel10.noarch.rpm pgdg 1.0.0 28.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-1.0.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.3-1PGDG.rhel10.noarch.rpm pgdg 0.11.3 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-0.11.3-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pgsql_tweaks_14 pgsql_tweaks_14-0.11.0-1PGDG.rhel10.noarch.rpm pgdg 0.11.0 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_tweaks_14-0.11.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb pigsty 1.0.3 20.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgsql-tweaks postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb pigsty 1.0.3 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-tweaks/postgresql-14-pgsql-tweaks_1.0.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgsql_tweaks` using `pig build`:

```bash
pig build pkg pgsql_tweaks         # build RPM / DEB packages
```


## Install

You can install `pgsql_tweaks` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgsql_tweaks;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgsql_tweaks -v 18  # PG 18
pig ext install -y pgsql_tweaks -v 17  # PG 17
pig ext install -y pgsql_tweaks -v 16  # PG 16
pig ext install -y pgsql_tweaks -v 15  # PG 15
pig ext install -y pgsql_tweaks -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgsql_tweaks_18       # PG 18
dnf install -y pgsql_tweaks_17       # PG 17
dnf install -y pgsql_tweaks_16       # PG 16
dnf install -y pgsql_tweaks_15       # PG 15
dnf install -y pgsql_tweaks_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgsql-tweaks   # PG 18
apt install -y postgresql-17-pgsql-tweaks   # PG 17
apt install -y postgresql-16-pgsql-tweaks   # PG 16
apt install -y postgresql-15-pgsql-tweaks   # PG 15
apt install -y postgresql-14-pgsql-tweaks   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgsql_tweaks;
```




## Usage

Sources: [Codeberg README](https://codeberg.org/pgsql_tweaks/pgsql_tweaks), [documentation site](https://rtfm.pgsql-tweaks.org), [Codeberg tags](https://codeberg.org/pgsql_tweaks/pgsql_tweaks/tags).

`pgsql_tweaks` provides DBA-oriented helper functions and views in the `pgsql_tweaks` schema. The upstream test matrix covers PostgreSQL 14 through PostgreSQL 19 beta 1; Pigsty packages it for PostgreSQL 14-18.

### Data Type Check Functions

```sql
SELECT pgsql_tweaks.is_date('2024-01-15');
SELECT pgsql_tweaks.is_time('10:30:00');
SELECT pgsql_tweaks.is_timestamp('2024-01-15 10:30:00');
SELECT pgsql_tweaks.is_real('3.14');
SELECT pgsql_tweaks.is_double_precision('3.14');
SELECT pgsql_tweaks.is_numeric('3.14');
SELECT pgsql_tweaks.is_bigint('9223372036854775807');
SELECT pgsql_tweaks.is_integer('42');
SELECT pgsql_tweaks.is_smallint('42');
SELECT pgsql_tweaks.is_boolean('true');
SELECT pgsql_tweaks.is_json('{"a":1}');
SELECT pgsql_tweaks.is_jsonb('{"a":1}');
SELECT pgsql_tweaks.is_hex('FF');
```

### System Information Functions

```sql
SELECT pgsql_tweaks.pg_schema_size('public');
SELECT * FROM pgsql_tweaks.role_inheritance();
```

### Encoding Functions

```sql
SELECT pgsql_tweaks.is_encoding('UTF8');
SELECT pgsql_tweaks.is_latin1('abc');
SELECT pgsql_tweaks.return_not_part_of_latin1('abc');
SELECT pgsql_tweaks.replace_latin1('abc', '?');
SELECT pgsql_tweaks.return_not_part_of_encoding('abc', 'UTF8');
SELECT pgsql_tweaks.replace_encoding('abc', 'UTF8', '?');
```

### Aggregate Functions

- `gap_fill`, for filling gaps in time series.
- `array_min`, `array_max`, `array_avg`, and `array_sum`.

### Format And Conversion Functions

```sql
SELECT pgsql_tweaks.date_de(current_date);
SELECT pgsql_tweaks.datetime_de(now());
SELECT pgsql_tweaks.to_unix_timestamp(now());
SELECT pgsql_tweaks.hex2bigint('FF');
```

### Utility Functions

```sql
SELECT pgsql_tweaks.is_empty('');
SELECT pgsql_tweaks.array_trim(ARRAY['a', '', 'b']);
SELECT pgsql_tweaks.get_markdown_doku_by_schema('pgsql_tweaks');
```

### System Information Views

- `pg_db_views`, `pg_foreign_keys`, `pg_functions`, `pg_active_locks`.
- `pg_table_matview_infos`, `pg_object_ownership`, `pg_partitioned_tables_infos`.
- `pg_unused_indexes`, `pg_bloat_info`, `pg_table_bloat`, `pg_missing_indexes`.
- `pg_role_permissions`, `pg_role_infos`.

### Statistic And Monitoring Views

- `statistics_top_ten_query_times`, `top_ten_query_average_time_in_seconds`.
- `statistics_top_ten_time_consuming_queries`, `statistics_top_ten_memory_usage_queries`.
- `statistics_top_ten_called_queries`, `statistics_top_ten_rows_returned_queries`.
- `statistics_top_ten_shared_block_hits_queries`, `statistics_top_ten_wal_records_generated_queries`.
- `statistics_query_activity`.
- `monitoring_wal`, `wal_archiving`, `monitoring_active_locks`, `monitoring_replication`.
- `monitoring_database_conflicts`, `monitoring_blocked_and_blocking_activity`.
- `monitoring_follower_wal_status`, `monitoring_vacuum`.

### Caveats

- Some views/functions depend on additional PostgreSQL supplied modules; upstream lists `pg_stat_statements` and `pgstattuple`.
- The Codeberg tag for `v1.0.3` says release files were added; no material user-facing function or view delta was identified from the README and tag metadata.
