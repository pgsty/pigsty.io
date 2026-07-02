---
title: "snowflake"
linkTitle: "snowflake"
description: "Snowflake-style 64-bit ID generator and sequence utilities for PostgreSQL"
weight: 4590
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgEdge/snowflake">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgEdge/snowflake</div>
    <div class="ext-card__desc">https://github.com/pgEdge/snowflake</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/snowflake-2.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">snowflake-2.4.tar.gz</div>
    <div class="ext-card__desc">snowflake-2.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`snowflake`**](/ext/e/snowflake) | `2.4` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4590  | [**`snowflake`**](/ext/e/snowflake) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `snowflake` |
{.ext-table}

| **Related** | [`spock`](/ext/e/spock) [`lolor`](/ext/e/lolor) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> works on pgedge kernel fork. Set snowflake.node (1..1023) before using snowflake.nextval().


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4` | {{< pgvers "18" >}} | `snowflake` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4` | {{< pgvers "18" >}} | `snowflake_$v` | `pgedge_$v` |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4` | {{< pgvers "18" >}} | `pgedge-$v-snowflake` | `pgedge-$v` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | FORK PIGSTY 2.4 1 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | FORK PIGSTY 2.4 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ d12.x86_64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~bookworm_amd64.deb pigsty 2.4 10.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~bookworm_arm64.deb pigsty 2.4 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~trixie_amd64.deb pigsty 2.4 10.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~trixie_arm64.deb pigsty 2.4 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~jammy_amd64.deb pigsty 2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~jammy_arm64.deb pigsty 2.4 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~noble_amd64.deb pigsty 2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~noble_arm64.deb pigsty 2.4 10.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~resolute_amd64.deb pigsty 2.4 10.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 pgedge-18-snowflake pgedge-18-snowflake_2.4-1PIGSTY~resolute_arm64.deb pigsty 2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/snowflake/pgedge-18-snowflake_2.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 snowflake_17 snowflake_17-2.4-1PIGSTY.el8.x86_64.rpm pigsty 2.4 20.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/snowflake_17-2.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 snowflake_17 snowflake_17-2.4-1PIGSTY.el8.aarch64.rpm pigsty 2.4 20.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/snowflake_17-2.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 snowflake_17 snowflake_17-2.4-1PIGSTY.el9.x86_64.rpm pigsty 2.4 20.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/snowflake_17-2.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 snowflake_17 snowflake_17-2.4-1PIGSTY.el9.aarch64.rpm pigsty 2.4 20.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/snowflake_17-2.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 snowflake_17 snowflake_17-2.4-1PIGSTY.el10.x86_64.rpm pigsty 2.4 20.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/snowflake_17-2.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 snowflake_17 snowflake_17-2.4-1PIGSTY.el10.aarch64.rpm pigsty 2.4 20.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/snowflake_17-2.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~bookworm_amd64.deb pigsty 2.4 10.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~bookworm_arm64.deb pigsty 2.4 10.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~trixie_amd64.deb pigsty 2.4 10.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~trixie_arm64.deb pigsty 2.4 10.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~jammy_amd64.deb pigsty 2.4 10.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~jammy_arm64.deb pigsty 2.4 10.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~noble_amd64.deb pigsty 2.4 10.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 pgedge-17-snowflake pgedge-17-snowflake_2.4-1PIGSTY~noble_arm64.deb pigsty 2.4 10.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/snowflake/pgedge-17-snowflake_2.4-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `snowflake` using `pig build`:

```bash
pig build pkg snowflake         # build RPM / DEB packages
```


## Install

You can install `snowflake` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install snowflake;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y snowflake -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y snowflake_18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y pgedge-18-snowflake   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION snowflake;
```




## Usage

> [snowflake: Snowflake ID sequences for PostgreSQL](https://github.com/pgEdge/snowflake)

Provides `int8` and `sequence` based unique ID generation using the Snowflake format, suitable for distributed systems.

```sql
CREATE EXTENSION snowflake;
```

### Configuration

Set the node identifier in `postgresql.conf` (required, values 1-1023):

```ini
snowflake.node = 1
```

### Functions

| Function | Description |
|---|---|
| `snowflake.nextval([sequence regclass])` | Generate the next Snowflake ID (uses internal sequence if none specified) |
| `snowflake.currval([sequence regclass])` | Return the current value of the sequence |
| `snowflake.get_epoch(snowflake int8)` | Extract the timestamp as epoch (seconds since 2023-01-01) |
| `snowflake.get_count(snowflake int8)` | Extract the count part (resets per millisecond) |
| `snowflake.get_node(snowflake int8)` | Extract the node identifier |
| `snowflake.format(snowflake int8)` | Return a JSONB with `node`, `ts`, and `count` fields |

### Examples

```sql
-- Generate a snowflake ID
SELECT snowflake.nextval();
-- 136169504773242881

-- Use with a named sequence
CREATE SEQUENCE orders_id_seq;
SELECT snowflake.nextval('orders_id_seq'::regclass);

-- Extract components
SELECT snowflake.get_epoch(136169504773242881);
-- 1704996539.845

SELECT to_timestamp(snowflake.get_epoch(136169504773242881));
-- 2024-01-11 13:08:59.845-05

SELECT snowflake.get_node(136169504773242881);
-- 1

SELECT snowflake.format(136169504773242881);
-- {"id": 1, "ts": "2024-01-11 13:08:59.845-05", "count": 0}

-- Use as default column
CREATE TABLE orders (
  id int8 DEFAULT snowflake.nextval() PRIMARY KEY,
  data text
);
```
