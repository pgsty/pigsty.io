---
title: "pg_strict"
linkTitle: "pg_strict"
description: "Prevent dangerous UPDATE and DELETE without WHERE clause"
weight: 5830
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/spa5k/pg_strict">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">spa5k/pg_strict</div>
    <div class="ext-card__desc">https://github.com/spa5k/pg_strict</div>
  </a>
  <a class="ext-card ext-card--source" href="pg_strict-1.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_strict-1.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_strict-1.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_strict`**](/ext/e/pg_strict) | `1.0.2` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5830  | [**`pg_strict`**](/ext/e/pg_strict) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`safeupdate`](/ext/e/safeupdate) [`pg_savior`](/ext/e/pg_savior) [`pg_upless`](/ext/e/pg_upless) [`pg_drop_events`](/ext/e/pg_drop_events) [`pg_readonly`](/ext/e/pg_readonly) [`table_log`](/ext/e/table_log) [`pgaudit`](/ext/e/pgaudit) [`pg_permissions`](/ext/e/pg_permissions) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> manually patched


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_strict` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_strict_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_strict_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 |
| d12.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 pg_strict_18 pg_strict_18-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 324.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_18-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_strict_18 pg_strict_18-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 217.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_18-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_strict_18 pg_strict_18-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 338.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_18-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_strict_18 pg_strict_18-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 232.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_18-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_strict_18 pg_strict_18-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 339.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_18-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_strict_18 pg_strict_18-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 232.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_18-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el8.x86_64 17 pg_strict_17 pg_strict_17-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 324.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_17-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_strict_17 pg_strict_17-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 217.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_17-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_strict_17 pg_strict_17-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 339.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_17-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_strict_17 pg_strict_17-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 232.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_17-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_strict_17 pg_strict_17-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 339.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_17-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_strict_17 pg_strict_17-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 232.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_17-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el8.x86_64 16 pg_strict_16 pg_strict_16-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 324.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_16-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_strict_16 pg_strict_16-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 217.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_16-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_strict_16 pg_strict_16-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 339.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_16-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_strict_16 pg_strict_16-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 232.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_16-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_strict_16 pg_strict_16-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 339.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_16-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_strict_16 pg_strict_16-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_16-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el8.x86_64 15 pg_strict_15 pg_strict_15-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 323.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_15-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_strict_15 pg_strict_15-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 217.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_15-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_strict_15 pg_strict_15-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 338.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_15-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_strict_15 pg_strict_15-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 232.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_15-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_strict_15 pg_strict_15-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 339.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_15-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_strict_15 pg_strict_15-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 232.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_15-1.0.2-1PIGSTY.el10.aarch64.rpm
@ el8.x86_64 14 pg_strict_14 pg_strict_14-1.0.2-1PIGSTY.el8.x86_64.rpm pigsty 1.0.2 323.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_strict_14-1.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_strict_14 pg_strict_14-1.0.2-1PIGSTY.el8.aarch64.rpm pigsty 1.0.2 217.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_strict_14-1.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_strict_14 pg_strict_14-1.0.2-1PIGSTY.el9.x86_64.rpm pigsty 1.0.2 338.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_strict_14-1.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_strict_14 pg_strict_14-1.0.2-1PIGSTY.el9.aarch64.rpm pigsty 1.0.2 232.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_strict_14-1.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_strict_14 pg_strict_14-1.0.2-1PIGSTY.el10.x86_64.rpm pigsty 1.0.2 338.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_strict_14-1.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_strict_14 pg_strict_14-1.0.2-1PIGSTY.el10.aarch64.rpm pigsty 1.0.2 232.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_strict_14-1.0.2-1PIGSTY.el10.aarch64.rpm
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_strict` using `pig build`:

```bash
pig build pkg pg_strict         # build RPM / DEB packages
```


## Install

You can install `pg_strict` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_strict;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_strict -v 18  # PG 18
pig ext install -y pg_strict -v 17  # PG 17
pig ext install -y pg_strict -v 16  # PG 16
pig ext install -y pg_strict -v 15  # PG 15
pig ext install -y pg_strict -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_strict_18       # PG 18
dnf install -y pg_strict_17       # PG 17
dnf install -y pg_strict_16       # PG 16
dnf install -y pg_strict_15       # PG 15
dnf install -y pg_strict_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y pg_strict_18   # PG 18
apt install -y pg_strict_17   # PG 17
apt install -y pg_strict_16   # PG 16
apt install -y pg_strict_15   # PG 15
apt install -y pg_strict_14   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_strict';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_strict;
```




## Usage

> [pg_strict: Prevent dangerous UPDATE and DELETE without WHERE clause](https://github.com/spa5k/pg_strict)

The `pg_strict` extension blocks `UPDATE` and `DELETE` statements that lack a `WHERE` clause. It operates at the parse/analyze stage via `post_parse_analyze_hook`, providing three enforcement modes per statement type.

### Configuration Parameters

| Parameter | Modes | Description |
|-----------|-------|-------------|
| `pg_strict.require_where_on_update` | `on`/`warn`/`off` | Enforce WHERE on UPDATE |
| `pg_strict.require_where_on_delete` | `on`/`warn`/`off` | Enforce WHERE on DELETE |

- **`on`**: Reject statements without WHERE (raises error)
- **`warn`**: Allow but emit a warning log
- **`off`**: Standard PostgreSQL behavior

### Session-Level Configuration

```sql
SET pg_strict.require_where_on_update = 'on';
SET pg_strict.require_where_on_delete = 'warn';
```

### Persistent Configuration

```sql
ALTER DATABASE postgres SET pg_strict.require_where_on_update = 'on';
ALTER ROLE app_service SET pg_strict.require_where_on_delete = 'on';
ALTER ROLE dba_admin SET pg_strict.require_where_on_update = 'off';
```

### Transactional Override

```sql
BEGIN;
SET LOCAL pg_strict.require_where_on_delete = 'off';
DELETE FROM temp_table;  -- allowed within this transaction
COMMIT;
```

### API Functions

```sql
SELECT pg_strict_version();           -- extension version
SELECT pg_strict_config();            -- all settings with values and descriptions

-- Validate queries programmatically
SELECT pg_strict_check_where_clause('DELETE FROM t', 'DELETE');  -- returns boolean
SELECT pg_strict_validate_update('UPDATE t SET x=1');
SELECT pg_strict_validate_delete('DELETE FROM t');

-- Quick mode toggles
SELECT pg_strict_enable_update();     -- set update enforcement to 'on'
SELECT pg_strict_warn_delete();       -- set delete enforcement to 'warn'
SELECT pg_strict_disable_update();    -- set update enforcement to 'off'
```

Any non-null WHERE condition is accepted (including `WHERE false`). CTE statements are supported.
