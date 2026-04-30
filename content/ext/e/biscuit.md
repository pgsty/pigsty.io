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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/Biscuit-2.2.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">Biscuit-2.2.2.tar.gz</div>
    <div class="ext-card__desc">Biscuit-2.2.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_biscuit`**](/ext/e/biscuit) | `2.2.2` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2170  | [**`biscuit`**](/ext/e/biscuit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`hll`](/ext/e/hll) [`rum`](/ext/e/rum) [`pg_textsearch`](/ext/e/pg_textsearch) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.2` | {{< pgvers "18,17,16" >}} | `pg_biscuit` | `plpgsql` |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.2` | {{< pgvers "18,17,16" >}} | `pg_biscuit_$v` | - |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.2` | {{< pgvers "18,17,16" >}} | `postgresql-$v-biscuit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | AVAIL PIGSTY 2.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_biscuit_18 pg_biscuit_18-2.2.2-1PIGSTY.el8.x86_64.rpm pigsty 2.2.2 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_biscuit_18-2.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_biscuit_18 pg_biscuit_18-2.2.2-1PIGSTY.el8.aarch64.rpm pigsty 2.2.2 61.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_biscuit_18-2.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_biscuit_18 pg_biscuit_18-2.2.2-1PIGSTY.el9.x86_64.rpm pigsty 2.2.2 65.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_biscuit_18-2.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_biscuit_18 pg_biscuit_18-2.2.2-1PIGSTY.el9.aarch64.rpm pigsty 2.2.2 63.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_biscuit_18-2.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_biscuit_18 pg_biscuit_18-2.2.2-1PIGSTY.el10.x86_64.rpm pigsty 2.2.2 68.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_biscuit_18-2.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_biscuit_18 pg_biscuit_18-2.2.2-1PIGSTY.el10.aarch64.rpm pigsty 2.2.2 65.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_biscuit_18-2.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~bookworm_amd64.deb pigsty 2.2.2 154.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~bookworm_arm64.deb pigsty 2.2.2 149.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~trixie_amd64.deb pigsty 2.2.2 155.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~trixie_arm64.deb pigsty 2.2.2 150.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~jammy_amd64.deb pigsty 2.2.2 157.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~jammy_arm64.deb pigsty 2.2.2 155.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~noble_amd64.deb pigsty 2.2.2 157.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-biscuit postgresql-18-biscuit_2.2.2-1PIGSTY~noble_arm64.deb pigsty 2.2.2 153.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-18-biscuit_2.2.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_biscuit_17 pg_biscuit_17-2.2.2-1PIGSTY.el8.x86_64.rpm pigsty 2.2.2 65.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_biscuit_17-2.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_biscuit_17 pg_biscuit_17-2.2.2-1PIGSTY.el8.aarch64.rpm pigsty 2.2.2 60.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_biscuit_17-2.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_biscuit_17 pg_biscuit_17-2.2.2-1PIGSTY.el9.x86_64.rpm pigsty 2.2.2 65.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_biscuit_17-2.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_biscuit_17 pg_biscuit_17-2.2.2-1PIGSTY.el9.aarch64.rpm pigsty 2.2.2 63.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_biscuit_17-2.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_biscuit_17 pg_biscuit_17-2.2.2-1PIGSTY.el10.x86_64.rpm pigsty 2.2.2 68.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_biscuit_17-2.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_biscuit_17 pg_biscuit_17-2.2.2-1PIGSTY.el10.aarch64.rpm pigsty 2.2.2 65.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_biscuit_17-2.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~bookworm_amd64.deb pigsty 2.2.2 154.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~bookworm_arm64.deb pigsty 2.2.2 149.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~trixie_amd64.deb pigsty 2.2.2 155.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~trixie_arm64.deb pigsty 2.2.2 150.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~jammy_amd64.deb pigsty 2.2.2 168.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~jammy_arm64.deb pigsty 2.2.2 165.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~noble_amd64.deb pigsty 2.2.2 157.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-biscuit postgresql-17-biscuit_2.2.2-1PIGSTY~noble_arm64.deb pigsty 2.2.2 153.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-17-biscuit_2.2.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_biscuit_16 pg_biscuit_16-2.2.2-1PIGSTY.el8.x86_64.rpm pigsty 2.2.2 65.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_biscuit_16-2.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_biscuit_16 pg_biscuit_16-2.2.2-1PIGSTY.el8.aarch64.rpm pigsty 2.2.2 61.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_biscuit_16-2.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_biscuit_16 pg_biscuit_16-2.2.2-1PIGSTY.el9.x86_64.rpm pigsty 2.2.2 65.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_biscuit_16-2.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_biscuit_16 pg_biscuit_16-2.2.2-1PIGSTY.el9.aarch64.rpm pigsty 2.2.2 63.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_biscuit_16-2.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_biscuit_16 pg_biscuit_16-2.2.2-1PIGSTY.el10.x86_64.rpm pigsty 2.2.2 68.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_biscuit_16-2.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_biscuit_16 pg_biscuit_16-2.2.2-1PIGSTY.el10.aarch64.rpm pigsty 2.2.2 65.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_biscuit_16-2.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~bookworm_amd64.deb pigsty 2.2.2 154.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~bookworm_arm64.deb pigsty 2.2.2 149.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~trixie_amd64.deb pigsty 2.2.2 155.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~trixie_arm64.deb pigsty 2.2.2 150.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~jammy_amd64.deb pigsty 2.2.2 168.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~jammy_arm64.deb pigsty 2.2.2 165.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~noble_amd64.deb pigsty 2.2.2 157.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-biscuit postgresql-16-biscuit_2.2.2-1PIGSTY~noble_arm64.deb pigsty 2.2.2 153.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-biscuit/postgresql-16-biscuit_2.2.2-1PIGSTY~noble_arm64.deb
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
dnf install -y pg_biscuit_18       # PG 18
dnf install -y pg_biscuit_17       # PG 17
dnf install -y pg_biscuit_16       # PG 16
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

> Syntax:
>
> ```sql
> CREATE EXTENSION biscuit;
> CREATE INDEX idx_users_name ON users USING biscuit(name);
> SELECT * FROM users WHERE name LIKE '%john%';
> ```
>
> Sources: [README](https://github.com/CrystallineCore/Biscuit), [Docs](https://biscuit.readthedocs.io/)

`biscuit` is a PostgreSQL index access method for fast `LIKE` and `ILIKE` pattern matching, including multi-column searches. The upstream project positions it as a deterministic bitmap index that avoids the false-positive recheck overhead common in trigram-based searches.

### Quick Start

Create the extension and build a Biscuit index on one or more text columns:

```sql
CREATE EXTENSION biscuit;

CREATE INDEX idx_users_name ON users USING biscuit(name);

CREATE INDEX idx_products_search
ON products USING biscuit(name, description, category);
```

Basic wildcard queries work with the index:

```sql
SELECT * FROM users WHERE name LIKE '%john%';
SELECT * FROM users WHERE name NOT LIKE 'a%b%c';
SELECT COUNT(*) FROM users WHERE name LIKE '%test%';

SELECT *
FROM products
WHERE name LIKE '%widget%'
  AND description LIKE '%blue%'
  AND category LIKE 'electronics%'
LIMIT 10;
```

## Index Behavior

Biscuit stores bitmap position indexes for each string and can match both forward and backward character positions. The upstream design highlights:

- positive indexes for characters at exact positions
- negative indexes for characters counted from the string end
- case-insensitive variants for `ILIKE`
- exact-length and minimum-length bitmaps for fast length filtering

For a pattern such as `LIKE 'abc%def'`, Biscuit can intersect prefix and suffix bitmaps plus a minimum-length filter, producing exact matches without a heap recheck phase.

### Pattern Cases

The implementation documents optimized paths for common pattern types:

- exact matches such as `'abc'`
- prefix patterns such as `'abc%'`
- suffix patterns such as `'%xyz'`
- substring patterns such as `'%abc%'`
- multi-column predicates, where Biscuit reorders predicates by estimated selectivity

## Performance Notes

The upstream README emphasizes bitmap-only evaluation and several execution optimizations, including:

- early termination when an intermediate bitmap becomes empty
- direct use of roaring bitmaps for sparse and dense cases
- negative-position lookups for suffix predicates
- sorted TID output to improve heap access locality
- special handling for aggregate queries and `LIMIT`

The project README also includes a benchmark setup comparing Biscuit indexes with trigram-based approaches on a 1M-row table.

## Requirements

The current upstream README lists these requirements for source builds:

- PostgreSQL 16 or newer
- standard build tools such as `gcc`, `make`, and `pg_config`
- optional CRoaring for improved performance

The project publishes packages on [PGXN](https://pgxn.org/dist/biscuit/) and maintains a dedicated documentation site on Read the Docs.
