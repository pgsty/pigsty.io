---
title: "orioledb"
linkTitle: "orioledb"
description: "OrioleDB, the next generation transactional engine"
weight: 2910
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/orioledb/orioledb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">orioledb/orioledb</div>
    <div class="ext-card__desc">https://github.com/orioledb/orioledb</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/orioledb-beta14.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">orioledb-beta14.tar.gz</div>
    <div class="ext-card__desc">orioledb-beta14.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`orioledb`**](/ext/e/orioledb) | `1.6` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2910  | [**`orioledb`**](/ext/e/orioledb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_mooncake`](/ext/e/pg_mooncake) [`citus_columnar`](/ext/e/citus_columnar) [`pg_analytics`](/ext/e/pg_analytics) [`pg_duckdb`](/ext/e/pg_duckdb) [`timescaledb`](/ext/e/timescaledb) [`citus`](/ext/e/citus) [`pg_strom`](/ext/e/pg_strom) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> special case: this extension only works on patched postgres kernel: oriolepg, 1.6-beta14


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "17" >}} | `orioledb` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "17" >}} | `orioledb_$v` | `oriolepg_$v` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "17" >}} | `oriolepg-$v-orioledb` | `oriolepg-$v` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 17 orioledb_17 orioledb_17-1.6-beta14PIGSTY.el8.x86_64.rpm pigsty 1.6 475.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb_17-1.6-beta14PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 orioledb_17 orioledb_17-1.6-beta14PIGSTY.el8.aarch64.rpm pigsty 1.6 452.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb_17-1.6-beta14PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 orioledb_17 orioledb_17-1.6-beta14PIGSTY.el9.x86_64.rpm pigsty 1.6 448.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb_17-1.6-beta14PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 orioledb_17 orioledb_17-1.6-beta14PIGSTY.el9.aarch64.rpm pigsty 1.6 440.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb_17-1.6-beta14PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 orioledb_17 orioledb_17-1.6-beta14PIGSTY.el10.x86_64.rpm pigsty 1.6 463.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb_17-1.6-beta14PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 orioledb_17 orioledb_17-1.6-beta14PIGSTY.el10.aarch64.rpm pigsty 1.6 452.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb_17-1.6-beta14PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~bookworm_amd64.deb pigsty 1.6 1.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~bookworm_arm64.deb pigsty 1.6 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~trixie_amd64.deb pigsty 1.6 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~trixie_arm64.deb pigsty 1.6 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~jammy_amd64.deb pigsty 1.6 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~jammy_arm64.deb pigsty 1.6 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~noble_amd64.deb pigsty 1.6 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~noble_amd64.deb
@ u24.aarch64 17 oriolepg-17-orioledb oriolepg-17-orioledb_1.6-0.beta14PIGSTY~noble_arm64.deb pigsty 1.6 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/oriolepg-17-orioledb/oriolepg-17-orioledb_1.6-0.beta14PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `orioledb` using `pig build`:

```bash
pig build pkg orioledb         # build RPM / DEB packages
```


## Install

You can install `orioledb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install orioledb;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y orioledb -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y orioledb_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y oriolepg-17-orioledb   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'orioledb';
```


**Create Extension**:

```sql
CREATE EXTENSION orioledb;
```




## Usage

> [orioledb: A cloud-native storage engine for PostgreSQL](https://github.com/orioledb/orioledb)

OrioleDB is a new storage engine for PostgreSQL that provides modern approaches to database capacity, capabilities, and performance. It uses undo log-based MVCC, copy-on-write checkpoints, and row-level WAL to eliminate bloat and the need for VACUUM.

### Configuration

Add to `postgresql.conf` (requires restart):

```ini
shared_preload_libraries = 'orioledb.so'
```

Then enable the extension:

```sql
CREATE EXTENSION orioledb;
```

### Creating Tables

Use the `USING orioledb` clause to create tables with the OrioleDB storage engine:

```sql
CREATE TABLE my_table (
    id serial PRIMARY KEY,
    name text,
    value numeric
) USING orioledb;
```

All standard PostgreSQL operations work on OrioleDB tables:

```sql
INSERT INTO my_table (name, value) VALUES ('test', 42);
SELECT * FROM my_table WHERE id = 1;
UPDATE my_table SET value = 100 WHERE id = 1;
DELETE FROM my_table WHERE id = 1;
```

### Collation Requirements

OrioleDB tables support only **ICU**, **C**, and **POSIX** collations. To avoid specifying COLLATE on every text field, create the database with an appropriate default:

```sql
CREATE DATABASE mydb LOCALE 'C' TEMPLATE template0;
-- OR
CREATE DATABASE mydb LOCALE_PROVIDER icu ICU_LOCALE 'en' TEMPLATE template0;
```

### Key Benefits

- **No bloat**: Undo log-based MVCC means old tuple versions do not bloat main storage
- **No VACUUM needed**: Page-merging and undo log reclaim space automatically
- **No wraparound problem**: Native 64-bit transaction identifiers
- **Lock-less page reading**: In-memory pages linked directly to storage pages
- **Row-level WAL**: Compact write-ahead logging suitable for parallel apply

### Limitations

- Public beta status -- recommended for testing, not production
- Requires a patched PostgreSQL build from [orioledb/postgres](https://github.com/orioledb/postgres)
- Only ICU, C, and POSIX collations are supported
