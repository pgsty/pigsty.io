---
title: "lolor"
linkTitle: "lolor"
description: "Logical-replication-friendly replacement for PostgreSQL large objects"
weight: 9580
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgEdge/lolor">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgEdge/lolor</div>
    <div class="ext-card__desc">https://github.com/pgEdge/lolor</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/lolor-1.2.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">lolor-1.2.2.tar.gz</div>
    <div class="ext-card__desc">lolor-1.2.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`lolor`**](/ext/e/lolor) | `1.2.2` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9580  | [**`lolor`**](/ext/e/lolor) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `lolor` |
{.ext-table}

| **Related** | [`spock`](/ext/e/spock) [`snowflake`](/ext/e/snowflake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> works on pgedge kernel fork. Requires lolor.node


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "17" >}} | `lolor` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "17" >}} | `lolor_$v` | `pgedge_$v` |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.2` | {{< pgvers "17" >}} | `pgedge-$v-lolor` | `pgedge-$v` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 1.2.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 17 lolor_17 lolor_17-1.2.2-1PIGSTY.el8.x86_64.rpm pigsty 1.2.2 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/lolor_17-1.2.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 lolor_17 lolor_17-1.2.2-1PIGSTY.el8.aarch64.rpm pigsty 1.2.2 28.5KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/lolor_17-1.2.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 lolor_17 lolor_17-1.2.2-1PIGSTY.el9.x86_64.rpm pigsty 1.2.2 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/lolor_17-1.2.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 lolor_17 lolor_17-1.2.2-1PIGSTY.el9.aarch64.rpm pigsty 1.2.2 27.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/lolor_17-1.2.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 lolor_17 lolor_17-1.2.2-1PIGSTY.el10.x86_64.rpm pigsty 1.2.2 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/lolor_17-1.2.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 lolor_17 lolor_17-1.2.2-1PIGSTY.el10.aarch64.rpm pigsty 1.2.2 28.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/lolor_17-1.2.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~bookworm_amd64.deb pigsty 1.2.2 16.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~bookworm_arm64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~trixie_amd64.deb pigsty 1.2.2 16.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~trixie_arm64.deb pigsty 1.2.2 15.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~jammy_amd64.deb pigsty 1.2.2 18.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~jammy_arm64.deb pigsty 1.2.2 17.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~noble_amd64.deb pigsty 1.2.2 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 pgedge-17-lolor pgedge-17-lolor_1.2.2-1PIGSTY~noble_arm64.deb pigsty 1.2.2 17.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/lolor/pgedge-17-lolor_1.2.2-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `lolor` using `pig build`:

```bash
pig build pkg lolor         # build RPM / DEB packages
```


## Install

You can install `lolor` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install lolor;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y lolor -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y lolor_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y pgedge-17-lolor   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION lolor;
```



## Usage

> [lolor: Logical-replication-friendly replacement for PostgreSQL large objects](https://github.com/pgEdge/lolor)

Makes PostgreSQL large objects compatible with logical replication by storing them in non-catalog tables.

### Enabling

```sql
CREATE EXTENSION lolor;
```

Configure the node identifier in `postgresql.conf`:

```ini
lolor.node = 1  -- unique node ID (1 to 2^28)
```

Optionally adjust the search path:

```sql
SET search_path = lolor, "$user", public, pg_catalog;
```

### Large Object Operations

Once installed, the standard `lo_*` functions are redirected to use lolor's tables:

```sql
-- Create a large object
SELECT lo_create(0);

-- Import a file into a large object
SELECT lo_import('/path/to/file.bin');

-- Export a large object to a file
SELECT lo_export(oid, '/path/to/output.bin');

-- Open, read, write, seek, close
SELECT lo_open(oid, x'40000'::int);  -- INV_WRITE
SELECT lowrite(fd, 'data'::bytea);
SELECT loread(fd, 1024);
SELECT lo_close(fd);

-- Delete a large object
SELECT lo_unlink(oid);
```

### Replication Setup

Add lolor tables to your replication set:

```sql
-- For spock/pgedge replication
SELECT spock.repset_add_table('default', 'lolor.pg_largeobject');
SELECT spock.repset_add_table('default', 'lolor.pg_largeobject_metadata');
```

### Internal Tables

The extension manages large objects in:

- `lolor.pg_largeobject` - stores object data chunks
- `lolor.pg_largeobject_metadata` - stores object metadata

### Limitations

- Native PostgreSQL large object functionality cannot be used while lolor is active
- Migration of existing native large objects to lolor is not supported
- `ALTER LARGE OBJECT`, `GRANT ON LARGE OBJECT`, `COMMENT ON LARGE OBJECT`, and `REVOKE ON LARGE OBJECT` are not supported
- Requires PostgreSQL 16 or newer
