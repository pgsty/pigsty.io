---
title: "pg_statecharts_dev"
linkTitle: "pg_statecharts_dev"
description: "SCXML import and migration tooling for pg_statecharts"
weight: 2696
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/kronor-io/statecharts">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">kronor-io/statecharts</div>
    <div class="ext-card__desc">https://github.com/kronor-io/statecharts</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_statecharts-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_statecharts-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_statecharts-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_statecharts`**](/ext/e/pg_statecharts) | `0.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2695  | [**`pg_statecharts`**](/ext/e/pg_statecharts) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fsm` |
| 2696  | [**`pg_statecharts_dev`**](/ext/e/pg_statecharts_dev) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `fsm` |
{.ext-table .wide .expand}

| **Related** | [`pg_statecharts`](/ext/e/pg_statecharts) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Development tooling; server file privileges


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "16,17,18" >}} | `pg_statecharts` | `pg_statecharts` |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "16,17,18" >}} | `pg_statecharts_dev_$v` | `pg_statecharts_$v` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "16,17,18" >}} | `postgresql-$v-pg-statecharts-dev` | `postgresql-$v-pg-statecharts` |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_statecharts` using `pig build`:

```bash
pig build pkg pg_statecharts         # build RPM / DEB packages
```


## Install

You can install `pg_statecharts` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_statecharts;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_statecharts -v 18  # PG 18
pig ext install -y pg_statecharts -v 17  # PG 17
pig ext install -y pg_statecharts -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_statecharts_dev_18       # PG 18
dnf install -y pg_statecharts_dev_17       # PG 17
dnf install -y pg_statecharts_dev_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-statecharts-dev   # PG 18
apt install -y postgresql-17-pg-statecharts-dev   # PG 17
apt install -y postgresql-16-pg-statecharts-dev   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION pg_statecharts_dev CASCADE;  -- requires: pg_statecharts
```

## Usage

Sources:

- [Official source](https://github.com/kronor-io/statecharts/blob/472349e864440c39a30863a0db815050391804c7/pg_statecharts_dev/README.md)
- [Official source](https://github.com/kronor-io/statecharts/blob/472349e864440c39a30863a0db815050391804c7/pg_statecharts_dev/pg_statecharts_dev.control)
- [Official source](https://github.com/kronor-io/statecharts/blob/472349e864440c39a30863a0db815050391804c7/pg_statecharts/README.md)

`pg_statecharts_dev` 0.1.0 is the development companion to `pg_statecharts`. It imports SCXML definitions and generates Sqitch migrations. The production state-machine runtime does not need this file-access tooling.

### Core Workflow

After installing the runtime and its dependency, enable the companion:

```sql
CREATE EXTENSION pg_statecharts_dev;
SELECT * FROM fsm.import_scxml_files(
  source_path => '/repo/statecharts',
  recursive => false,
  on_conflict_do_nothing => false
);
```

The source directory is on the database host. Statechart callbacks must exist with the expected signatures. Parse or validation failures roll back the import transaction instead of accepting part of a chart.

### Migration Generation

```sql
SELECT fsm.gen_statechart_sqitch_migrations(
  source_path => '/repo/statecharts',
  sqitch_plan_file_path => '/repo/sqitch/sqitch.plan',
  recursive => false
);
```

Create the destination directories before generation and make them accessible to the database OS user. The generator writes deploy, revert and verify scripts, updates the plan, and can overwrite existing generated chart files. Review the changes before using them as application migrations.

### Permissions and Boundaries

Server file reads require `pg_read_server_files`; writes require `pg_write_server_files`. These are broad privileges, not a sandbox restricted to the supplied path. Restrict the extension and roles to a controlled development database. It shares the `fsm` schema, is pure SQL and requires no preload; PostgreSQL 16–18 are the documented test targets.

Use the runtime's current semantic-version helpers in generated migrations. For old migrations that cast to the removed semver type, follow the upstream migration guide; regenerating every historical chart can introduce callback-order failures. Deploy reviewed generated SQL to production without installing this companion there.
