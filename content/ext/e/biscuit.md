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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/Biscuit-2.4.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">Biscuit-2.4.3.tar.gz</div>
    <div class="ext-card__desc">Biscuit-2.4.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_biscuit`**](/ext/e/biscuit) | `2.4.3` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2170  | [**`biscuit`**](/ext/e/biscuit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`pg_trgm`](/ext/e/pg_trgm) [`pg_similarity`](/ext/e/pg_similarity) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`smlar`](/ext/e/smlar) [`pg_bigm`](/ext/e/pg_bigm) [`pgpcre`](/ext/e/pgpcre) [`re2`](/ext/e/re2) [`pgroonga`](/ext/e/pgroonga) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Latest stable PGXN distribution and package release is 2.4.3; 2.5.0 is testing; packaged control and SQL default version remain 2.4.1; package name is biscuit.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.3` | {{< pgvers "18,17,16" >}} | `pg_biscuit` | `plpgsql` |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.3` | {{< pgvers "18,17,16" >}} | `biscuit_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.3` | {{< pgvers "18,17,16" >}} | `postgresql-$v-biscuit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.4.3 3 | AVAIL PIGSTY 2.4.3 3 | AVAIL PIGSTY 2.4.3 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.4.3 3 | AVAIL PIGSTY 2.4.3 3 | AVAIL PIGSTY 2.4.3 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | AVAIL PIGSTY 2.4.3 5 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | AVAIL PIGSTY 2.4.3 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 biscuit_18 biscuit_18-2.4.3-1PIGSTY.el8.x86_64.rpm pigsty 2.4.3 64.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/biscuit_18-2.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.4.0 62.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/biscuit_18-2.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.2.2 63.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/biscuit_18-2.2.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 biscuit_18 biscuit_18-2.4.3-1PIGSTY.el8.aarch64.rpm pigsty 2.4.3 62.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/biscuit_18-2.4.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.4.0 59.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/biscuit_18-2.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.2.2 59.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/biscuit_18-2.2.2-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.4.3-1PIGSTY.el9.x86_64.rpm pigsty 2.4.3 63.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/biscuit_18-2.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.4.0 62.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2.2 65.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.2.2 65.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.2.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.2.2 65.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/biscuit_18-2.2.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.4.3-1PIGSTY.el9.aarch64.rpm pigsty 2.4.3 62.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/biscuit_18-2.4.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.4.0 61.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.2.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.2.2 62.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/biscuit_18-2.2.2-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.4.3-1PIGSTY.el10.x86_64.rpm pigsty 2.4.3 65.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/biscuit_18-2.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.4.0 64.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2.2 67.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.2.2 67.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.2.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.2.2 68.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/biscuit_18-2.2.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.4.3-1PIGSTY.el10.aarch64.rpm pigsty 2.4.3 64.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/biscuit_18-2.4.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.4.0 63.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2.2 64.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.2.2 64.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.2.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 biscuit_18 biscuit_18-2.2.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.2.2 64.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/biscuit_18-2.2.2-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~bookworm_amd64.deb pigsty 2.4.3 143.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~bookworm_arm64.deb pigsty 2.4.3 138.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~trixie_amd64.deb pigsty 2.4.3 143.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~trixie_arm64.deb pigsty 2.4.3 138.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~jammy_amd64.deb pigsty 2.4.3 145.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~jammy_arm64.deb pigsty 2.4.3 142.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~noble_amd64.deb pigsty 2.4.3 140.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~noble_arm64.deb pigsty 2.4.3 139.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~resolute_amd64.deb pigsty 2.4.3 140.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.4.3-1PIGSTY~resolute_arm64.deb pigsty 2.4.3 138.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.4.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 biscuit_17 biscuit_17-2.4.3-1PIGSTY.el8.x86_64.rpm pigsty 2.4.3 64.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/biscuit_17-2.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.4.0 62.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/biscuit_17-2.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.2.2 63.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/biscuit_17-2.2.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 biscuit_17 biscuit_17-2.4.3-1PIGSTY.el8.aarch64.rpm pigsty 2.4.3 61.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/biscuit_17-2.4.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.4.0 59.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/biscuit_17-2.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.2.2 59.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/biscuit_17-2.2.2-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.4.3-1PIGSTY.el9.x86_64.rpm pigsty 2.4.3 63.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/biscuit_17-2.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.4.0 62.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.2.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.2.2 65.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/biscuit_17-2.2.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.4.3-1PIGSTY.el9.aarch64.rpm pigsty 2.4.3 62.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/biscuit_17-2.4.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.4.0 61.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.2.2 62.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.2.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.2.2 62.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/biscuit_17-2.2.2-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.4.3-1PIGSTY.el10.x86_64.rpm pigsty 2.4.3 65.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/biscuit_17-2.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.4.0 64.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.2.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.2.2 68.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/biscuit_17-2.2.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.4.3-1PIGSTY.el10.aarch64.rpm pigsty 2.4.3 63.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/biscuit_17-2.4.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.4.0 63.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.2.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 biscuit_17 biscuit_17-2.2.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/biscuit_17-2.2.2-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~bookworm_amd64.deb pigsty 2.4.3 142.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~bookworm_arm64.deb pigsty 2.4.3 137.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~trixie_amd64.deb pigsty 2.4.3 143.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~trixie_arm64.deb pigsty 2.4.3 138.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~jammy_amd64.deb pigsty 2.4.3 168.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~jammy_arm64.deb pigsty 2.4.3 165.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~noble_amd64.deb pigsty 2.4.3 140.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~noble_arm64.deb pigsty 2.4.3 138.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~resolute_amd64.deb pigsty 2.4.3 140.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.4.3-1PIGSTY~resolute_arm64.deb pigsty 2.4.3 137.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.4.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 biscuit_16 biscuit_16-2.4.3-1PIGSTY.el8.x86_64.rpm pigsty 2.4.3 64.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/biscuit_16-2.4.3-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.4.0 62.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/biscuit_16-2.4.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel8.10.x86_64.rpm pgdg 2.2.2 63.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/biscuit_16-2.2.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 biscuit_16 biscuit_16-2.4.3-1PIGSTY.el8.aarch64.rpm pigsty 2.4.3 61.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/biscuit_16-2.4.3-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.4.0 59.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/biscuit_16-2.4.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel8.10.aarch64.rpm pgdg 2.2.2 59.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/biscuit_16-2.2.2-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.4.3-1PIGSTY.el9.x86_64.rpm pigsty 2.4.3 63.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/biscuit_16-2.4.3-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.4.0 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.4.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.8.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.2.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.7.x86_64.rpm pgdg 2.2.2 65.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.2.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.6.x86_64.rpm pgdg 2.2.2 65.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/biscuit_16-2.2.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.4.3-1PIGSTY.el9.aarch64.rpm pigsty 2.4.3 62.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/biscuit_16-2.4.3-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.4.0 61.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.4.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.8.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.2.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.7.aarch64.rpm pgdg 2.2.2 62.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.2.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel9.6.aarch64.rpm pgdg 2.2.2 62.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/biscuit_16-2.2.2-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.4.3-1PIGSTY.el10.x86_64.rpm pigsty 2.4.3 65.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/biscuit_16-2.4.3-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.4.0 64.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.4.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.2.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.2.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.1.x86_64.rpm pgdg 2.2.2 68.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.2.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.0.x86_64.rpm pgdg 2.2.2 68.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/biscuit_16-2.2.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.4.3-1PIGSTY.el10.aarch64.rpm pigsty 2.4.3 63.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/biscuit_16-2.4.3-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.4.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.4.0 63.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.4.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.2.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.2.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.1.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.2.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 biscuit_16 biscuit_16-2.2.2-1PGDG.rhel10.0.aarch64.rpm pgdg 2.2.2 64.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/biscuit_16-2.2.2-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~bookworm_amd64.deb pigsty 2.4.3 142.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~bookworm_arm64.deb pigsty 2.4.3 137.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~trixie_amd64.deb pigsty 2.4.3 143.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~trixie_arm64.deb pigsty 2.4.3 138.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~jammy_amd64.deb pigsty 2.4.3 168.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~jammy_arm64.deb pigsty 2.4.3 165.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~noble_amd64.deb pigsty 2.4.3 140.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~noble_arm64.deb pigsty 2.4.3 138.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~resolute_amd64.deb pigsty 2.4.3 140.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.4.3-1PIGSTY~resolute_arm64.deb pigsty 2.4.3 137.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.4.3-1PIGSTY~resolute_arm64.deb
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

- [PGXN biscuit 2.4.3 distribution](https://pgxn.org/dist/biscuit/2.4.3/)
- [PGXN 2.4.3 metadata](https://api.pgxn.org/dist/biscuit/2.4.3/META.json)
- [PGXN 2.4.3 control file](https://api.pgxn.org/src/biscuit/biscuit-2.4.3/biscuit.control)
- [PGXN 2.4.3 changelog](https://api.pgxn.org/src/biscuit/biscuit-2.4.3/CHANGELOG.md)
- [Official documentation](https://biscuit.readthedocs.io/)

`biscuit` is an experimental PostgreSQL index access method optimized for pattern filters on text. It targets selective `LIKE`, `ILIKE`, `NOT LIKE`, and `NOT ILIKE` predicates, including multi-column and expression indexes, while trading additional memory and write work for faster filtering.

### Core Workflow

```sql
CREATE EXTENSION biscuit;

CREATE INDEX message_body_biscuit_idx
ON message USING biscuit (body);

SELECT id, body
FROM message
WHERE body ILIKE '%timeout%';
```

Expression indexes work when the query uses the same expression:

```sql
CREATE INDEX customer_email_biscuit_idx
ON customer USING biscuit (lower(email));

SELECT *
FROM customer
WHERE lower(email) LIKE '%@example.com';
```

For predicates spanning several indexed text columns, use a multi-column index and confirm the chosen plan with `EXPLAIN (ANALYZE, BUFFERS)` on representative data.

### Important Objects

- `biscuit` is the index access method used in `CREATE INDEX ... USING biscuit`.
- `biscuit_operators` reports the supported operators.
- `biscuit_version` and `biscuit_build_info` expose build information; `biscuit_build_info_json` returns it as JSON.
- `biscuit_status` reports the installed build and bitmap configuration.
- `biscuit_index_stats` and `biscuit_index_memory_size` inspect an index and its memory footprint.
- `biscuit_memory_usage` is a view of extension memory use.
- `biscuit_has_roaring` and `biscuit_roaring_version` report optional Roaring bitmap support.

### Limits and Operations

`biscuit` is for filtering, not ordered index scans. It does not provide regular-expression or similarity search. Indexes can be larger and more expensive to maintain than a B-tree; benchmark read selectivity, ingest cost, memory use, and vacuum behavior before production use. Keep a conventional index where ordering, equality, uniqueness, or another access method is still required.

The upstream project labels Biscuit as actively developed. PGXN publishes `2.4.3` as a stable distribution, but that archive's changelog stops at `2.4.2`, and its metadata and control file expose SQL extension version `2.4.1`. Treat `2.4.3` as a distribution/package refresh: no additional SQL API delta is claimed. The material `2.4.2` change fixes a use-after-free in the index cache plus compiler warnings.
