---
title: "pg_orca"
linkTitle: "pg_orca"
description: "ORCA query optimizer as a PostgreSQL extension"
weight: 2540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/quantumiodb/pgorca">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">quantumiodb/pgorca</div>
    <div class="ext-card__desc">https://github.com/quantumiodb/pgorca</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_orca-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_orca-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_orca-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_orca`**](/ext/e/pg_orca) | `1.0.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2540  | [**`pg_orca`**](/ext/e/pg_orca) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_hint_plan`](/ext/e/pg_hint_plan) [`hypopg`](/ext/e/hypopg) [`index_advisor`](/ext/e/index_advisor) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG18 only; use session_preload_libraries=pg_orca for automatic planner hook loading.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18" >}} | `pg_orca` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18" >}} | `pg_orca_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18" >}} | `postgresql-$v-pg-orca` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_orca_18 pg_orca_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 2.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_orca_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_orca_18 pg_orca_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_orca_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_orca_18 pg_orca_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 2.2MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_orca_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_orca_18 pg_orca_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_orca_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_orca_18 pg_orca_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 2.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_orca_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_orca_18 pg_orca_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 1.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_orca_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 1.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 1.5MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 1.7MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 1.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 1.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 1.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 1.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 1.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 1.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-orca postgresql-18-pg-orca_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 1.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-orca/postgresql-18-pg-orca_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_orca` using `pig build`:

```bash
pig build pkg pg_orca         # build RPM / DEB packages
```


## Install

You can install `pg_orca` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_orca;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_orca -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_orca_18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-orca   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_orca';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_orca;
```




## Usage

Sources: [pgorca README](https://github.com/quantumiodb/pgorca), [entrypoint/GUC source](https://github.com/quantumiodb/pgorca/blob/main/pg_orca.cpp), [control file](https://github.com/quantumiodb/pgorca/blob/main/pg_orca.control).

`pg_orca` plugs the ORCA cost-based optimizer from the Greenplum/Apache Cloudberry lineage into a standard PostgreSQL 18 server. The upstream README describes this project as PostgreSQL 18-only, and the local package metadata also marks it for PG18 only.

### Enable ORCA For A Session

`CREATE EXTENSION` loads the library in the current session, so the `pg_orca.*` GUCs and planner hook are available immediately:

```sql
CREATE EXTENSION pg_orca;

SET pg_orca.enable_orca = on;

EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 42
  AND created_at >= now() - interval '30 days';
```

If ORCA cannot handle a query, the README says it falls back to the standard PostgreSQL planner automatically. Turn on fallback logging while validating a workload:

```sql
SET pg_orca.trace_fallback = on;
```

### Preload For New Connections

For automatic planner-hook loading in later sessions, upstream recommends `session_preload_libraries`, not `shared_preload_libraries`:

```sql
ALTER DATABASE mydb SET session_preload_libraries = 'pg_orca';
ALTER DATABASE mydb SET pg_orca.enable_orca = on;
```

Existing sessions are unaffected until they reconnect. If another session preload library is already configured, include both values explicitly:

```sql
ALTER DATABASE mydb
SET session_preload_libraries = 'pg_orca,pg_stat_statements';
```

Role-local and cluster-wide scopes are also valid:

```sql
ALTER ROLE bench SET session_preload_libraries = 'pg_orca';

ALTER SYSTEM SET session_preload_libraries = 'pg_orca';
SELECT pg_reload_conf();
```

### Tuning And Diagnostics

The README documents these main GUCs:

- `pg_orca.enable_orca`: enable ORCA; default `off`.
- `pg_orca.trace_fallback`: log fallback to the standard planner; default `off`.
- `optimizer_segments`: segment count for costing; default `1`.
- `optimizer_sort_factor`: sort cost scaling; default `1.0`.
- `optimizer_metadata_caching`: cache relation metadata; default `on`.
- `optimizer_mdcache_size`: metadata cache size in KB; default `16384`.
- `optimizer_search_strategy_path`: optional custom search strategy XML path.

The entrypoint source also defines additional ORCA tuning and debug GUCs such as `optimizer_join_order`, `pg_orca.join_order_dynamic_threshold`, `pg_orca.cost_model`, and `optimizer_print_*`. Treat those as workload/debug knobs and validate plans before keeping them in a persistent database setting.

### Caveats

- PostgreSQL 18 only.
- Use `session_preload_libraries = 'pg_orca'` for automatic loading in new sessions.
- ORCA is disabled by default after loading; set `pg_orca.enable_orca = on`.
- Fallback to the PostgreSQL planner is expected for unsupported queries; enable `pg_orca.trace_fallback` when checking coverage.
