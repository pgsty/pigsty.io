---
title: "pg_trickle"
linkTitle: "pg_trickle"
description: "Streaming tables and differential view maintenance for PostgreSQL 18"
weight: 2860
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/trickle-labs/pg-trickle">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">trickle-labs/pg-trickle</div>
    <div class="ext-card__desc">https://github.com/trickle-labs/pg-trickle</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_trickle-0.108.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_trickle-0.108.1.tar.gz</div>
    <div class="ext-card__desc">pg_trickle-0.108.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_trickle`**](/ext/e/pg_trickle) | `0.108.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2860  | [**`pg_trickle`**](/ext/e/pg_trickle) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgtrickle` |
{.ext-table}

| **Related** | [`pg_ivm`](/ext/e/pg_ivm) [`pg_incremental`](/ext/e/pg_incremental) [`timescaledb`](/ext/e/timescaledb) [`pg_duckdb`](/ext/e/pg_duckdb) [`pg_partman`](/ext/e/pg_partman) [`pg_ttl_index`](/ext/e/pg_ttl_index) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`pg_lake`](/ext/e/pg_lake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 only; requires preload and ships pg_trickle_dump. Follow the packaged upgrade guide.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.108.1` | {{< pgvers "18" >}} | `pg_trickle` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.108.1` | {{< pgvers "18" >}} | `pg_trickle_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.108.1` | {{< pgvers "18" >}} | `postgresql-$v-pg-trickle` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.108.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_trickle_18 pg_trickle_18-0.108.1-1PGSTY.el8.x86_64.rpm pigsty 0.108.1 6.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_trickle_18-0.108.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_trickle_18 pg_trickle_18-0.108.1-1PGSTY.el8.aarch64.rpm pigsty 0.108.1 5.4MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_trickle_18-0.108.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_trickle_18 pg_trickle_18-0.108.1-1PGSTY.el9.x86_64.rpm pigsty 0.108.1 6.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_trickle_18-0.108.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_trickle_18 pg_trickle_18-0.108.1-1PGSTY.el9.aarch64.rpm pigsty 0.108.1 5.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_trickle_18-0.108.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_trickle_18 pg_trickle_18-0.108.1-1PGSTY.el10.x86_64.rpm pigsty 0.108.1 6.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_trickle_18-0.108.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_trickle_18 pg_trickle_18-0.108.1-1PGSTY.el10.aarch64.rpm pigsty 0.108.1 5.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_trickle_18-0.108.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~bookworm_amd64.deb pigsty 0.108.1 5.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~bookworm_arm64.deb pigsty 0.108.1 4.6MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~trixie_amd64.deb pigsty 0.108.1 5.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~trixie_arm64.deb pigsty 0.108.1 4.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~jammy_amd64.deb pigsty 0.108.1 6.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~jammy_arm64.deb pigsty 0.108.1 5.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~noble_amd64.deb pigsty 0.108.1 6.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~noble_arm64.deb pigsty 0.108.1 5.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~resolute_amd64.deb pigsty 0.108.1 6.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-trickle postgresql-18-pg-trickle_0.108.1-1PGSTY~resolute_arm64.deb pigsty 0.108.1 5.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-trickle/postgresql-18-pg-trickle_0.108.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_trickle` using `pig build`:

```bash
pig build pkg pg_trickle         # build RPM / DEB packages
```


## Install

You can install `pg_trickle` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_trickle;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_trickle -v 18  # PG 18
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_trickle_18       # PG 18
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-trickle   # PG 18
```


**Preload**:

```bash
shared_preload_libraries = 'pg_trickle';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_trickle;
```

## Usage

Sources:

- [sql/pg_trickle--0.108.0--0.108.1.sql](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/sql/pg_trickle--0.108.0--0.108.1.sql)
- [Version 0.108.1 README](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/README.md)
- [SQL reference](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/docs/SQL_REFERENCE.md)
- [Configuration](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/docs/CONFIGURATION.md)
- [GUC catalog](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/docs/GUC_CATALOG.md)
- [Upgrade guide](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/docs/UPGRADING.md)
- [Control file](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/pg_trickle.control)
- [0.107.0 to 0.108.0 migration](https://github.com/trickle-labs/pg-trickle/blob/v0.108.1/sql/pg_trickle--0.107.0--0.108.0.sql)

`pg_trickle` 0.108.1 maintains stream tables on PostgreSQL 18: ordinary queryable tables derived from a SQL query, refreshed incrementally when supported or recomputed in full. Tables may depend on other stream tables, forming a dependency graph. Same-transaction maintenance is also available.

### Enable the Extension

Append `pg_trickle` to `shared_preload_libraries` and restart PostgreSQL, then install as a superuser. Size the background-worker pool for the deployment; the upstream example uses eight workers.

```ini
shared_preload_libraries = 'pg_trickle'
max_worker_processes = 8
```

```sql
CREATE EXTENSION pg_trickle;
```

The default `pg_trickle.cdc_mode` is `trigger`: transactional change capture needs neither logical WAL nor replication slots. Opt-in `auto` starts with triggers and can move eligible sources to receipt-backed WAL capture. Explicit `wal` also falls back to triggers when admission or logical-decoding prerequisites fail. These choices have different write overhead and operational requirements.

### Create and Refresh a Stream Table

```sql
CREATE TABLE orders (id bigint PRIMARY KEY, region text, amount numeric);
SELECT pgtrickle.create_stream_table(
    name => 'regional_totals',
    query => 'SELECT region, SUM(amount) AS total, COUNT(*) AS cnt FROM orders GROUP BY region',
    schedule => '30s',
    refresh_mode => 'AUTO'
);
INSERT INTO orders VALUES (1, 'east', 10);
SELECT pgtrickle.refresh_stream_table('regional_totals');
SELECT * FROM regional_totals;
```

`initialize` defaults to true, so creation populates the result. `schedule` accepts durations, cron expressions such as `@hourly`, or the default `calculated` schedule inherited from downstream dependents. `AUTO` selects differential maintenance where possible and can fall back to full refresh. `DIFFERENTIAL` rejects queries it cannot maintain incrementally; `FULL` truncates and reloads the result.

`IMMEDIATE` uses statement-level triggers inside the base-table write transaction. It does not use WAL capture and rejects an effective explicit WAL request. Use the documented query-admission rules for joins, aggregates, subqueries, recursive queries, and other supported shapes; support is not a promise that every SQL expression is differentiable.

### Lifecycle and Monitoring

`pgtrickle.alter_stream_table` changes definitions or refresh policy, and `pgtrickle.drop_stream_table` removes managed tables. `pgtrickle.repair_stream_table` repairs missing capture infrastructure and resets maintenance state after events such as restore or operator DDL. Use lifecycle APIs instead of direct writes or foreign keys against managed stream tables.

```sql
SELECT * FROM pgtrickle.pgt_status();
SELECT * FROM pgtrickle.health_check();
SELECT * FROM pgtrickle.dependency_tree();
SELECT * FROM pgtrickle.explain_st('regional_totals');
```

Lifecycle functions require explicit execution grants and ownership checks; administrator-wide operations are restricted to the extension owner or superuser. Arbitrary-SQL helpers preserve caller privileges. Capture triggers add work to source writes, and refresh failures can accumulate change buffers, so monitor health and storage instead of treating a schedule as a hard freshness guarantee.

### External Coordination and Output Deltas

`orchestration_mode` selects `MANAGED` scheduling or `EXTERNAL` coordination. External coordination cannot be combined with immediate maintenance. `pgtrickle.integration_capabilities` advertises the available contracts; version 0.108.0 exposes Graph V1 1.2 and Delta V1 1.1.

`pgtrickle.output_delta_consumer_status` reports consumers, while `pgtrickle.validate_output_delta_consumer` checks whether a consumer can resume. `pgtrickle.request_output_delta_resnapshot`, `pgtrickle.begin_output_delta_resnapshot`, and `pgtrickle.ack_output_delta_resnapshot` manage rebuilding a baseline. A resnapshot is fenced by database-instance identity, output-contract digest, and row-identity version. Follow the exact SQL reference signatures and acknowledgement protocol before advancing external delivery.

### Upgrade to 0.108.1

Install the new library and extension files before applying the packaged migration:

```sql
ALTER EXTENSION pg_trickle UPDATE TO '0.108.1';
SELECT * FROM pgtrickle.output_delta_consumer_status();
```

The upgrade preserves consumers, cursors, batches, and typed payload while adding resnapshot fences. A 0.106.1 installation can traverse the packaged 0.107.0 migration. Validate every consumer before resuming delivery; `INVALIDATED` or `RESNAPSHOT_REQUIRED` requires a new acknowledged baseline. Older releases through 0.105.2 had documented differential-result bugs for certain query shapes; upgrading does not automatically repair previously materialized rows. Use the upgrade guide’s comparison and repair procedure where applicable.

### Version 0.108.1

This patch keeps downstream `IMMEDIATE` tables current after upstream FULL refresh or truncation, recovers missing change buffers, and fixes unintended suspension after source schema changes and scalar-subquery differential refresh. PostgreSQL 18.6 support is added. After installing matching files run `ALTER EXTENSION pg_trickle UPDATE TO '0.108.1'` and verify dependent stream-table results and capture health.
