---
title: "pgfr_analyze"
linkTitle: "pgfr_analyze"
description: "Reporting and analysis functions for pgfr_record"
weight: 6061
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/dventimisupabase/pg_flight_recorder">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">dventimisupabase/pg_flight_recorder</div>
    <div class="ext-card__desc">https://github.com/dventimisupabase/pg_flight_recorder</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_flight_recorder-2.29.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_flight_recorder-2.29.2.tar.gz</div>
    <div class="ext-card__desc">pg_flight_recorder-2.29.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_flight_recorder`**](/ext/e/pgfr_record) | `2.29.2` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6060  | [**`pgfr_record`**](/ext/e/pgfr_record) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgfr_record` |
| 6061  | [**`pgfr_analyze`**](/ext/e/pgfr_analyze) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgfr_analyze` |
{.ext-table}

| **Related** | [`pgfr_record`](/ext/e/pgfr_record) [`pg_profile`](/ext/e/pg_profile) [`pg_stat_monitor`](/ext/e/pg_stat_monitor) [`powa`](/ext/e/powa) [`pg_stat_statements`](/ext/e/pg_stat_statements) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`pg_store_plans`](/ext/e/pg_store_plans) [`pg_tracing`](/ext/e/pg_tracing) [`pg_stat_backtrace`](/ext/e/pg_stat_backtrace) [`pg_stat_log`](/ext/e/pg_stat_log) [`pg_wait_sampling`](/ext/e/pg_wait_sampling) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Secondary extension shipped by pg_flight_recorder; requires pgfr_record.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.29.2` | {{< pgvers "18,17,16,15" >}} | `pg_flight_recorder` | `pgfr_record` |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.29.2` | {{< pgvers "18,17,16,15" >}} | `pg_flight_recorder_$v` | `pg_cron_$v` |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.29.2` | {{< pgvers "18,17,16,15" >}} | `postgresql-$v-pg-flight-recorder` | `postgresql-$v-cron` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | AVAIL PIGSTY 2.29.2 1 | N/A PIGSTY - 0 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_flight_recorder` using `pig build`:

```bash
pig build pkg pg_flight_recorder         # build RPM / DEB packages
```


## Install

You can install `pg_flight_recorder` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_flight_recorder;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_flight_recorder -v 18  # PG 18
pig ext install -y pg_flight_recorder -v 17  # PG 17
pig ext install -y pg_flight_recorder -v 16  # PG 16
pig ext install -y pg_flight_recorder -v 15  # PG 15
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_flight_recorder_18       # PG 18
dnf install -y pg_flight_recorder_17       # PG 17
dnf install -y pg_flight_recorder_16       # PG 16
dnf install -y pg_flight_recorder_15       # PG 15
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-flight-recorder   # PG 18
apt install -y postgresql-17-pg-flight-recorder   # PG 17
apt install -y postgresql-16-pg-flight-recorder   # PG 16
apt install -y postgresql-15-pg-flight-recorder   # PG 15
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgfr_analyze CASCADE;  -- requires: pgfr_record
```

## Usage

Sources:

- [pgfr_analyze v2.29.2 README](https://github.com/dventimisupabase/pg_flight_recorder/blob/v2.29.2/pgfr_analyze/README.md)
- [pgfr_analyze control file](https://github.com/dventimisupabase/pg_flight_recorder/blob/v2.29.2/pgfr_analyze/extension.control)
- [pg_flight_recorder v2.29.2 reference](https://github.com/dventimisupabase/pg_flight_recorder/blob/v2.29.2/REFERENCE.md)
- [v2.29.2 release notes](https://github.com/dventimisupabase/pg_flight_recorder/releases/tag/v2.29.2)

pgfr_analyze is the read-oriented analysis half of PostgreSQL Flight Recorder. It interprets history captured by pgfr_record to compare periods, summarize waits, assemble incident timelines, detect regressions, and estimate blast radius. Install it after pgfr_record and use it for diagnosis rather than collection.

### Install the Analysis Layer

    CREATE EXTENSION pg_cron;
    CREATE EXTENSION pgfr_record;
    CREATE EXTENSION pgfr_analyze;
    SELECT pgfr_record.enable();

pgfr_analyze depends on recorder objects and has no useful history until pgfr_record has collected samples. It does not require its own background worker.

### Start an Incident Investigation

Summarize what happened around a known timestamp:

    SELECT *
    FROM pgfr_analyze.what_happened_at(
      now() - interval '15 minutes'
    );

Build an ordered incident view over a period:

    SELECT *
    FROM pgfr_analyze.incident_timeline(
      now() - interval '30 minutes',
      now()
    );

Compare a suspect period with a baseline using compare, then narrow the result with wait_summary or anomaly_report. Always inspect the installed function signatures with psql or pg_get_function_arguments because optional parameters can change between releases.

### Analysis Index

- compare: contrast metrics across baseline and incident windows.
- wait_summary: aggregate sampled wait events.
- report and anomaly_report: produce broad or anomaly-focused summaries.
- what_happened_at: inspect observations around one timestamp.
- incident_timeline: order notable events over a range.
- detect_regressions and detect_query_storms: flag worsening behavior or query bursts.
- blast_radius: identify affected sessions or workloads.
- capacity_summary and capacity_report: summarize capacity-related signals.
- configuration analysis: relate relevant setting changes to the period.

### Interpretation Workflow

1. Confirm pgfr_record.health_check() and the available sample interval.
2. Choose explicit baseline and incident windows with comparable workload.
3. Use compare and wait_summary to locate the dominant change.
4. Correlate activity, locks, replication, vacuum, and configuration evidence.
5. Validate hypotheses against PostgreSQL logs, query plans, application telemetry, and host metrics.

### Caveats

- Results are observations and heuristics, not proof of causality. Sparse sampling can miss short events.
- Counter resets, extension upgrades, restarts, retention gaps, and workload seasonality can distort comparisons.
- Some findings are richer when pg_stat_statements is enabled and sufficiently sized.
- Access to analysis output can expose query text and operational metadata; restrict privileges accordingly.
- v2.29.2 mainly improves managed-service scheduling behavior in pgfr_record. It does not replace the need to verify that collection jobs actually ran.
