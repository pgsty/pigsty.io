---
title: "pg_duration"
linkTitle: "pg_duration"
description: "data type for representing durations"
weight: 3850
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jkosh44/pg_duration">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jkosh44/pg_duration</div>
    <div class="ext-card__desc">https://github.com/jkosh44/pg_duration</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_duration-1.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_duration-1.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_duration-1.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_duration`**](/ext/e/pg_duration) | `1.0.2` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3850  | [**`pg_duration`**](/ext/e/pg_duration) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) [`roaringbitmap`](/ext/e/roaringbitmap) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17" >}} | `pg_duration` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17" >}} | `pg_duration_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-duration` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_duration_18 pg_duration_18-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 24.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duration_18-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_duration_18 pg_duration_18-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duration_18-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_duration_18 pg_duration_18-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 23.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duration_18-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_duration_18 pg_duration_18-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duration_18-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_duration_18 pg_duration_18-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 23.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duration_18-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_duration_18 pg_duration_18-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duration_18-1.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~bookworm_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~bookworm_arm64.deb pigsty 1.0.2 28.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~trixie_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~trixie_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~jammy_amd64.deb pigsty 1.0.2 31.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~jammy_arm64.deb pigsty 1.0.2 30.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~noble_amd64.deb pigsty 1.0.2 30.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~noble_arm64.deb pigsty 1.0.2 30.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~resolute_amd64.deb pigsty 1.0.2 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PIGSTY~resolute_arm64.deb pigsty 1.0.2 30.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_duration_17 pg_duration_17-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 24.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duration_17-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_duration_17 pg_duration_17-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duration_17-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_duration_17 pg_duration_17-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 23.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duration_17-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_duration_17 pg_duration_17-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duration_17-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_duration_17 pg_duration_17-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 23.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duration_17-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_duration_17 pg_duration_17-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duration_17-1.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~bookworm_amd64.deb pigsty 1.0.2 29.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~bookworm_arm64.deb pigsty 1.0.2 28.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~trixie_amd64.deb pigsty 1.0.2 29.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~trixie_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~jammy_amd64.deb pigsty 1.0.2 32.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~jammy_arm64.deb pigsty 1.0.2 31.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~noble_amd64.deb pigsty 1.0.2 30.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~noble_arm64.deb pigsty 1.0.2 30.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~resolute_amd64.deb pigsty 1.0.2 30.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PIGSTY~resolute_arm64.deb pigsty 1.0.2 30.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_duration` using `pig build`:

```bash
pig build pkg pg_duration         # build RPM / DEB packages
```


## Install

You can install `pg_duration` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_duration;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_duration -v 18  # PG 18
pig ext install -y pg_duration -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_duration_18       # PG 18
dnf install -y pg_duration_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-duration   # PG 18
apt install -y postgresql-17-pg-duration   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_duration;
```




## Usage

> [pg_duration: ISO 8601 duration type for PostgreSQL](https://github.com/jkosh44/pg_duration)

The `pg_duration` extension provides a `duration` type for storing elapsed time as microseconds in 8 bytes, simpler and more consistently comparable than the built-in `interval` type.

```sql
CREATE EXTENSION pg_duration;
```

### Data Type

The `duration` type represents absolute elapsed time without calendar components (no months or days). Valid input accepts any PostgreSQL interval syntax that does not exceed hourly units.

```sql
SELECT '01:30:00'::duration;
SELECT '2 hours 30 minutes'::duration;
```

### Operators

- **Arithmetic**: `+`, `-` between durations; `*`, `/` by `float8`; unary `-`
- **Comparison**: `<`, `<=`, `>`, `>=`, `=`, `<>`

### Functions

```sql
-- Construct from components
SELECT make_duration(hours => 2, mins => 30, secs => 15.5);

-- Check for infinity
SELECT isfinite('01:00:00'::duration);

-- Truncate to precision
SELECT date_trunc('hour', '02:45:30'::duration);

-- Extract subfield
SELECT date_part('minute', '02:45:30'::duration);
SELECT extract_duration('hour', '02:45:30'::duration);
```

### Type Conversions

Durations cast implicitly to `interval`. Converting `interval` to `duration` requires explicit casting.

### Aggregates and Indexing

Standard aggregates (`avg`, `count`, `max`, `min`, `sum`) and both B-tree and hash indexes are supported.
