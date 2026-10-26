---
title: "pg_tre"
linkTitle: "pg_tre"
description: "Native PostgreSQL index access method for approximate regular-expression matching"
weight: 2330
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://codeberg.org/gregburd/pg_tre">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://codeberg.org/gregburd/pg_tre</div>
    <div class="ext-card__desc">https://codeberg.org/gregburd/pg_tre</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_tre-4.5.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_tre-4.5.2.tar.gz</div>
    <div class="ext-card__desc">pg_tre-4.5.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tre`**](/ext/e/pg_tre) | `4.5.2` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit and bsd2clause" href="/ext/license#mitandbsd2clause">MIT AND BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2330  | [**`pg_tre`**](/ext/e/pg_tre) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_trgm`](/ext/e/pg_trgm) [`pg_textsearch`](/ext/e/pg_textsearch) [`pg_fts`](/ext/e/pg_fts) [`vector`](/ext/e/vector) [`pg_mentat`](/ext/e/pg_mentat) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> 4.5.2 fixes newline-mode regex anchors and negated classes; no additional REINDEX from 4.5.1. index_check retains the 4.5.1 search_path fix. PG17-19 upstream; PGSTY RPM and DEB packages target PG17-18. Generic WAL since 4.0 needs no preload. The 3.x to 4.x WAL transition requires clean shutdown and physical standby rebuild. REINDEX indexes built with min_trigram_freq>1; fastupdate=false is refused; pending_list_limit defaults to 0. Formats 6-10 remain readable; 4.4+ writes format 11.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.5.2` | {{< pgvers "17,18" >}} | `pg_tre` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.5.2` | {{< pgvers "18,17" >}} | `pg_tre_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.5.2` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-tre` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.5.2 2 | AVAIL PIGSTY 4.5.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 4.5.2 2 | AVAIL PIGSTY 4.5.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 4.5.2 2 | AVAIL PIGSTY 4.5.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 4.5.2 2 | AVAIL PIGSTY 4.5.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 4.5.2 2 | AVAIL PIGSTY 4.5.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 4.5.2 2 | AVAIL PIGSTY 4.5.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 4.5.2 1 | AVAIL PIGSTY 4.5.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_tre_18 pg_tre_18-4.5.2-1PGSTY.el8.x86_64.rpm pigsty 4.5.2 591.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tre_18-4.5.2-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_tre_18 pg_tre_18-4.5.1-1PGSTY.el8.x86_64.rpm pigsty 4.5.1 590.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tre_18-4.5.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_tre_18 pg_tre_18-4.5.2-1PGSTY.el8.aarch64.rpm pigsty 4.5.2 575.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tre_18-4.5.2-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_tre_18 pg_tre_18-4.5.1-1PGSTY.el8.aarch64.rpm pigsty 4.5.1 574.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tre_18-4.5.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_tre_18 pg_tre_18-4.5.2-1PGSTY.el9.x86_64.rpm pigsty 4.5.2 561.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tre_18-4.5.2-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_tre_18 pg_tre_18-4.5.1-1PGSTY.el9.x86_64.rpm pigsty 4.5.1 560.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tre_18-4.5.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_tre_18 pg_tre_18-4.5.2-1PGSTY.el9.aarch64.rpm pigsty 4.5.2 552.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tre_18-4.5.2-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_tre_18 pg_tre_18-4.5.1-1PGSTY.el9.aarch64.rpm pigsty 4.5.1 551.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tre_18-4.5.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_tre_18 pg_tre_18-4.5.2-1PGSTY.el10.x86_64.rpm pigsty 4.5.2 568.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tre_18-4.5.2-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_tre_18 pg_tre_18-4.5.1-1PGSTY.el10.x86_64.rpm pigsty 4.5.1 567.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tre_18-4.5.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_tre_18 pg_tre_18-4.5.2-1PGSTY.el10.aarch64.rpm pigsty 4.5.2 557.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tre_18-4.5.2-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_tre_18 pg_tre_18-4.5.1-1PGSTY.el10.aarch64.rpm pigsty 4.5.1 556.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tre_18-4.5.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~bookworm_amd64.deb pigsty 4.5.2 573.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~bookworm_arm64.deb pigsty 4.5.2 554.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~trixie_amd64.deb pigsty 4.5.2 575.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~trixie_arm64.deb pigsty 4.5.2 557.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~jammy_amd64.deb pigsty 4.5.2 587.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~jammy_arm64.deb pigsty 4.5.2 577.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~noble_amd64.deb pigsty 4.5.2 571.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~noble_arm64.deb pigsty 4.5.2 561.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~resolute_amd64.deb pigsty 4.5.2 568.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-tre postgresql-18-pg-tre_4.5.2-1PGSTY~resolute_arm64.deb pigsty 4.5.2 556.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tre/postgresql-18-pg-tre_4.5.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_tre_17 pg_tre_17-4.5.2-1PGSTY.el8.x86_64.rpm pigsty 4.5.2 592.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tre_17-4.5.2-1PGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_tre_17 pg_tre_17-4.5.1-1PGSTY.el8.x86_64.rpm pigsty 4.5.1 590.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_tre_17-4.5.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_tre_17 pg_tre_17-4.5.2-1PGSTY.el8.aarch64.rpm pigsty 4.5.2 575.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tre_17-4.5.2-1PGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_tre_17 pg_tre_17-4.5.1-1PGSTY.el8.aarch64.rpm pigsty 4.5.1 574.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_tre_17-4.5.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_tre_17 pg_tre_17-4.5.2-1PGSTY.el9.x86_64.rpm pigsty 4.5.2 562.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tre_17-4.5.2-1PGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_tre_17 pg_tre_17-4.5.1-1PGSTY.el9.x86_64.rpm pigsty 4.5.1 561.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_tre_17-4.5.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_tre_17 pg_tre_17-4.5.2-1PGSTY.el9.aarch64.rpm pigsty 4.5.2 553.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tre_17-4.5.2-1PGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_tre_17 pg_tre_17-4.5.1-1PGSTY.el9.aarch64.rpm pigsty 4.5.1 552.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_tre_17-4.5.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_tre_17 pg_tre_17-4.5.2-1PGSTY.el10.x86_64.rpm pigsty 4.5.2 569.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tre_17-4.5.2-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_tre_17 pg_tre_17-4.5.1-1PGSTY.el10.x86_64.rpm pigsty 4.5.1 568.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_tre_17-4.5.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_tre_17 pg_tre_17-4.5.2-1PGSTY.el10.aarch64.rpm pigsty 4.5.2 558.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tre_17-4.5.2-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_tre_17 pg_tre_17-4.5.1-1PGSTY.el10.aarch64.rpm pigsty 4.5.1 557.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_tre_17-4.5.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~bookworm_amd64.deb pigsty 4.5.2 574.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~bookworm_arm64.deb pigsty 4.5.2 554.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~trixie_amd64.deb pigsty 4.5.2 576.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~trixie_arm64.deb pigsty 4.5.2 557.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~jammy_amd64.deb pigsty 4.5.2 644.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~jammy_arm64.deb pigsty 4.5.2 631.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~noble_amd64.deb pigsty 4.5.2 572.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~noble_arm64.deb pigsty 4.5.2 562.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~resolute_amd64.deb pigsty 4.5.2 569.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-tre postgresql-17-pg-tre_4.5.2-1PGSTY~resolute_arm64.deb pigsty 4.5.2 557.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-tre/postgresql-17-pg-tre_4.5.2-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_tre` using `pig build`:

```bash
pig build pkg pg_tre         # build RPM / DEB packages
```


## Install

You can install `pg_tre` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_tre;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_tre -v 18  # PG 18
pig ext install -y pg_tre -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_tre_18       # PG 18
dnf install -y pg_tre_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-tre   # PG 18
apt install -y postgresql-17-pg-tre   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION pg_tre;
```

## Usage

Sources:

- [README.md](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/README.md)
- [pg_tre.control](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/pg_tre.control)
- [sql/pg_tre--4.5.2.sql](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/sql/pg_tre--4.5.2.sql)
- [CHANGELOG.md](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/CHANGELOG.md)
- [LIMITATIONS.md](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/LIMITATIONS.md)
- [META.json](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/META.json)
- [.github/workflows/ci.yml](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/.github/workflows/ci.yml)
- [Library initialization](https://api.pgxn.org/src/pg_tre/pg_tre-4.5.2/src/module.c)

`pg_tre` 4.5.2 provides the `tre` native index access method for approximate regular-expression matching over text. Upstream supports PostgreSQL 17–19; Pigsty's 4.5.2 packages target PostgreSQL 17–18. It narrows candidates with codepoint trigrams and postings, then checks matches against the heap. Use it for typo-tolerant identifiers, log messages and lexical patterns with explicit edit costs.

### Enable and Search

The index write path uses PostgreSQL's generic WAL facility. Since 4.0.0, `CREATE EXTENSION` is sufficient: `shared_preload_libraries` and a restart are not required to enable a new installation. Extension creation requires a superuser, and the control file is untrusted and non-relocatable.

```sql
CREATE EXTENSION pg_tre;
CREATE TABLE documents (
  id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  body text NOT NULL
);
INSERT INTO documents (body) VALUES
  ('The PostgreSQL database system'),
  ('The Postgres databse system');
CREATE INDEX documents_body_tre ON documents USING tre (body);
SELECT id, body, body <@> tre_pattern('database', 1) AS distance
FROM documents
WHERE body %~~ tre_pattern('database', 1)
ORDER BY distance ASC NULLS LAST, id;
```

PostgreSQL 19 uses the core regular-expression character classifier; ICU character-class edge cases on PostgreSQL 17–18 may differ from native PostgreSQL regex semantics, as described upstream.

### Patterns and Objects

- `tre_pattern(text)` uses `pg_tre.default_max_cost`; `tre_pattern(text, int4)` supplies a maximum cost; the five-argument form also sets insertion, deletion and substitution costs. Patterns use POSIX extended regular expressions and TRE approximate budgets.
- `text %~~ tre_pattern` is the indexable approximate-match predicate; `text <@> tre_pattern` returns the edit cost or NULL when no match fits the budget.
- `tre_distance`, `tre_similarity`, `tre_amatch`, `tre_amatch_cost` and `tre_amatch_detail` expose matching and compatibility functions.
- The index operator family also supports LIKE, ILIKE, regular-expression and equality predicates with heap rechecks. The separately named trigram functions coexist with `pg_trgm`; `pg_tre` does not install the colliding bare trigram operators removed in 3.0.

Indexes accept one text column with `tre_text_ops`. Expression and partial indexes are available, but index-only scans are not. Short patterns, high edit budgets and non-literal regexes can produce broad candidate sets; inspect real plans and keep cancellation and query-time limits enabled.

### Maintenance and Limits

`fastupdate` must be true; setting it false is now rejected because the direct path could not preserve the index format. Existing off settings can still be opened, but inserts use the pending list. `pending_list_limit` is in KiB and defaults to 0, meaning unlimited. A positive value triggers a synchronous merge when the threshold is crossed; that inserting backend pays the work, and if another merge is active the limit can temporarily be exceeded.

`pg_tre.min_trigram_freq` must remain 1. Values above 1 formerly omitted rare postings and could lose results; they are now rejected. Keep regex state and compilation/matching limits bounded for untrusted patterns. Index construction uses tuplesort and temporary disk, with memory governed by maintenance_work_mem; estimate large builds before scheduling them.

```sql
SELECT * FROM tre_estimate_index_build('documents'::regclass, 2);
SELECT * FROM pg_tre_index_pending('documents_body_tre'::regclass);
SELECT * FROM pg_tre_index_check('documents_body_tre'::regclass, 2);
```

`pg_tre_index_check` compares index answers with sequential scans. Each sample performs multiple sequential scans, so bound the sample count on large tables. Version 4.5.1 fixes its search-path handling, pins trusted lookup paths and qualifies calls; use the fixed version before running this helper as a privileged user.

### Upgrade Boundaries

Install matching files, ensure sessions use the new library, and update each database:

```sql
ALTER EXTENSION pg_tre UPDATE TO '4.5.2';
```

Crossing from 3.x to 4.x changes WAL record types even though the index page format is unchanged. Shut down cleanly before replacing the library; a physical standby cannot run a different major extension version from its primary and must be rebuilt from a fresh base backup after the primary upgrade. There is no rolling upgrade across this boundary. Remove any old `wal_consistency_checking = 'pg_tre'` setting; it prevents startup in 4.x. Upstream recommends `wal_consistency_checking = 'all'` when consistency checking is needed.

Version 4.4 writes format 11 and reads formats 6–10. Upgrading from those formats does not require a routine rebuild; optional REINDEX obtains the newer dense-posting representation. Downgrading to 4.3 after a 4.4+ write requires rebuilding the affected indexes for the older format. Older upgrades may cross additional boundaries described in the changelog.

REINDEX every index built with min_trigram_freq greater than 1: installing the fix cannot restore omitted postings. Version 4.5 also disables stale SuRF acceleration on indexes from earlier affected versions, restoring correctness immediately; a rebuild is optional to regain that acceleration. Upgrading 4.5.0 to 4.5.1 changes neither format nor ordinary query behavior and requires no additional REINDEX. Old definitions using the removed tuple bloom options must still be corrected before rebuilding.

### 4.5.2 Regex Correction

Version 4.5.2 fixes newline-mode `(?n)` anchors and negated character classes. It retains the index format and needs no additional REINDEX when upgrading from 4.5.1. The older WAL-transition and omitted-posting rebuild requirements above still apply when crossing those affected versions.

```sql
SELECT E'a\nfoo' %~~ tre_pattern('(?n)^foo', 0) AS line_start,
       E'foo\n' %~~ tre_pattern('(?n)foo$', 0) AS line_end,
       E'\n' %~~ tre_pattern('(?n)[^x]', 0) AS negated_class;
```

The expected results are true, true and false. The fix affects matching and index rechecks alike; patterns without newline mode retain their previous behavior.
