---
title: "pg_describe"
linkTitle: "pg_describe"
description: "Report a query's parameters and result columns without executing it"
weight: 4350
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/sajonaro/pg_describe">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">sajonaro/pg_describe</div>
    <div class="ext-card__desc">https://github.com/sajonaro/pg_describe</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_describe-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_describe-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_describe-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_describe`**](/ext/e/pg_describe) | `1.0.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4350  | [**`pg_describe`**](/ext/e/pg_describe) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | `describe_resultset` `colnames` [`ddlx`](/ext/e/ddlx) [`pg_readme`](/ext/e/pg_readme) [`pglinter`](/ext/e/pglinter) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Uses PostgreSQL parser and analyzer without invoking the executor; upstream and PIGSTY packages require PostgreSQL 17 or newer.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "17,18" >}} | `pg_describe` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17" >}} | `pg_describe_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-describe` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_describe_18 pg_describe_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 34.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_describe_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_describe_18 pg_describe_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_describe_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_describe_18 pg_describe_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_describe_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_describe_18 pg_describe_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_describe_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_describe_18 pg_describe_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_describe_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_describe_18 pg_describe_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_describe_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 35.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 35.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 35.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 35.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 37.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 37.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 37.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 36.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-describe postgresql-18-pg-describe_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 37.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-describe/postgresql-18-pg-describe_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_describe_17 pg_describe_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 34.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_describe_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_describe_17 pg_describe_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 34.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_describe_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_describe_17 pg_describe_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_describe_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_describe_17 pg_describe_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_describe_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_describe_17 pg_describe_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 33.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_describe_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_describe_17 pg_describe_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_describe_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 35.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 35.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 35.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 35.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 40.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 40.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 36.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-describe postgresql-17-pg-describe_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 37.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-describe/postgresql-17-pg-describe_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_describe` using `pig build`:

```bash
pig build pkg pg_describe         # build RPM / DEB packages
```


## Install

You can install `pg_describe` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_describe;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_describe -v 18  # PG 18
pig ext install -y pg_describe -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_describe_18       # PG 18
dnf install -y pg_describe_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-describe   # PG 18
apt install -y postgresql-17-pg-describe   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_describe;
```

## Usage

Sources:

- [pg_describe 1.0.0 README](https://api.pgxn.org/src/pg_describe/pg_describe-1.0.0/README.md)
- [pg_describe documentation](https://sajonaro.github.io/pg_describe/)
- [pg_describe 1.0.0 control file](https://api.pgxn.org/src/pg_describe/pg_describe-1.0.0/pg_describe.control)
- [pg_describe 1.0.0 SQL](https://api.pgxn.org/src/pg_describe/pg_describe-1.0.0/sql/pg_describe--1.0.0.sql)

`pg_describe` reports the parameters and result columns of a SQL statement without executing it. It uses PostgreSQL parsing and analysis to infer parameter types, wire-visible result types, source-column provenance, and outer-join-aware nullability. Use it for code generation, migration checks, and query-contract tooling.

### Describe a Query

```sql
CREATE EXTENSION pg_describe;

SELECT *
FROM pg_describe(
  'SELECT id, email FROM users WHERE id = $1'
);
```

Rows with `kind = 'param'` describe `$1`, `$2`, and later parameters. Rows with `kind = 'column'` describe result-column order, name, type OID/name, source table/column, base `NOT NULL` status, and whether the final expression is known non-null.

### Check Join Nullability

```sql
SELECT *
FROM pg_describe($query$
  SELECT o.id, c.email
  FROM orders AS o
  LEFT JOIN customers AS c ON c.id = o.customer_id
  WHERE o.placed_at >= $1
$query$);
```

Even when `customers.email` is declared `NOT NULL`, `result_not_null` is false because a left join can null-extend the row. This distinction is useful when generating nullable client types.

### Execution and Security Boundary

- The statement is parsed and analyzed but not executed. Describing a `DELETE`, volatile function call, or expensive query does not run the statement.
- Normal name resolution and privilege checks still apply. Callers cannot use `pg_describe` to inspect objects they could not reference themselves.
- Parameter types must be inferable from context; ambiguous `$n` parameters still produce PostgreSQL analysis errors.
- The result describes PostgreSQL's analyzed output, not dynamic SQL assembled later by an application.

### Requirements and Caveats

- Upstream 1.0.0 requires PostgreSQL 17; PostgreSQL 16 is described as possibly working but untested. Pigsty packages target PostgreSQL 17 and 18.
- The extension is relocatable and does not require preloading or a restart.
- The companion `pg-describe-gen` TypeScript tool is a separate npm package. The PostgreSQL extension works without it.
- This is a young API. Pin the extension/tool versions in CI and review generated changes alongside schema migrations.
