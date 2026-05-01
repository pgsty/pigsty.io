---
title: "spat"
linkTitle: "spat"
description: "Redis-like In-Memory DB Embedded in Postgres"
weight: 9400
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Florents-Tselai/spat">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Florents-Tselai/spat</div>
    <div class="ext-card__desc">https://github.com/Florents-Tselai/spat</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/spat-0.1.0a4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">spat-0.1.0a4.tar.gz</div>
    <div class="ext-card__desc">spat-0.1.0a4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`spat`**](/ext/e/spat) | `0.1.0a4` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9400  | [**`spat`**](/ext/e/spat) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`redis_fdw`](/ext/e/redis_fdw) [`redis`](/ext/e/redis) [`pgmemcache`](/ext/e/pgmemcache) [`mongo_fdw`](/ext/e/mongo_fdw) [`kafka_fdw`](/ext/e/kafka_fdw) [`documentdb`](/ext/e/documentdb) [`documentdb_core`](/ext/e/documentdb_core) [`documentdb_distributed`](/ext/e/documentdb_distributed) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Alpha Stage!


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0a4` | {{< pgvers "17" >}} | `spat` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.1.0a4` | {{< pgvers "17" >}} | `spat_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0a4` | {{< pgvers "17" >}} | `postgresql-$v-spat` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el8.aarch64 | MISS PGDG - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | MISS PGDG - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.aarch64 | MISS PGDG - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.1.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 17 spat_17 spat_17-0.1.0a4-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 36.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/spat_17-0.1.0a4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 spat_17 spat_17-0.1.0a4-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 35.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/spat_17-0.1.0a4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 spat_17 spat_17-0.1.0a4-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 36.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/spat_17-0.1.0a4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 spat_17 spat_17-0.1.0a4-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 35.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/spat_17-0.1.0a4-1PIGSTY.el9.aarch64.rpm
@ d12.x86_64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 46.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 45.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~bookworm_arm64.deb
@ u22.x86_64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 51.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 50.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~noble_amd64.deb pigsty 0.1.0 47.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~noble_arm64.deb pigsty 0.1.0 47.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 47.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-spat postgresql-17-spat_0.1.0a4-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 47.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/spat/postgresql-17-spat_0.1.0a4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `spat` using `pig build`:

```bash
pig build pkg spat         # build RPM / DEB packages
```


## Install

You can install `spat` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install spat;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y spat -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y spat_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-17-spat   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION spat;
```



## Usage

> [spat: Redis-like In-Memory DB Embedded in Postgres](https://github.com/Florents-Tselai/spat)

An in-memory key-value data structure server embedded in PostgreSQL shared memory. Keys are strings; values can be strings, lists, sets, or hashes.

### Enabling

```sql
CREATE EXTENSION spat;
```

### Strings

```sql
SELECT SPSET('key', 'value');
SELECT SPGET('key');              -- 'value'

-- With TTL
SELECT SPSET('temp', 'data', ttl => interval '5 minutes');

-- Store any type as text
SELECT SPSET('config', '{"a": 1}'::jsonb);
SELECT SPGET('config')::text::jsonb;
```

### Sets

```sql
SELECT SADD('myset', 'elem1');
SELECT SADD('myset', 'elem2');
SELECT SISMEMBER('myset', 'elem1');  -- true
SELECT SCARD('myset');               -- 2
SELECT SREM('myset', 'elem1');       -- 1
```

### Lists

```sql
SELECT LPUSH('mylist', 'a');
SELECT LPUSH('mylist', 'b');
SELECT LPOP('mylist');     -- 'b' (LIFO)
SELECT LLEN('mylist');     -- 1
```

### Hashes

```sql
SELECT HSET('myhash', 'field1', 'Hello');
SELECT HGET('myhash', 'field1');  -- 'Hello'
```

### Generic Operations

```sql
SELECT SPTYPE('key');           -- 'string', 'list', 'set', or 'hash'
SELECT DEL('key');              -- true if removed
SELECT TTL('key');              -- returns TTL interval
SELECT GETEXPIREAT('key');      -- returns expiration timestamp
SELECT SP_DB_NITEMS();          -- number of entries
SELECT SP_DB_SIZE();            -- human-friendly size
```

### Multiple Databases

```sql
SET spat.db = 'db1';             -- switch to database 'db1'
SET spat.db = 'spat-default';   -- switch back to default
```

### Important Notes

- Data is stored in PostgreSQL shared memory and is **not durable** -- lost on restart
- Operations are **not transactional** -- ROLLBACK does not undo spat changes
- Changes are **immediately visible** across all sessions (no MVCC isolation)
- Per-key locks ensure concurrent write safety
