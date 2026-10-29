---
title: "kafgres"
linkTitle: "kafgres"
description: "Kafka protocol broker embedded in PostgreSQL"
weight: 9440
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/RayElg/kafgres">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">RayElg/kafgres</div>
    <div class="ext-card__desc">https://github.com/RayElg/kafgres</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/kafgres-0.3.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">kafgres-0.3.1.tar.gz</div>
    <div class="ext-card__desc">kafgres-0.3.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`kafgres`**](/ext/e/kafgres) | `0.3.1` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license elastic20" href="/ext/license#elastic20">Elastic-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9440  | [**`kafgres`**](/ext/e/kafgres) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


> Preload/restart; broker readiness required; replicate/archive segment data separately.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.1` | {{< pgvers "16" >}} | `kafgres` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.1` | {{< pgvers "16" >}} | `kafgres_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.1` | {{< pgvers "16" >}} | `postgresql-$v-kafgres` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.3.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 16 kafgres_16 kafgres_16-0.3.1-1PGSTY.el8.x86_64.rpm pigsty 0.3.1 4.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/kafgres_16-0.3.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 kafgres_16 kafgres_16-0.3.1-1PGSTY.el8.aarch64.rpm pigsty 0.3.1 3.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/kafgres_16-0.3.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 kafgres_16 kafgres_16-0.3.1-1PGSTY.el9.x86_64.rpm pigsty 0.3.1 4.4MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/kafgres_16-0.3.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 kafgres_16 kafgres_16-0.3.1-1PGSTY.el9.aarch64.rpm pigsty 0.3.1 4.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/kafgres_16-0.3.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 kafgres_16 kafgres_16-0.3.1-1PGSTY.el10.x86_64.rpm pigsty 0.3.1 4.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/kafgres_16-0.3.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 kafgres_16 kafgres_16-0.3.1-1PGSTY.el10.aarch64.rpm pigsty 0.3.1 4.0MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/kafgres_16-0.3.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~bookworm_amd64.deb pigsty 0.3.1 3.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~bookworm_arm64.deb pigsty 0.3.1 3.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~trixie_amd64.deb pigsty 0.3.1 3.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~trixie_arm64.deb pigsty 0.3.1 3.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~jammy_amd64.deb pigsty 0.3.1 4.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~jammy_arm64.deb pigsty 0.3.1 3.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~noble_amd64.deb pigsty 0.3.1 4.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~noble_arm64.deb pigsty 0.3.1 3.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~resolute_amd64.deb pigsty 0.3.1 4.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-kafgres postgresql-16-kafgres_0.3.1-1PGSTY~resolute_arm64.deb pigsty 0.3.1 3.8MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/k/kafgres/postgresql-16-kafgres_0.3.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `kafgres` using `pig build`:

```bash
pig build pkg kafgres         # build RPM / DEB packages
```


## Install

You can install `kafgres` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install kafgres;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y kafgres -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y kafgres_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-16-kafgres   # PG 16
```


**Preload**:

```bash
shared_preload_libraries = 'kafgres';
```


**Create Extension**:

```sql
CREATE EXTENSION kafgres;
```

## Usage

Sources:

- [extension/sql/kafgres--0.2.0--0.3.0.sql](https://github.com/RayElg/kafgres/blob/8def1919c65f71217665cdc9b72df4c693811cc2/extension/sql/kafgres--0.2.0--0.3.0.sql)
- [.github/workflows/ci.yml](https://github.com/RayElg/kafgres/blob/8def1919c65f71217665cdc9b72df4c693811cc2/.github/workflows/ci.yml)
- [README 0.3.1](https://github.com/RayElg/kafgres/blob/451a7f622a10bcf28b3ba4ae63c372a7f15c5aeb/README.md)
- [Configuration 0.3.1](https://github.com/RayElg/kafgres/blob/451a7f622a10bcf28b3ba4ae63c372a7f15c5aeb/docs/configuration.md)

- [0.3.1 release](https://github.com/RayElg/kafgres/releases/tag/0.3.1)

`kafgres` embeds a Kafka protocol broker in PostgreSQL. Upstream release 0.3.1 builds and tests PostgreSQL 13–18. It needs superuser installation, shared preload and a restart. Its license is Elastic License 2.0.

### Enable the broker

```ini
shared_preload_libraries = 'kafgres'
kafgres.database = 'postgres'
kafgres.bind_host = '127.0.0.1'
kafgres.advertised_host = '127.0.0.1'
kafgres.port = 9092
```

```sql
CREATE EXTENSION kafgres;
SELECT kafgres_create_topic('demo', 1);
BEGIN;
SELECT kafgres_produce('demo', 'key', 'value');
COMMIT;
SELECT * FROM kafgres_partition_offsets('demo');
```

Kafka clients connect to the configured broker port. SQL production participates in the caller's transaction. Configure TLS, authentication and ACLs before exposing the listener beyond a trusted local environment.

### Storage and CDC

`kafgres.storage_engine` defaults to segment; its log uses separate files and requires the extension's replication and archive procedures. Configure `kafgres.segment_archive_command` and monitor `kafgres_archive_status()` before relying on segment retention and recovery. Ordinary PostgreSQL WAL/PITR does not cover the entire segment log. The table engine keeps its log in PostgreSQL tables; changing engines does not migrate existing records.

CDC additionally requires `wal_level = logical`; some PostgreSQL builds also require an `output_plugin_libraries` allowlist. Version 0.3.0 supports SQL CDC mappings with projection and filtering. Review the mapping and recovery procedures before deployment; the tagged CI matrix and release artifacts cover PostgreSQL 13–18.

### Durability Settings

Version 0.3.0 defaults `kafgres.fsync_before_ack` to on and `kafgres.relaxed_produce_commit` to off. Relaxing the first can lose acknowledged segment records on a power failure; relaxing the second can lose the newest idempotent-producer state after a crash and permit duplicates after retries. These settings have narrower scope than transactional SQL production and do not apply uniformly to the table engine. Preserve the strict defaults until the durability tradeoff is deliberate.

### 0.3.0 Upgrade

Install the matching 0.3.0 library, restart, then run `ALTER EXTENSION kafgres UPDATE` in the broker database. The SQL update restricts administrative-function grants and pins the producer search path. The first segment-engine start removes old-format timestamp indexes from 0.2.0; old segments remain readable by scanning, while new segments receive current indexes.

### 0.3.1 CDC Installation Boundary

CDC needs wal_level = logical. On PostgreSQL builds that enforce output-plugin allowlists, permit kafgres in output_plugin_libraries and reload configuration if the broker reports that it may not be used as an output plugin. Library preloading still needs a restart. Follow the upstream 0.3.1 upgrade notes for existing transactional segment records; copying the library alone is not a storage migration.
