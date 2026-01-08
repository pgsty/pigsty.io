---
title: Install
weight: 2205
description: Install extension packages on cluster nodes
icon: fas fa-box-open
module: [PGSQL]
tags: [Extension]
categories: [Tutorial]
---

Pigsty uses the operating system's package manager (yum/apt) to install extension packages.


--------

## Related Parameters

Two parameters are used to specify extensions to install:

| Parameter | Purpose | Default Behavior |
|:-----|:-----|:---------|
| [`pg_packages`](/docs/pgsql/param#pg_packages) | Global common packages | Ensure present (no upgrade) |
| [`pg_extensions`](/docs/pgsql/param#pg_extensions) | Cluster-specific extensions | Install latest version |

`pg_packages` is typically used to specify base components needed by all clusters (PostgreSQL kernel, Patroni, pgBouncer, etc.) and essential extensions.

`pg_extensions` is used to specify extensions needed by specific clusters.

```yaml
pg_packages:                           # Global base packages
  - pgsql-main pgsql-common
pg_extensions:                         # Cluster extensions
  - postgis timescaledb pgvector
```


--------

## Install During Cluster Initialization

Declare extensions in cluster configuration, and they will be automatically installed during initialization:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_extensions: [ postgis, timescaledb, pgvector, pg_duckdb ]
```

When executing `./pgsql.yml` to initialize the cluster, extensions will be automatically installed.


--------

## Install Extensions on Existing Cluster

For initialized clusters, there are multiple ways to install extensions:

### Using Pigsty Playbook

```bash
# Install using playbook after modifying configuration
./pgsql.yml -l pg-meta -t pg_extension

# Or specify extensions directly on command line
./pgsql.yml -l pg-meta -t pg_extension -e '{"pg_extensions":["pg_duckdb"]}'
```

### Using pig Package Manager

```bash
# Install extension using pig
pig install pg_duckdb

# Batch install
ansible pg-meta -b -a 'pig install pg_duckdb pgvector'
```

### Using Package Manager Directly

```bash
# EL systems
sudo yum install -y pg_duckdb_18*

# Debian/Ubuntu systems
sudo apt install -y postgresql-18-pg-duckdb
```


--------

## Using Package Aliases

Pigsty supports using standardized package aliases, automatically translating to package names for the corresponding PG version:

```yaml
pg_extensions:
  - pgvector           # Auto-translates to pgvector_18* (EL) or postgresql-18-pgvector (Debian)
  - postgis            # Auto-translates to postgis36_18* (EL) or postgresql-18-postgis-3* (Debian)
  - pgsql-gis          # Category alias, installs entire GIS category of extensions
```

You can also use raw package names directly:

```yaml
pg_extensions:
  - pgvector_18*                    # EL system raw package name
  - postgresql-18-pgvector          # Debian system raw package name
```

For package alias definitions, see:

- [EL8 Extension List](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el8.x86_64.yml)
- [EL9 Extension List](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el9.x86_64.yml)
- [D12 Extension List](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d12.x86_64.yml)
- [U22 Extension List](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u22.x86_64.yml)
- [U24 Extension List](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u24.x86_64.yml)


--------

## Verify Installation

After installation, verify in the database:

```sql
-- Check installed extensions
SELECT * FROM pg_available_extensions WHERE name = 'vector';

-- Check if extension files exist
\dx
```

