---
title: "omni_shmem"
linkTitle: "omni_shmem"
description: "Shared Memory Management"
weight: 2967
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://docs.omnigres.org/omni_shmem/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://docs.omnigres.org/omni_shmem/</div>
    <div class="ext-card__desc">https://docs.omnigres.org/omni_shmem/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/omnigres-20251108.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">omnigres-20251108.tar.gz</div>
    <div class="ext-card__desc">omnigres-20251108.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`omni_shmem`**](/ext/e/omni) | `0.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2967  | [**`omni_shmem`**](/ext/e/omni_shmem) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `omni_shmem` |
{.ext-table}

| **Related** | [`pg_variables`](/ext/e/pg_variables) [`pgmeminfo`](/ext/e/pgmeminfo) [`pg_buffercache`](/ext/e/pg_buffercache) [`pgfincore`](/ext/e/pgfincore) [`pgcozy`](/ext/e/pgcozy) [`pg_prewarm`](/ext/e/pg_prewarm) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `omni_shmem` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `omnigres_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-omnigres` | - |
{.ext-table}

## Build

You can build the RPM / DEB packages for `omni_shmem` using `pig build`:

```bash
pig build pkg omni_shmem         # build RPM / DEB packages
```


## Install

You can install `omni_shmem` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install omni_shmem;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y omni_shmem -v 18  # PG 18
pig ext install -y omni_shmem -v 17  # PG 17
pig ext install -y omni_shmem -v 16  # PG 16
pig ext install -y omni_shmem -v 15  # PG 15
pig ext install -y omni_shmem -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y omnigres_18       # PG 18
dnf install -y omnigres_17       # PG 17
dnf install -y omnigres_16       # PG 16
dnf install -y omnigres_15       # PG 15
dnf install -y omnigres_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-omnigres   # PG 18
apt install -y postgresql-17-omnigres   # PG 17
apt install -y postgresql-16-omnigres   # PG 16
apt install -y postgresql-15-omnigres   # PG 15
apt install -y postgresql-14-omnigres   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION omni_shmem;
```




## Usage

> [omni_shmem: Shared Memory Management](https://docs.omnigres.org/omni_shmem/)

The `omni_shmem` extension provides shared memory management facilities for PostgreSQL extensions within the Omnigres ecosystem.

It enables extensions to allocate and manage shared memory segments, providing the underlying infrastructure used by other Omnigres extensions that need cross-process shared state.
