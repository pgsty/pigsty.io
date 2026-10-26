---
title: "codesystem"
linkTitle: "codesystem"
description: "Hierarchical classification code types with validation and revision tracking"
weight: 3540
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/John-Cameron-Burns/pg-codesystem">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">John-Cameron-Burns/pg-codesystem</div>
    <div class="ext-card__desc">https://github.com/John-Cameron-Burns/pg-codesystem</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/codesystem-0.2.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">codesystem-0.2.1.tar.gz</div>
    <div class="ext-card__desc">codesystem-0.2.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`codesystem`**](/ext/e/codesystem) | `0.2.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3540  | [**`codesystem`**](/ext/e/codesystem) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> Distribution 0.2.1 keeps SQL/control 0.2.0; no extension upgrade from 0.2.0 is needed. Optional GSS entity updates and publisher-fetched ISIC/ISCO loaders need plpython3u, superuser installation and network access. Core extension dependencies unchanged. Upstream CI covers PG13-17; local EL9 aarch64 builds and regression checks additionally validate PG18.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "14,15,16,17,18" >}} | `codesystem` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.1` | {{< pgvers "14,15,16,17,18" >}} | `codesystem_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| d12.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 codesystem_18 codesystem_18-0.2.1-1PGSTY.el8.x86_64.rpm pigsty 0.2.1 122.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/codesystem_18-0.2.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 codesystem_18 codesystem_18-0.2.1-1PGSTY.el8.aarch64.rpm pigsty 0.2.1 120.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/codesystem_18-0.2.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 codesystem_18 codesystem_18-0.2.1-1PGSTY.el9.x86_64.rpm pigsty 0.2.1 122.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/codesystem_18-0.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 codesystem_18 codesystem_18-0.2.1-1PGSTY.el9.aarch64.rpm pigsty 0.2.1 121.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/codesystem_18-0.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 codesystem_18 codesystem_18-0.2.1-1PGSTY.el10.x86_64.rpm pigsty 0.2.1 122.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/codesystem_18-0.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 codesystem_18 codesystem_18-0.2.1-1PGSTY.el10.aarch64.rpm pigsty 0.2.1 122.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/codesystem_18-0.2.1-1PGSTY.el10.aarch64.rpm
@ el8.x86_64 17 codesystem_17 codesystem_17-0.2.1-1PGSTY.el8.x86_64.rpm pigsty 0.2.1 122.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/codesystem_17-0.2.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 codesystem_17 codesystem_17-0.2.1-1PGSTY.el8.aarch64.rpm pigsty 0.2.1 120.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/codesystem_17-0.2.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 codesystem_17 codesystem_17-0.2.1-1PGSTY.el9.x86_64.rpm pigsty 0.2.1 122.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/codesystem_17-0.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 codesystem_17 codesystem_17-0.2.1-1PGSTY.el9.aarch64.rpm pigsty 0.2.1 121.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/codesystem_17-0.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 codesystem_17 codesystem_17-0.2.1-1PGSTY.el10.x86_64.rpm pigsty 0.2.1 122.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/codesystem_17-0.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 codesystem_17 codesystem_17-0.2.1-1PGSTY.el10.aarch64.rpm pigsty 0.2.1 122.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/codesystem_17-0.2.1-1PGSTY.el10.aarch64.rpm
@ el8.x86_64 16 codesystem_16 codesystem_16-0.2.1-1PGSTY.el8.x86_64.rpm pigsty 0.2.1 122.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/codesystem_16-0.2.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 codesystem_16 codesystem_16-0.2.1-1PGSTY.el8.aarch64.rpm pigsty 0.2.1 120.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/codesystem_16-0.2.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 codesystem_16 codesystem_16-0.2.1-1PGSTY.el9.x86_64.rpm pigsty 0.2.1 122.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/codesystem_16-0.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 codesystem_16 codesystem_16-0.2.1-1PGSTY.el9.aarch64.rpm pigsty 0.2.1 121.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/codesystem_16-0.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 codesystem_16 codesystem_16-0.2.1-1PGSTY.el10.x86_64.rpm pigsty 0.2.1 122.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/codesystem_16-0.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 codesystem_16 codesystem_16-0.2.1-1PGSTY.el10.aarch64.rpm pigsty 0.2.1 122.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/codesystem_16-0.2.1-1PGSTY.el10.aarch64.rpm
@ el8.x86_64 15 codesystem_15 codesystem_15-0.2.1-1PGSTY.el8.x86_64.rpm pigsty 0.2.1 122.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/codesystem_15-0.2.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 codesystem_15 codesystem_15-0.2.1-1PGSTY.el8.aarch64.rpm pigsty 0.2.1 120.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/codesystem_15-0.2.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 codesystem_15 codesystem_15-0.2.1-1PGSTY.el9.x86_64.rpm pigsty 0.2.1 124.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/codesystem_15-0.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 codesystem_15 codesystem_15-0.2.1-1PGSTY.el9.aarch64.rpm pigsty 0.2.1 123.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/codesystem_15-0.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 codesystem_15 codesystem_15-0.2.1-1PGSTY.el10.x86_64.rpm pigsty 0.2.1 124.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/codesystem_15-0.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 codesystem_15 codesystem_15-0.2.1-1PGSTY.el10.aarch64.rpm pigsty 0.2.1 123.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/codesystem_15-0.2.1-1PGSTY.el10.aarch64.rpm
@ el8.x86_64 14 codesystem_14 codesystem_14-0.2.1-1PGSTY.el8.x86_64.rpm pigsty 0.2.1 122.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/codesystem_14-0.2.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 codesystem_14 codesystem_14-0.2.1-1PGSTY.el8.aarch64.rpm pigsty 0.2.1 120.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/codesystem_14-0.2.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 codesystem_14 codesystem_14-0.2.1-1PGSTY.el9.x86_64.rpm pigsty 0.2.1 124.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/codesystem_14-0.2.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 codesystem_14 codesystem_14-0.2.1-1PGSTY.el9.aarch64.rpm pigsty 0.2.1 123.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/codesystem_14-0.2.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 codesystem_14 codesystem_14-0.2.1-1PGSTY.el10.x86_64.rpm pigsty 0.2.1 124.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/codesystem_14-0.2.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 codesystem_14 codesystem_14-0.2.1-1PGSTY.el10.aarch64.rpm pigsty 0.2.1 123.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/codesystem_14-0.2.1-1PGSTY.el10.aarch64.rpm
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `codesystem` using `pig build`:

```bash
pig build pkg codesystem         # build RPM packages
```


## Install

You can install `codesystem` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install codesystem;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y codesystem -v 18  # PG 18
pig ext install -y codesystem -v 17  # PG 17
pig ext install -y codesystem -v 16  # PG 16
pig ext install -y codesystem -v 15  # PG 15
pig ext install -y codesystem -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y codesystem_18       # PG 18
dnf install -y codesystem_17       # PG 17
dnf install -y codesystem_16       # PG 16
dnf install -y codesystem_15       # PG 15
dnf install -y codesystem_14       # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION codesystem;
```

## Usage

Sources:

- [README.md](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/README.md)
- [docs/USER_GUIDE.md](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/docs/USER_GUIDE.md)
- [codesystem--0.2.0.sql](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/codesystem--0.2.0.sql)
- [codesystem--0.1.0--0.2.0.sql](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/codesystem--0.1.0--0.2.0.sql)
- [codesystem.control](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/codesystem.control)
- [.github/workflows/test.yml](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/.github/workflows/test.yml)
- [tools/gss_update.sql](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/tools/gss_update.sql)
- [tools/install_isic_isco.sql](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/tools/install_isic_isco.sql)
- [NOTICE](https://github.com/John-Cameron-Burns/pg-codesystem/blob/482b052ab3ebd2b60816b4479d5cefa63eb7f61d/NOTICE)

`codesystem` stores named classification systems and typed `code` values. Version 0.2.0 supports list hierarchies, revisions, derived standards, crosswalks and pattern-defined identifiers. A pattern validates syntax, not whether an identifier has actually been issued.

### Core Workflow

```sql
CREATE EXTENSION codesystem;
CREATE TABLE classification_source (code text, level text, parent text, label text);
INSERT INTO classification_source VALUES ('A', 'section', '', 'Agriculture');
SELECT define_code_system(
  'toy',
  '[{"name":"section","width":1,"charset":"[A-Z]","link":"none","expected":1}]',
  'SELECT * FROM classification_source', 'Toy classification', 'Example');
SELECT name, current_revision, ncodes FROM code_systems;
SELECT code_label('toy:A'::code);
SELECT define_code_system_pattern('my_id', 'AA-NNN');
SELECT code_from('AB-123', 'my_id');
```

### Operational Boundaries

Upstream CI targets PostgreSQL 13–17. Install this native extension as an administrator. Run `ALTER EXTENSION codesystem UPDATE` only when the SQL extension version changes. Distribution 0.2.1 still uses SQL/control version 0.2.0, so an existing 0.2.0 database needs no extension upgrade.

`define_code_system` validates levels and the input query’s code, level, parent and label columns. SQL literals include a system prefix; `code_from` converts external text. `code_level`, `code_parent`, `code_ancestor`, `code_children` and `code_label` expose the hierarchy. Equal text in different revisions represents different values; `code_current` converts to the current revision when the code remains valid.

`define_code_system` also accepts `refines` and `shared_levels` for derived classifications, queried through `code_rollup`. `define_crosswalk` registers correspondence pairs; `code_map` can return multiple matches, while `code_map_unique` requires exactly one. `define_code_system_pattern` defines bounded templates or regular expressions; `code_part` and `code_parts` return named parts. `code_from_padded` handles lost leading zeros, and `code_first_with_prefix` plus `code_last_with_prefix` provide indexable prefix bounds. A system cannot switch between list and pattern forms.

Registry structural edits are protected; define a new revision when accepted values change. Registry writes need appropriate table permissions, and readers need SELECT on registry tables. Custom-format restores require the upstream `tools/restore.sh` helper to restore registry data before typed table values. Ordinary restore ordering can fail.

### Optional Classification Data Tools

Distribution 0.2.1 includes GSS code patterns and entity-type data. After separately loading `tools/gss_update.sql`, `gss_update_entity_types()` updates entity types from ONS. Loading `tools/install_isic_isco.sql` provides `codesystem_install_isic_rev4()` and `codesystem_install_isco_08()`, which download classifications from the UN and ILO. These helpers require an existing `plpython3u`, superuser installation and database-server access to the corresponding sources. They are not dependencies of the core extension.

Use `dry_run` to inspect fetched data first, and connect to the primary when writing the classification registry. ISIC/ISCO data is not redistributed in the package and remains subject to publisher terms. Upstream `NOTICE` records attribution and licensing for other bundled data.
