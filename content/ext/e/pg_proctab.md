---
title: "pg_proctab"
linkTitle: "pg_proctab"
description: "PostgreSQL extension to access the OS process table"
weight: 6460
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrunchyData/pgnodemx">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrunchyData/pgnodemx</div>
    <div class="ext-card__desc">https://github.com/CrunchyData/pgnodemx</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgnodemx-2.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgnodemx-2.0.1.tar.gz</div>
    <div class="ext-card__desc">pgnodemx-2.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgnodemx`**](/ext/e/pgnodemx) | `2.0.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6450  | [**`pgnodemx`**](/ext/e/pgnodemx) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 6460  | [**`pg_proctab`**](/ext/e/pg_proctab) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgnodemx`](/ext/e/pgnodemx) [`system_stats`](/ext/e/system_stats) [`pg_stat_kcache`](/ext/e/pg_stat_kcache) [`pgmeminfo`](/ext/e/pgmeminfo) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Compatibility stub; PGDG RPM incomplete.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pgnodemx` | `pgnodemx` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `pgnodemx_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgnodemx` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 |
| el8.aarch64 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 | AVAIL PIGSTY 2.0.1 3 |
| el9.x86_64 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 |
| el9.aarch64 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 |
| el10.x86_64 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 |
| el10.aarch64 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 | AVAIL PIGSTY 2.0.1 4 |
| d12.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| d12.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| d13.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| d13.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u22.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u22.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u24.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u24.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u26.x86_64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
| u26.aarch64 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 | AVAIL PGDG 2.0.1 3 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgnodemx` using `pig build`:

```bash
pig build pkg pgnodemx         # build RPM / DEB packages
```


## Install

You can install `pgnodemx` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgnodemx;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgnodemx -v 18  # PG 18
pig ext install -y pgnodemx -v 17  # PG 17
pig ext install -y pgnodemx -v 16  # PG 16
pig ext install -y pgnodemx -v 15  # PG 15
pig ext install -y pgnodemx -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgnodemx_18       # PG 18
dnf install -y pgnodemx_17       # PG 17
dnf install -y pgnodemx_16       # PG 16
dnf install -y pgnodemx_15       # PG 15
dnf install -y pgnodemx_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgnodemx   # PG 18
apt install -y postgresql-17-pgnodemx   # PG 17
apt install -y postgresql-16-pgnodemx   # PG 16
apt install -y postgresql-15-pgnodemx   # PG 15
apt install -y postgresql-14-pgnodemx   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_proctab CASCADE;  -- requires: pgnodemx
```

## Usage

Sources:

- [pgnodemx 2.0.1 documentation](https://github.com/pgnodemx/pgnodemx/blob/v2.0.1/README.md)
- [Compatibility control file](https://github.com/pgnodemx/pgnodemx/blob/v2.0.1/pg_proctab.control)
- [Compatibility SQL](https://github.com/pgnodemx/pgnodemx/blob/v2.0.1/pg_proctab--0.0.10-compat.sql)

The `pg_proctab` shipped in `pgnodemx` provides five SQL wrappers for the legacy process-monitoring interface. It depends on `pgnodemx`; the package version is 2.0.1, while its SQL installation version is `0.0.10-compat`.

### Enable

Add `pgnodemx` to `shared_preload_libraries`, preserving other entries, then restart PostgreSQL:

```ini
shared_preload_libraries = 'pgnodemx'
```

Install both extensions in the same schema as a superuser:

```sql
CREATE EXTENSION pgnodemx;
CREATE EXTENSION pg_proctab VERSION '0.0.10-compat';
```

The explicit version is required because the main control file has no default version. The audited PGDG RPM packages omit that main control file; use a package containing it before running this command. Querying the underlying OS metrics requires superuser privileges or membership in `pg_monitor`.

### Query

```sql
SELECT a.pid, a.query, p.utime, p.stime, p.vsize, p.rss
FROM pg_stat_activity a
JOIN pg_proctab() p ON a.pid = p.pid;

SELECT "user", nice, system, idle, iowait FROM pg_cputime();
SELECT load1, load5, load15, last_pid FROM pg_loadavg();
SELECT memused, memfree, memshared, membuffers, memcached,
       swapused, swapfree, swapcached
FROM pg_memusage();
SELECT devname, reads_completed, writes_completed,
       sectors_read, sectors_written
FROM pg_diskusage();
```

These functions read Linux process and system statistics visible to the PostgreSQL server. Container namespaces and OS permissions affect what is visible. In this compatibility layer, `rss` is reported in KiB, memory totals in MiB, and `memshared` comes from `Shmem`.
