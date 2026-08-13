---
title: "pg_pathcheck"
linkTitle: "pg_pathcheck"
description: "Validate planner Path trees for freed or corrupt memory"
weight: 5250
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/danolivo/pg_pathcheck">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">danolivo/pg_pathcheck</div>
    <div class="ext-card__desc">https://github.com/danolivo/pg_pathcheck</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_pathcheck-0.9.1-pg17-18.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_pathcheck-0.9.1-pg17-18.tar.gz</div>
    <div class="ext-card__desc">pg_pathcheck-0.9.1-pg17-18.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_pathcheck`**](/ext/e/pg_pathcheck) | `0.9.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5250  | [**`pg_pathcheck`**](/ext/e/pg_pathcheck) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_show_plans`](/ext/e/pg_show_plans) [`pg_overexplain`](/ext/e/pg_overexplain) [`pg_stat_plans`](/ext/e/pg_stat_plans) [`auto_explain`](/ext/e/auto_explain) [`explain_ui`](/ext/e/explain_ui) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`plan_filter`](/ext/e/plan_filter) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> preload-only module; no CREATE EXTENSION objects; pg17-18 branch


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.1` | {{< pgvers "18,17" >}} | `pg_pathcheck` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.1` | {{< pgvers "18,17" >}} | `pg_pathcheck_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.9.1` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-pathcheck` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.9.1 1 | AVAIL PIGSTY 0.9.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_pathcheck_18 pg_pathcheck_18-0.9.1-1PIGSTY.el8.x86_64.rpm pigsty 0.9.1 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pathcheck_18-0.9.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_pathcheck_18 pg_pathcheck_18-0.9.1-1PIGSTY.el8.aarch64.rpm pigsty 0.9.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pathcheck_18-0.9.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_pathcheck_18 pg_pathcheck_18-0.9.1-1PIGSTY.el9.x86_64.rpm pigsty 0.9.1 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pathcheck_18-0.9.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_pathcheck_18 pg_pathcheck_18-0.9.1-1PIGSTY.el9.aarch64.rpm pigsty 0.9.1 29.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pathcheck_18-0.9.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_pathcheck_18 pg_pathcheck_18-0.9.1-1PIGSTY.el10.x86_64.rpm pigsty 0.9.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pathcheck_18-0.9.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_pathcheck_18 pg_pathcheck_18-0.9.1-1PIGSTY.el10.aarch64.rpm pigsty 0.9.1 29.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pathcheck_18-0.9.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~bookworm_amd64.deb pigsty 0.9.1 60.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~bookworm_arm64.deb pigsty 0.9.1 59.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~trixie_amd64.deb pigsty 0.9.1 59.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~trixie_arm64.deb pigsty 0.9.1 60.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~jammy_amd64.deb pigsty 0.9.1 67.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~jammy_arm64.deb pigsty 0.9.1 67.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~noble_amd64.deb pigsty 0.9.1 63.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~noble_arm64.deb pigsty 0.9.1 62.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~resolute_amd64.deb pigsty 0.9.1 62.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-pathcheck postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~resolute_arm64.deb pigsty 0.9.1 62.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pathcheck/postgresql-18-pg-pathcheck_0.9.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_pathcheck_17 pg_pathcheck_17-0.9.1-1PIGSTY.el8.x86_64.rpm pigsty 0.9.1 28.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_pathcheck_17-0.9.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_pathcheck_17 pg_pathcheck_17-0.9.1-1PIGSTY.el8.aarch64.rpm pigsty 0.9.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_pathcheck_17-0.9.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_pathcheck_17 pg_pathcheck_17-0.9.1-1PIGSTY.el9.x86_64.rpm pigsty 0.9.1 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_pathcheck_17-0.9.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_pathcheck_17 pg_pathcheck_17-0.9.1-1PIGSTY.el9.aarch64.rpm pigsty 0.9.1 29.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_pathcheck_17-0.9.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_pathcheck_17 pg_pathcheck_17-0.9.1-1PIGSTY.el10.x86_64.rpm pigsty 0.9.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_pathcheck_17-0.9.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_pathcheck_17 pg_pathcheck_17-0.9.1-1PIGSTY.el10.aarch64.rpm pigsty 0.9.1 29.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_pathcheck_17-0.9.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~bookworm_amd64.deb pigsty 0.9.1 59.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~bookworm_arm64.deb pigsty 0.9.1 59.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~trixie_amd64.deb pigsty 0.9.1 59.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~trixie_arm64.deb pigsty 0.9.1 59.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~jammy_amd64.deb pigsty 0.9.1 70.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~jammy_arm64.deb pigsty 0.9.1 71.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~noble_amd64.deb pigsty 0.9.1 62.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~noble_arm64.deb pigsty 0.9.1 62.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~resolute_amd64.deb pigsty 0.9.1 61.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-pathcheck postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~resolute_arm64.deb pigsty 0.9.1 61.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-pathcheck/postgresql-17-pg-pathcheck_0.9.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_pathcheck` using `pig build`:

```bash
pig build pkg pg_pathcheck         # build RPM / DEB packages
```


## Install

You can install `pg_pathcheck` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_pathcheck;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_pathcheck -v 18  # PG 18
pig ext install -y pg_pathcheck -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_pathcheck_18       # PG 18
dnf install -y pg_pathcheck_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-pathcheck   # PG 18
apt install -y postgresql-17-pg-pathcheck   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_pathcheck';
```





## Usage

Sources: [README](https://github.com/danolivo/pg_pathcheck/blob/main/README.md), [0.9.1 PG17/18 release](https://github.com/danolivo/pg_pathcheck/releases/tag/v0.9.1_pg17-18), [PGXN metadata](https://api.pgxn.org/dist/pg_pathcheck.json), [source](https://api.pgxn.org/src/pg_pathcheck/pg_pathcheck-0.9.1/pg_pathcheck.c)

`pg_pathcheck` is a PostgreSQL planner diagnostics module that validates reachable planner `Path` trees and reports pointers that look freed, corrupt, or re-used for the wrong relation. It is a preload-only shared library: it registers planner hooks and custom GUCs, but it does not create SQL functions, operators, views, or tables.

### Loading The Module

Build `pg_pathcheck` against the PostgreSQL source line you want to test. The upstream README documents separate long-running branches for PostgreSQL 17/18 and PostgreSQL master/19devel; version `0.9.1` is published for the PG17/18 branch and the PGXN metadata also describes the 0.9.1 source package.

Add the module to `shared_preload_libraries` and restart PostgreSQL:

```ini
shared_preload_libraries = 'pg_pathcheck'
```

There is no `CREATE EXTENSION pg_pathcheck` step. After preload, run ordinary SQL, `EXPLAIN`, regression tests, or PostgreSQL test suites; `pg_pathcheck` checks planner paths as queries are planned.

For one temporary cluster:

```bash
initdb -D pgdata
echo "shared_preload_libraries = 'pg_pathcheck'" >> pgdata/postgresql.conf
pg_ctl -D pgdata -l pgdata/logfile start

psql -c 'EXPLAIN SELECT ...'
```

For PostgreSQL test clusters spawned by `make check-world`, use `TEMP_CONFIG`:

```bash
cat > /tmp/pg_pathcheck.conf <<'EOF'
shared_preload_libraries = 'pg_pathcheck'
EOF

TEMP_CONFIG=/tmp/pg_pathcheck.conf make check-world
```

### Configuration

`pg_pathcheck.elevel` controls the severity used when a bad `Path` is detected:

```sql
SET pg_pathcheck.elevel = 'log';
SET pg_pathcheck.elevel = 'warning';  -- default
SET pg_pathcheck.elevel = 'error';
SET pg_pathcheck.elevel = 'panic';
```

Use `warning` or `log` for broad coverage while tests continue, `error` to stop on the first offending query, and `panic` only when a backend crash and core dump are useful for post-mortem debugging.

`pg_pathcheck.stage_checks` enables additional per-stage checks:

```sql
SET pg_pathcheck.stage_checks = off;  -- default
SET pg_pathcheck.stage_checks = on;
```

When enabled, the module checks pathlists at base-rel, join-rel, and upper-rel hook boundaries so a finding can be tied to a narrower planner stage. Leave it off for routine runs because the extra walks add planner overhead, especially for join-heavy queries.

### What Gets Checked

The module walks planner roots, relation pathlists, partial pathlists, cheapest path slots, parameterized paths, subquery subroots, subplan subroots, and nested `Path` fields such as join children, append children, sort subpaths, bitmap paths, and similar compound-path members.

It reports two main classes of problem:

- Invalid `NodeTag`: the pointer no longer looks like a PostgreSQL `Path` node.
- Parent mismatch: a valid-looking `Path` on a base or join relation points at a different `RelOptInfo`, which can indicate same-size memory reuse after a stale path pointer survived.

A typical finding includes the bad tag or mismatch, the containing slot such as `pathlist`, `partial_pathlist`, `cheapest_total_path`, or a nested path field, the relation names that could be resolved, pathlist detail, and the query string available through PostgreSQL debug state.

### Caveats

`pg_pathcheck` is a debug aid for PostgreSQL planner development and extension testing, not a user-facing SQL extension. A PostgreSQL cassert/debug build gives better signal because freed memory is easier to recognize. The upstream README notes coverage differences between the PG17/18 branch and the master branch: PG17/18 checks before later planning stages such as `create_plan` and `setrefs.c`, while master can use the newer planner shutdown hook.
