---
title: "spock"
linkTitle: "spock"
description: "Multi-master logical replication extension for PostgreSQL"
weight: 9570
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgEdge/spock">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgEdge/spock</div>
    <div class="ext-card__desc">https://github.com/pgEdge/spock</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/spock-5.0.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">spock-5.0.6.tar.gz</div>
    <div class="ext-card__desc">spock-5.0.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`spock`**](/ext/e/spock) | `5.0.6` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9570  | [**`spock`**](/ext/e/spock) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `spock` |
{.ext-table}

| **Related** | [`lolor`](/ext/e/lolor) [`snowflake`](/ext/e/snowflake) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> works on pgedge kernel fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.6` | {{< pgvers "18" >}} | `spock` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.6` | {{< pgvers "18" >}} | `spock_$v` | `pgedge_$v` |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `5.0.6` | {{< pgvers "18" >}} | `pgedge-$v-spock` | `pgedge-$v` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | MISS PIGSTY - 0 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | MISS PIGSTY - 0 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | FORK PIGSTY 5.0.6 1 | FORK PIGSTY 5.0.5 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | FORK PIGSTY 5.0.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | FORK PIGSTY 5.0.6 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ d12.x86_64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~bookworm_amd64.deb pigsty 5.0.6 167.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~bookworm_arm64.deb pigsty 5.0.6 155.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~trixie_amd64.deb pigsty 5.0.6 168.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~trixie_arm64.deb pigsty 5.0.6 155.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~jammy_amd64.deb pigsty 5.0.6 178.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~jammy_arm64.deb pigsty 5.0.6 173.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~noble_amd64.deb pigsty 5.0.6 174.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~noble_arm64.deb pigsty 5.0.6 169.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~resolute_amd64.deb pigsty 5.0.6 175.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 pgedge-18-spock pgedge-18-spock_5.0.6-1PIGSTY~resolute_arm64.deb pigsty 5.0.6 168.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/spock/pgedge-18-spock_5.0.6-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 spock_17 spock_17-5.0.5-1PIGSTY.el8.x86_64.rpm pigsty 5.0.5 195.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/spock_17-5.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 spock_17 spock_17-5.0.5-1PIGSTY.el8.aarch64.rpm pigsty 5.0.5 185.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/spock_17-5.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 spock_17 spock_17-5.0.5-1PIGSTY.el9.x86_64.rpm pigsty 5.0.5 183.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/spock_17-5.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 spock_17 spock_17-5.0.5-1PIGSTY.el9.aarch64.rpm pigsty 5.0.5 179.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/spock_17-5.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 spock_17 spock_17-5.0.5-1PIGSTY.el10.x86_64.rpm pigsty 5.0.5 185.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/spock_17-5.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 spock_17 spock_17-5.0.5-1PIGSTY.el10.aarch64.rpm pigsty 5.0.5 180.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/spock_17-5.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~bookworm_amd64.deb pigsty 5.0.5 166.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~bookworm_arm64.deb pigsty 5.0.5 154.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~trixie_amd64.deb pigsty 5.0.5 166.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~trixie_arm64.deb pigsty 5.0.5 155.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~jammy_amd64.deb pigsty 5.0.5 177.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~jammy_arm64.deb pigsty 5.0.5 172.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~noble_amd64.deb pigsty 5.0.5 173.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 pgedge-17-spock pgedge-17-spock_5.0.5-1PIGSTY~noble_arm64.deb pigsty 5.0.5 167.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/spock/pgedge-17-spock_5.0.5-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `spock` using `pig build`:

```bash
pig build pkg spock         # build RPM / DEB packages
```


## Install

You can install `spock` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install spock;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y spock -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y spock_18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y pgedge-18-spock   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'spock';
```


**Create Extension**:

```sql
CREATE EXTENSION spock;
```



## Usage

> [spock: Multi-master logical replication extension for PostgreSQL](https://github.com/pgEdge/spock)

Multi-master logical replication for PostgreSQL 15+. Each node acts as both publisher and subscriber.

### Configuration

In `postgresql.conf`:

```ini
wal_level = 'logical'
max_worker_processes = 10
max_replication_slots = 10
max_wal_senders = 10
shared_preload_libraries = 'spock'
track_commit_timestamp = on
spock.enable_ddl_replication = on
spock.include_ddl_repset = on
```

### Enabling

```sql
CREATE EXTENSION spock;
```

### Creating Nodes

On each node, create a node identity:

```sql
-- Node 1
SELECT spock.node_create(
    node_name := 'n1',
    dsn := 'host=10.0.0.5 port=5432 dbname=mydb'
);

-- Node 2
SELECT spock.node_create(
    node_name := 'n2',
    dsn := 'host=10.0.0.7 port=5432 dbname=mydb'
);
```

### Creating Subscriptions

For multi-master, each node subscribes to every other node:

```sql
-- On n1: subscribe to n2
SELECT spock.sub_create(
    subscription_name := 'sub_n1n2',
    provider_dsn := 'host=10.0.0.7 port=5432 dbname=mydb'
);

-- On n2: subscribe to n1
SELECT spock.sub_create(
    subscription_name := 'sub_n2n1',
    provider_dsn := 'host=10.0.0.5 port=5432 dbname=mydb'
);
```

### Replication Set Management

```sql
-- Add table to replication
SELECT spock.repset_add_table('default', 'my_table');

-- Remove table from replication
SELECT spock.repset_remove_table('default', 'my_table');

-- Add all tables in a schema
SELECT spock.repset_add_all_tables('default', '{public}');
```

### Key Features

- Multi-master (active-active) replication
- Automatic DDL replication
- Conflict detection and resolution using commit timestamps
- Row and column filtering
- Supports PostgreSQL 15, 16, 17, and 18
- Tables must have primary keys and matching schemas across nodes
