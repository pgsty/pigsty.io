---
title: "biscuit"
linkTitle: "biscuit"
description: "IAM-LIKE pattern matching with bitmap indexing"
weight: 2170
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrystallineCore/Biscuit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrystallineCore/Biscuit</div>
    <div class="ext-card__desc">https://github.com/CrystallineCore/Biscuit</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/Biscuit-2.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">Biscuit-2.4.1.tar.gz</div>
    <div class="ext-card__desc">Biscuit-2.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_biscuit`**](/ext/e/biscuit) | `2.4.1` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2170  | [**`biscuit`**](/ext/e/biscuit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_textsearch`](/ext/e/pg_textsearch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> rename from pg_biscuit to biscuit to keep up with PGDG RPM name


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.1` | {{< pgvers "18,17,16" >}} | `pg_biscuit` | `plpgsql` |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.1` | {{< pgvers "18,17,16" >}} | `biscuit_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.1` | {{< pgvers "18,17,16" >}} | `postgresql-$v-biscuit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.4.1 3 | AVAIL PIGSTY 2.4.1 3 | AVAIL PIGSTY 2.4.1 3 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.4.1 3 | AVAIL PIGSTY 2.4.1 3 | AVAIL PIGSTY 2.4.1 3 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | AVAIL PIGSTY 2.4.1 5 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | AVAIL PIGSTY 2.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 biscuit_18 biscuit_18-2.4.1-1PIGSTY.el8.x86_64.rpm pigsty 2.4.1 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/biscuit_18-2.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.4.0 62.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/biscuit_18-2.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.2.2 63.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/biscuit_18-2.2.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 biscuit_18 biscuit_18-2.4.1-1PIGSTY.el8.aarch64.rpm pigsty 2.4.1 62.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/biscuit_18-2.4.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.4.0 59.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/biscuit_18-2.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.2.2 59.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/biscuit_18-2.2.2-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.4.1-1PIGSTY.el9.x86_64.rpm pigsty 2.4.1 64.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/biscuit_18-2.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.4.0 62.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2.2 65.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.2.2 65.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.2.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.2.2 65.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.2.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.4.1-1PIGSTY.el9.aarch64.rpm pigsty 2.4.1 63.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/biscuit_18-2.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.4.0 61.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.2.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.2.2 62.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.2.2-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.4.1-1PIGSTY.el10.x86_64.rpm pigsty 2.4.1 65.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/biscuit_18-2.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.4.0 64.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2.2 67.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.2.2 67.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.2.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.2.2 68.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.2.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.4.1-1PIGSTY.el10.aarch64.rpm pigsty 2.4.1 64.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/biscuit_18-2.4.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.4.0 63.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2.2 64.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.2.2 64.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.2.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.2.2 64.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.2.2-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~bookworm_amd64.deb pigsty 2.4.0 143.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~bookworm_arm64.deb pigsty 2.4.0 138.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~trixie_amd64.deb pigsty 2.4.0 143.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~trixie_arm64.deb pigsty 2.4.0 139.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~jammy_amd64.deb pigsty 2.4.0 146.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~jammy_arm64.deb pigsty 2.4.0 143.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~noble_amd64.deb pigsty 2.4.0 141.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~noble_arm64.deb pigsty 2.4.0 140.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~resolute_amd64.deb pigsty 2.4.0 141.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.0-1PIGSTY~resolute_arm64.deb pigsty 2.4.0 138.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 biscuit_17 biscuit_17-2.4.1-1PIGSTY.el8.x86_64.rpm pigsty 2.4.1 65.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/biscuit_17-2.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.4.0 62.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/biscuit_17-2.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.2.2 63.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/biscuit_17-2.2.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 biscuit_17 biscuit_17-2.4.1-1PIGSTY.el8.aarch64.rpm pigsty 2.4.1 62.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/biscuit_17-2.4.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.4.0 59.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/biscuit_17-2.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.2.2 59.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/biscuit_17-2.2.2-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.4.1-1PIGSTY.el9.x86_64.rpm pigsty 2.4.1 64.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/biscuit_17-2.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.4.0 62.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.2.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.2.2 65.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.2.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.4.1-1PIGSTY.el9.aarch64.rpm pigsty 2.4.1 62.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/biscuit_17-2.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.4.0 61.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.2.2 62.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.2.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.2.2 62.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.2.2-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.4.1-1PIGSTY.el10.x86_64.rpm pigsty 2.4.1 65.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/biscuit_17-2.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.4.0 64.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.2.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.2.2 68.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.2.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.4.1-1PIGSTY.el10.aarch64.rpm pigsty 2.4.1 64.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/biscuit_17-2.4.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.4.0 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.2.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.2.2-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~bookworm_amd64.deb pigsty 2.4.0 143.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~bookworm_arm64.deb pigsty 2.4.0 138.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~trixie_amd64.deb pigsty 2.4.0 143.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~trixie_arm64.deb pigsty 2.4.0 139.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~jammy_amd64.deb pigsty 2.4.0 169.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~jammy_arm64.deb pigsty 2.4.0 166.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~noble_amd64.deb pigsty 2.4.0 141.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~noble_arm64.deb pigsty 2.4.0 139.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~resolute_amd64.deb pigsty 2.4.0 141.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.0-1PIGSTY~resolute_arm64.deb pigsty 2.4.0 138.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 biscuit_16 biscuit_16-2.4.1-1PIGSTY.el8.x86_64.rpm pigsty 2.4.1 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/biscuit_16-2.4.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.4.0 62.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/biscuit_16-2.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.2.2 63.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/biscuit_16-2.2.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 biscuit_16 biscuit_16-2.4.1-1PIGSTY.el8.aarch64.rpm pigsty 2.4.1 62.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/biscuit_16-2.4.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.4.0 59.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/biscuit_16-2.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.2.2 59.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/biscuit_16-2.2.2-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.4.1-1PIGSTY.el9.x86_64.rpm pigsty 2.4.1 64.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/biscuit_16-2.4.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.4.0 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.2.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.2.2 65.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.2.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.4.1-1PIGSTY.el9.aarch64.rpm pigsty 2.4.1 62.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/biscuit_16-2.4.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.4.0 61.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.2.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.2.2 62.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.2.2-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.4.1-1PIGSTY.el10.x86_64.rpm pigsty 2.4.1 65.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/biscuit_16-2.4.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.4.0 64.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.2.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.2.2 68.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.2.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.4.1-1PIGSTY.el10.aarch64.rpm pigsty 2.4.1 64.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/biscuit_16-2.4.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.4.0 63.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.2.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.2.2-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~bookworm_amd64.deb pigsty 2.4.0 143.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~bookworm_arm64.deb pigsty 2.4.0 138.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~trixie_amd64.deb pigsty 2.4.0 143.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~trixie_arm64.deb pigsty 2.4.0 139.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~jammy_amd64.deb pigsty 2.4.0 169.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~jammy_arm64.deb pigsty 2.4.0 166.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~noble_amd64.deb pigsty 2.4.0 141.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~noble_arm64.deb pigsty 2.4.0 139.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~resolute_amd64.deb pigsty 2.4.0 141.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.0-1PIGSTY~resolute_arm64.deb pigsty 2.4.0 138.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_biscuit` using `pig build`:

```bash
pig build pkg pg_biscuit         # build RPM / DEB packages
```


## Install

You can install `pg_biscuit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_biscuit;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_biscuit -v 18  # PG 18
pig ext install -y pg_biscuit -v 17  # PG 17
pig ext install -y pg_biscuit -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y biscuit_18       # PG 18
dnf install -y biscuit_17       # PG 17
dnf install -y biscuit_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-biscuit   # PG 18
apt install -y postgresql-17-biscuit   # PG 17
apt install -y postgresql-16-biscuit   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION biscuit CASCADE;  -- requires: plpgsql
```




## Usage

Sources:

- [PGXN biscuit 2.4.1](https://pgxn.org/dist/biscuit/2.4.1/)
- [Biscuit README](https://github.com/CrystallineCore/Biscuit)
- [Biscuit CHANGELOG](https://github.com/CrystallineCore/Biscuit/blob/main/CHANGELOG.md)
- [Biscuit documentation](https://biscuit.readthedocs.io/)

`biscuit` is a PostgreSQL index access method for accelerating `LIKE`, `NOT LIKE`, `ILIKE`, and `NOT ILIKE` pattern matching on text. It uses bitmap-style position indexes to avoid the heap recheck overhead common in trigram searches and supports multi-column indexes for wildcard-heavy workloads.

PGXN package 2.4.1 ships the SQL/control version `2.4.0`; the extension's visible `default_version` is therefore still `2.4.0`. The local Pigsty extension name is `biscuit`, while older package metadata may mention `pg_biscuit`.

> [!WARNING]
> Upstream marks Biscuit as actively developed and recommends thorough staging validation before production use. Test representative datasets, query patterns, upgrades, backup/restore, and performance behavior before relying on it for critical workloads.

### Quick Start

```sql
CREATE EXTENSION IF NOT EXISTS biscuit;

CREATE TABLE users (
  id bigserial PRIMARY KEY,
  name text,
  email text,
  bio text
);

CREATE INDEX users_name_biscuit
ON users USING biscuit (name);

SELECT *
FROM users
WHERE name LIKE '%john%';
```

`biscuit` supports ordinary wildcard patterns with `%` and `_`:

```sql
SELECT * FROM users WHERE name LIKE 'john%';
SELECT * FROM users WHERE name LIKE '%smith';
SELECT * FROM users WHERE name LIKE '%oh_';
SELECT * FROM users WHERE name ILIKE '%john%';
SELECT * FROM users WHERE name NOT LIKE '%test%';
```

### Multi-Column Indexes

```sql
CREATE INDEX users_search_biscuit
ON users USING biscuit (name, email, bio);

SELECT *
FROM users
WHERE name ILIKE '%john%'
  AND email LIKE '%example.com'
  AND bio NOT LIKE '%inactive%';
```

Biscuit can combine bitmap matches from multiple indexed columns and may reorder predicates by estimated selectivity.

### Expression Indexes

Version 2.4.0 adds expression-index support:

```sql
CREATE INDEX users_lower_name_biscuit
ON users USING biscuit (lower(name));

SELECT *
FROM users
WHERE lower(name) LIKE '%john%';
```

For `char(n)` / `bpchar` columns, upstream recommends expression indexes that cast to `text`, because native `bpchar` operator classes are not yet available:

```sql
CREATE INDEX legacy_code_biscuit
ON legacy_table USING biscuit ((code::text));
```

### Introspection

```sql
SELECT *
FROM biscuit_operators;

SELECT *
FROM biscuit_version_history;
```

The `biscuit_operators` view lists the operators registered for the Biscuit access method. In 2.4.0, the view was fixed to remain correct if additional operator classes or families are added.

### Operational Notes

Biscuit's design is optimized for:

- prefix, suffix, substring, and mixed wildcard `LIKE` / `ILIKE` patterns
- multi-column predicates where bitmap intersections can reduce candidate sets
- exact pattern matching without trigram false-positive rechecks
- workloads where text-pattern search dominates query latency

It is not a general full-text search engine and does not replace ranking, stemming, tokenization, or phrase search. Use PostgreSQL full text search, trigram indexes, or dedicated search extensions when those semantics are required.

### Caveats

- Upstream requires PostgreSQL 16 or newer and standard build tools. Pigsty local metadata currently packages Biscuit for PostgreSQL 16-18.
- PGXN package version 2.4.1 carries SQL/control `default_version = '2.4.0'`; this is expected for the current source package.
- Biscuit only targets `LIKE` / `ILIKE`-style wildcard matching. Regular expressions are not the supported search surface.
- Non-text columns should be indexed through explicit text expressions when needed.
- Benchmark against `pg_trgm` and your actual data distribution before replacing existing production indexes.
