---
title: Quick Start
weight: 2201
description: Four-step process overview for using extensions
icon: fa-solid fa-rocket
module: [PGSQL]
categories: [Tutorial]
tags: [Extension]
---

Using extensions in Pigsty requires four steps: **Download**, **Install**, **Config**, and **Create**.

1. **Download**: Download extension packages to the local repository (Pigsty has already downloaded mainstream extensions by default)
2. **Install**: Install extension packages on cluster nodes
3. **Config**: Some extensions need to be preloaded or configured with parameters
4. **Create**: Execute `CREATE EXTENSION` in the database to create the extension

--------

## Declarative Configuration

Declare extensions in the Pigsty configuration manifest, and they will be automatically installed and created during cluster initialization:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases:
      - name: meta
        extensions: [ postgis, timescaledb, vector ]   # Create extensions in database
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain' # Preload extension libraries
    pg_extensions: [ postgis, timescaledb, pgvector ]  # Install extension packages
```

After executing `./pgsql.yml` to initialize the cluster, the three extensions `postgis`, `timescaledb`, and `vector` will be available in the `meta` database.


--------

## Imperative Operations

For existing clusters, you can add extensions using command-line methods:

```bash
# 1. Install extension packages
./pgsql.yml -l pg-meta -t pg_extension -e '{"pg_extensions":["pgvector"]}'

# 2. Preload extension (if needed, requires restart after modification)
pg edit-config pg-meta --force -p shared_preload_libraries='timescaledb, pg_stat_statements, auto_explain'

# 3. Create extension in database
psql -d meta -c 'CREATE EXTENSION vector;'
```

You can also use the [pig](https://pgext.cloud/pig) package manager to install directly:

```bash
pig install pgvector        # Install extension package
pig extension create vector  # Create extension in database
```


--------

## Process Quick Reference

| Step | Parameter/Command | Description |
|:----:|:----------|:-----|
| Download | [`repo_extra_packages`](/docs/infra/param#repo_extra_packages) | Specify extension packages to download to local repository |
| Install | [`pg_extensions`](/docs/pgsql/param#pg_extensions) | Specify extension packages to install on cluster |
| Config | [`pg_libs`](/docs/pgsql/param#pg_libs) | Preload extensions to `shared_preload_libraries` |
| Create | [`pg_databases.extensions`](/docs/pgsql/config/db) | Automatically execute `CREATE EXTENSION` in database |

> For detailed instructions, please refer to each subsection: [Download](download), [Install](install), [Config](config), [Create](create)

