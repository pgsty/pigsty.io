---
title: "pg_nanotime"
linkTitle: "pg_nanotime"
description: "Nanosecond timestamp and fixed-duration interval types"
weight: 3870
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bunko666-cloud/pg_nanotime">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bunko666-cloud/pg_nanotime</div>
    <div class="ext-card__desc">https://github.com/bunko666-cloud/pg_nanotime</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_nanotime-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_nanotime-0.2.0.tar.gz</div>
    <div class="ext-card__desc">pg_nanotime-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_nanotime`**](/ext/e/pg_nanotime) | `0.2.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3870  | [**`pg_nanotime`**](/ext/e/pg_nanotime) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> 0.2.0 is a PGXN testing release for PG17-18. Adds nanointerval aggregates, abs and generate_series. Ordinary types need no preload; cross-backend global clocks require preload/restart, and state is lost at restart.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "17,18" >}} | `pg_nanotime` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `pg_nanotime_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-nanotime` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_nanotime_18 pg_nanotime_18-0.2.0-1PGSTY.el8.x86_64.rpm pigsty 0.2.0 107.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_nanotime_18-0.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_nanotime_18 pg_nanotime_18-0.2.0-1PGSTY.el8.aarch64.rpm pigsty 0.2.0 109.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_nanotime_18-0.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_nanotime_18 pg_nanotime_18-0.2.0-1PGSTY.el9.x86_64.rpm pigsty 0.2.0 111.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_nanotime_18-0.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_nanotime_18 pg_nanotime_18-0.2.0-1PGSTY.el9.aarch64.rpm pigsty 0.2.0 113.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_nanotime_18-0.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_nanotime_18 pg_nanotime_18-0.2.0-1PGSTY.el10.x86_64.rpm pigsty 0.2.0 111.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_nanotime_18-0.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_nanotime_18 pg_nanotime_18-0.2.0-1PGSTY.el10.aarch64.rpm pigsty 0.2.0 114.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_nanotime_18-0.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~bookworm_amd64.deb pigsty 0.2.0 102.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~bookworm_arm64.deb pigsty 0.2.0 104.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~trixie_amd64.deb pigsty 0.2.0 102.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~trixie_arm64.deb pigsty 0.2.0 103.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~jammy_amd64.deb pigsty 0.2.0 110.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~jammy_arm64.deb pigsty 0.2.0 113.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~noble_amd64.deb pigsty 0.2.0 106.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~noble_arm64.deb pigsty 0.2.0 110.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~resolute_amd64.deb pigsty 0.2.0 106.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-nanotime postgresql-18-pg-nanotime_0.2.0-1PGSTY~resolute_arm64.deb pigsty 0.2.0 104.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-nanotime/postgresql-18-pg-nanotime_0.2.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_nanotime_17 pg_nanotime_17-0.2.0-1PGSTY.el8.x86_64.rpm pigsty 0.2.0 107.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_nanotime_17-0.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_nanotime_17 pg_nanotime_17-0.2.0-1PGSTY.el8.aarch64.rpm pigsty 0.2.0 109.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_nanotime_17-0.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_nanotime_17 pg_nanotime_17-0.2.0-1PGSTY.el9.x86_64.rpm pigsty 0.2.0 111.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_nanotime_17-0.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_nanotime_17 pg_nanotime_17-0.2.0-1PGSTY.el9.aarch64.rpm pigsty 0.2.0 113.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_nanotime_17-0.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_nanotime_17 pg_nanotime_17-0.2.0-1PGSTY.el10.x86_64.rpm pigsty 0.2.0 111.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_nanotime_17-0.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_nanotime_17 pg_nanotime_17-0.2.0-1PGSTY.el10.aarch64.rpm pigsty 0.2.0 114.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_nanotime_17-0.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~bookworm_amd64.deb pigsty 0.2.0 102.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~bookworm_arm64.deb pigsty 0.2.0 104.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~trixie_amd64.deb pigsty 0.2.0 102.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~trixie_arm64.deb pigsty 0.2.0 103.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~jammy_amd64.deb pigsty 0.2.0 115.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~jammy_arm64.deb pigsty 0.2.0 118.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~noble_amd64.deb pigsty 0.2.0 106.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~noble_arm64.deb pigsty 0.2.0 110.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~resolute_amd64.deb pigsty 0.2.0 106.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-nanotime postgresql-17-pg-nanotime_0.2.0-1PGSTY~resolute_arm64.deb pigsty 0.2.0 104.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-nanotime/postgresql-17-pg-nanotime_0.2.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_nanotime` using `pig build`:

```bash
pig build pkg pg_nanotime         # build RPM / DEB packages
```


## Install

You can install `pg_nanotime` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_nanotime;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_nanotime -v 18  # PG 18
pig ext install -y pg_nanotime -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_nanotime_18       # PG 18
dnf install -y pg_nanotime_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-nanotime   # PG 18
apt install -y postgresql-17-pg-nanotime   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION pg_nanotime;
```

## Usage

Sources:

- [0.2.0 README](https://github.com/bunko666-cloud/pg_nanotime/blob/f7583f4609223a53818a7841d5bc52903305ed2f/README.md)
- [0.2.0 control file](https://github.com/bunko666-cloud/pg_nanotime/blob/f7583f4609223a53818a7841d5bc52903305ed2f/pg_nanotime.control)
- [0.2.0 SQL objects](https://github.com/bunko666-cloud/pg_nanotime/blob/f7583f4609223a53818a7841d5bc52903305ed2f/sql/pg_nanotime--0.2.0.sql)
- [Technical reference](https://github.com/bunko666-cloud/pg_nanotime/blob/f7583f4609223a53818a7841d5bc52903305ed2f/docs/TECHNICAL.md)
- [0.2.0 changelog](https://github.com/bunko666-cloud/pg_nanotime/blob/f7583f4609223a53818a7841d5bc52903305ed2f/CHANGELOG.md)
- [PGXN release metadata](https://github.com/bunko666-cloud/pg_nanotime/blob/f7583f4609223a53818a7841d5bc52903305ed2f/META.json)

`pg_nanotime` 0.2.0 provides nanosecond timestamp and interval types on PostgreSQL 17–18 for event timestamps, latency measurements and externally supplied nanosecond data. Nanosecond storage precision does not imply nanosecond clock accuracy.

### Core Workflow

```sql
CREATE EXTENSION pg_nanotime;
CREATE TABLE events (at nanotimestamptz DEFAULT clock_ns(), body text);
INSERT INTO events (body) VALUES ('received');
SELECT at, at::timestamptz FROM events;
```

| Type | Storage and meaning |
| --- | --- |
| `nanotimestamptz` | 16 bytes; an instant displayed in the session time zone, with PostgreSQL's full timestamp range |
| `nanotimestamp` | 16 bytes; a timestamp without a time zone |
| `nanotimestamptz8` | 8 bytes; signed Unix nanoseconds with a narrower 1677–2262 range |
| `nanointerval` | 16 bytes; a fixed elapsed duration, without calendar months |

Conversion to built-in timestamps floors to microseconds, including before the Unix epoch. Casting an instant to bigint yields Unix nanoseconds and fails if the result exceeds bigint range. Do not use double precision to transport large integer nanosecond values.

### Durations, Aggregates and Series

Subtracting timestamps produces a nanosecond duration. Version 0.2.0 adds interval aggregates and series generation:

```sql
WITH samples(ns) AS (VALUES (1250::bigint), (2751::bigint))
SELECT sum(nanointerval_from_ns(ns)) AS total,
       avg(nanointerval_from_ns(ns)) AS mean,
       abs(nanointerval_from_ns(-1250::bigint)) AS magnitude
FROM samples;

SELECT *
FROM generate_series(
  '2026-10-24 00:00:00+00'::nanotimestamptz,
  '2026-10-24 00:00:00.000000003+00'::nanotimestamptz,
  nanointerval_from_ns(1::bigint)
);
```

`sum` and `avg` accumulate exactly, ignore NULL values and return NULL for no input; overflow raises an error. The average rounds to the nearest nanosecond, with ties away from zero. Series include a reachable stop value, support negative steps and reject a zero step.

Use `nanointerval_from_ns(bigint)` for exact integer input and `nanointerval_from_ns(numeric)` for larger values; fractional input rounds to nanoseconds. The double-precision overload becomes inexact beyond 2^53 nanoseconds.

Other useful objects include `time_bucket_ns` for fixed-duration buckets, `extract_ns` for precise fields, `date_trunc` and `timezone`. Explicitly type duration literals: an untyped string in timestamp arithmetic may resolve to PostgreSQL's calendar-aware interval. Timestamp types support B-tree, hash and BRIN minmax indexes; the interval type supports B-tree and hash.

### Clocks and Boundaries

`clock_ns()` reads the wall clock on each call. `now_ns()` caches an extension clock reading for the transaction and `statement_ns()` for the statement; these readings are not the same sampling instant as PostgreSQL's built-in timestamps. Ordinary clocks can move backwards with the system clock.

`clock_ns_monotonic()` produces strictly increasing values within one backend. `clock_ns_global()` does so across backends in one PostgreSQL instance and requires this configuration followed by a server restart:

```ini
shared_preload_libraries = 'pg_nanotime'
```

Preserve other libraries already in the setting. Ordinary types and clocks do not require preloading. Global monotonic state is in shared memory and does not survive restart; it is not a durable sequence or distributed ordering mechanism. Install as a superuser. The extension is relocatable and is not marked trusted.

`nanotime_clock_status()` reports clock and monotonic-state diagnostics. `nanotime.clock_source` defaults to `realtime`; the optional `tai` source depends on the operating system's configured TAI offset. TAI values still use UTC-style output, so do not mix these sources in the same column.

### Upgrade and Migration

Upstream marks 0.2.0 as a PGXN testing release. After replacing library and SQL files, update each database:

```sql
ALTER EXTENSION pg_nanotime UPDATE TO '0.2.0';
```

The column-conversion helper `nanotime_migrate_column` defaults to the 16-byte type, even for a bigint source, and changes the column with ALTER TABLE, rebuilding its indexes. Review the conversion and locking cost before running it. TimescaleDB integration is optional; its integer-time and continuous-aggregate requirements are separate from merely storing nanosecond timestamps.
