---
title: "pg_track_optimizer"
linkTitle: "pg_track_optimizer"
description: "Track planning decisions in comparison with  execution reality"
weight: 6270
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/danolivo/pg_track_optimizer">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">danolivo/pg_track_optimizer</div>
    <div class="ext-card__desc">https://github.com/danolivo/pg_track_optimizer</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_track_optimizer-0.9.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_track_optimizer-0.9.2.tar.gz</div>
    <div class="ext-card__desc">pg_track_optimizer-0.9.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_track_optimizer`**](/ext/e/pg_track_optimizer) | `0.9.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6270  | [**`pg_track_optimizer`**](/ext/e/pg_track_optimizer) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`online_advisor`](/ext/e/online_advisor) [`pg_qualstats`](/ext/e/pg_qualstats) [`hypopg`](/ext/e/hypopg) [`index_advisor`](/ext/e/index_advisor) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`plan_filter`](/ext/e/plan_filter) [`pg_relusage`](/ext/e/pg_relusage) [`pg_strom`](/ext/e/pg_strom) [`pg_orca`](/ext/e/pg_orca) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.2` | {{< pgvers "18,17" >}} | `pg_track_optimizer` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.2` | {{< pgvers "18,17" >}} | `pg_track_optimizer_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.2` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-track-optimizer` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_track_optimizer_18 pg_track_optimizer_18-0.9.2-1PIGSTY.el8.x86_64.rpm pigsty 0.9.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_track_optimizer_18-0.9.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_track_optimizer_18 pg_track_optimizer_18-0.9.2-1PIGSTY.el8.aarch64.rpm pigsty 0.9.2 34.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_track_optimizer_18-0.9.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_track_optimizer_18 pg_track_optimizer_18-0.9.2-1PIGSTY.el9.x86_64.rpm pigsty 0.9.2 35.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_track_optimizer_18-0.9.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_track_optimizer_18 pg_track_optimizer_18-0.9.2-1PIGSTY.el9.aarch64.rpm pigsty 0.9.2 35.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_track_optimizer_18-0.9.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_track_optimizer_18 pg_track_optimizer_18-0.9.2-1PIGSTY.el10.x86_64.rpm pigsty 0.9.2 35.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_track_optimizer_18-0.9.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_track_optimizer_18 pg_track_optimizer_18-0.9.2-1PIGSTY.el10.aarch64.rpm pigsty 0.9.2 35.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_track_optimizer_18-0.9.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_amd64.deb pigsty 0.9.2 58.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_arm64.deb pigsty 0.9.2 57.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~trixie_amd64.deb pigsty 0.9.2 58.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~trixie_arm64.deb pigsty 0.9.2 57.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~jammy_amd64.deb pigsty 0.9.2 63.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~jammy_arm64.deb pigsty 0.9.2 62.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~noble_amd64.deb pigsty 0.9.2 60.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~noble_arm64.deb pigsty 0.9.2 60.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~resolute_amd64.deb pigsty 0.9.2 60.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-track-optimizer postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~resolute_arm64.deb pigsty 0.9.2 60.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-track-optimizer/postgresql-18-pg-track-optimizer_0.9.2-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_track_optimizer_17 pg_track_optimizer_17-0.9.2-1PIGSTY.el8.x86_64.rpm pigsty 0.9.2 35.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_track_optimizer_17-0.9.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_track_optimizer_17 pg_track_optimizer_17-0.9.2-1PIGSTY.el8.aarch64.rpm pigsty 0.9.2 34.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_track_optimizer_17-0.9.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_track_optimizer_17 pg_track_optimizer_17-0.9.2-1PIGSTY.el9.x86_64.rpm pigsty 0.9.2 35.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_track_optimizer_17-0.9.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_track_optimizer_17 pg_track_optimizer_17-0.9.2-1PIGSTY.el9.aarch64.rpm pigsty 0.9.2 35.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_track_optimizer_17-0.9.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_track_optimizer_17 pg_track_optimizer_17-0.9.2-1PIGSTY.el10.x86_64.rpm pigsty 0.9.2 35.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_track_optimizer_17-0.9.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_track_optimizer_17 pg_track_optimizer_17-0.9.2-1PIGSTY.el10.aarch64.rpm pigsty 0.9.2 35.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_track_optimizer_17-0.9.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_amd64.deb pigsty 0.9.2 58.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_arm64.deb pigsty 0.9.2 57.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~trixie_amd64.deb pigsty 0.9.2 58.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~trixie_arm64.deb pigsty 0.9.2 57.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~jammy_amd64.deb pigsty 0.9.2 69.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~jammy_arm64.deb pigsty 0.9.2 69.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~noble_amd64.deb pigsty 0.9.2 60.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~noble_arm64.deb pigsty 0.9.2 60.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~resolute_amd64.deb pigsty 0.9.2 60.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-track-optimizer postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~resolute_arm64.deb pigsty 0.9.2 60.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-track-optimizer/postgresql-17-pg-track-optimizer_0.9.2-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_track_optimizer` using `pig build`:

```bash
pig build pkg pg_track_optimizer         # build RPM / DEB packages
```


## Install

You can install `pg_track_optimizer` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_track_optimizer;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_track_optimizer -v 18  # PG 18
pig ext install -y pg_track_optimizer -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_track_optimizer_18       # PG 18
dnf install -y pg_track_optimizer_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-track-optimizer   # PG 18
apt install -y postgresql-17-pg-track-optimizer   # PG 17
```


**Preload**:

```bash
shared_preload_libraries = 'pg_track_optimizer';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_track_optimizer;
```




## Usage

> [pg_track_optimizer: detect suboptimal query plans via cardinality estimation errors](https://github.com/danolivo/pg_track_optimizer)

pg_track_optimizer automatically detects queries with poor cardinality estimates by comparing planner predictions to actual execution results. It calculates multiple error metrics using logarithmic scale.

### Enable Tracking

```sql
-- Track only problematic queries in production
SET pg_track_optimizer.mode = 'normal';

-- Track all queries during debugging
SET pg_track_optimizer.mode = 'forced';

-- Log EXPLAIN for queries exceeding error threshold
SET pg_track_optimizer.log_min_error = 2.0;
```

### Viewing Tracked Queries

```sql
SELECT queryid, query,
       avg_avg, avg_min, avg_max,
       rms_avg, rms_min, rms_max,
       time_avg, blks_avg, nexecs
FROM pg_track_optimizer
ORDER BY avg_avg DESC
LIMIT 10;

-- Using the RStats type directly
SELECT queryid, query,
       wca_error -> 'mean' AS avg_wca_error,
       blks_accessed -> 'mean' AS avg_blocks
FROM pg_track_optimizer()
WHERE blks_accessed -> 'mean' > 1000
ORDER BY wca_error -> 'mean' DESC;
```

### Error Metrics

| Metric | Description |
|--------|-------------|
| `avg_error` | Simple average of log-scale errors across plan nodes |
| `rms_error` | Root Mean Square, emphasizes large errors |
| `twa_error` | Time-Weighted Average, highlights slow nodes |
| `wca_error` | Cost-Weighted Average, highlights high-cost nodes |
| `f_join_filter` | JOIN filtering overhead factor |
| `f_scan_filter` | Scan filtering overhead factor |

### Managing Statistics

```sql
-- Save statistics to disk
SELECT pg_track_optimizer_flush();

-- Clear all tracked statistics
SELECT pg_track_optimizer_reset();

-- Check extension status
SELECT * FROM pg_track_optimizer_status;
```

### Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `pg_track_optimizer.mode` | `disabled` | `disabled`, `normal`, `forced` |
| `pg_track_optimizer.log_min_error` | (none) | Error threshold for logging EXPLAIN |
| `pg_track_optimizer.hash_mem` | (default) | Shared memory limit in KB |
| `pg_track_optimizer.auto_flush` | `on` | Auto-save stats on backend shutdown |
