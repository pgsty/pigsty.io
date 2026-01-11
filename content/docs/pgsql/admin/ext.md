---
title: Managing PostgreSQL Extensions
linkTitle: Extension Management
weight: 40
description: Download, install, configure, enable, update, and remove PostgreSQL extensions
icon: fas fa-puzzle-piece
module: [PGSQL]
categories: [Task]
---

The complete workflow for managing PostgreSQL extensions includes: **Download**, **Install**, **Configure**, **Enable**, **Update**, **Remove**.


--------

## Quick Reference

| Action | Declarative Config | Imperative Command |
|:-------|:-------------------|:-------------------|
| Download | [`repo_extra_packages`](/docs/infra/param#repo_extra_packages) | `./infra.yml -t repo_build` |
| Install | [`pg_extensions`](/docs/pgsql/param#pg_extensions) | `./pgsql.yml -l <cls> -t pg_extension` |
| Configure | [`pg_libs`](/docs/pgsql/param#pg_libs) | `pg edit-config <cls> -p shared_preload_libraries='...'` |
| Enable | [`pg_databases.extensions`](/docs/pgsql/config/db) | `psql -c 'CREATE EXTENSION <name>;'` |
| Update | - | `ALTER EXTENSION <name> UPDATE;` |
| Remove | - | `DROP EXTENSION <name>;` |

> For detailed documentation, see the [**Extensions**](/docs/pgsql/ext/) section.


--------

## Install Extensions

To install extensions in a cluster, add extension names to the [`pg_extensions`](/docs/pgsql/param#pg_extensions) parameter, and the cluster will automatically install them during initialization:

```yaml
all:
  children:
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: pg-meta
        pg_extensions: [ pgvector, vchord ]   # <---- Add extensions
```

If the cluster is already created, you can use the `pg_ext` subtask tag of the [`pgsql.yml`](/docs/pgsql/playbook/#pgsqlyml) playbook to install extensions:

```bash
./pgsql.yml -l pg-meta -t pg_ext
```

If you don't want to add extensions to the configuration file, you can pass the extension list via the `-e` option on the command line:

```bash
./pgsql.yml -l pg-meta -t pg_ext -e '{"pg_extensions": ["pg_duckdb", "pg_mooncake"]}'
```

To install extensions, you need to ensure:

- You have correctly configured software repositories, e.g., [`node_repo_modules`](/docs/node/param#node_repo_modules) contains `node,pgsql` repository modules.
- If you haven't configured upstream repositories, the offline package or built local repository already contains this extension (typically the [**rich**](/docs/conf/rich) template downloads most extensions).
- This extension is available for the current PostgreSQL major version and Linux OS combination (check [**PGEXT.CLOUD**](https://pgext.cloud/list) extension list)


--------

## Add Extension Repository

If you're not using offline packages or the [**production deployment**](/docs/deploy/install) mode that builds a local repository to pre-download extensions,

you can use the following commands to manually add required repositories to nodes:

```bash
./node.yml -t node_repo -e node_repo_modules=node,pgsql,infra           # Add extension repositories
./node.yml -t node_repo -e node_repo_modules=node,pgsql,infra,local     # Including local repository
```


--------

## Download Extensions

Pigsty automatically downloads mainstream extensions to local repositories during installation. For additional extensions, add to configuration and rebuild the repository:

```yaml
repo_extra_packages: [ pgvector, postgis, timescaledb, pg_duckdb ]
```

```bash
./infra.yml -t repo_build      # Re-download packages to local repository
./node.yml -t node_repo        # Refresh node package cache
```

You can also use upstream repositories directly without pre-downloading:

```bash
./node.yml -t node_repo -e node_repo_modules=node,pgsql  # Add PGDG and Pigsty upstream repositories
```


--------

## Install Extensions

### During Cluster Initialization

Declare extensions in cluster configuration for automatic installation during initialization:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_extensions: [ postgis, timescaledb, pgvector, pg_duckdb ]
```

### On Existing Clusters

```bash
# Using Pigsty playbook
./pgsql.yml -l pg-meta -t pg_extension -e '{"pg_extensions":["pgvector"]}'

# Using pig package manager
pig install pgvector

# Direct package manager (EL)
sudo yum install -y pgvector_17*

# Direct package manager (Debian/Ubuntu)
sudo apt install -y postgresql-17-pgvector
```

### Package Aliases

Pigsty supports package aliases, automatically translating to the correct package name for the OS and PG version:

```yaml
pg_extensions:
  - pgvector      # Auto-translates to pgvector_17* or postgresql-17-pgvector
  - pgsql-gis     # Category alias, installs entire GIS category
```


--------

## Configure Extensions

Some extensions need to be preloaded into `shared_preload_libraries`, requiring a **database restart** after modification.

### Common Extensions Requiring Preload

| Extension | Description |
|:----------|:------------|
| `timescaledb` | Time-series database, must be first |
| `citus` | Distributed database, must be first |
| `pg_cron` | Job scheduling |
| `pg_stat_statements` | SQL statement statistics (enabled by default) |
| `auto_explain` | Slow query execution plans (enabled by default) |

### Configure During Cluster Initialization

```yaml
pg-meta:
  vars:
    pg_cluster: pg-meta
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'
    pg_extensions: [ timescaledb, postgis, pgvector ]
```

### Modify Configuration on Existing Clusters

```bash
pg edit-config pg-meta --force -p shared_preload_libraries='timescaledb, pg_stat_statements, auto_explain'
pg restart pg-meta   # Restart to apply changes
```


--------

## Enable Extensions

After installing extension packages, you need to execute `CREATE EXTENSION` in the database to use them.

### Enable During Cluster Initialization

```yaml
pg_databases:
  - name: meta
    extensions:
      - { name: vector }
      - { name: postgis, schema: public }
```

### Manual Enable

```sql
CREATE EXTENSION vector;                      -- Create extension
CREATE EXTENSION postgis SCHEMA public;       -- Specify schema
CREATE EXTENSION IF NOT EXISTS vector;        -- Idempotent creation
CREATE EXTENSION postgis_topology CASCADE;    -- Auto-install dependencies
```

### Check Extension Status

```sql
SELECT * FROM pg_available_extensions WHERE name = 'vector';  -- View available extensions
SELECT * FROM pg_extension;                                   -- View enabled extensions
\dx                                                           -- psql shortcut
```


--------

## Update Extensions

Extension updates involve two layers: **package update** and **extension object update**.

### Update Packages

```bash
sudo yum update pgvector_17*                  # EL systems
sudo apt update && sudo apt upgrade postgresql-17-pgvector  # Debian/Ubuntu
pig update pgvector                           # Using pig
```

### Update Extension Objects

```sql
-- View upgradeable extensions
SELECT name, installed_version, default_version
FROM pg_available_extensions
WHERE installed_version IS NOT NULL AND installed_version <> default_version;

-- Update extension
ALTER EXTENSION vector UPDATE;
ALTER EXTENSION vector UPDATE TO '0.8.0';     -- Update to specific version
```

> **Note**: Back up your database before updating. Preloaded extensions may require restart after update.


--------

## Remove Extensions

Removing extensions involves two layers: **dropping extension objects** and **uninstalling packages**.

### Drop Extension Objects

```sql
DROP EXTENSION vector;              -- Drop extension
DROP EXTENSION vector CASCADE;      -- Cascade drop (use with caution)
```

### Check Dependencies

```sql
SELECT classid::regclass, objid, deptype
FROM pg_depend
WHERE refobjid = (SELECT oid FROM pg_extension WHERE extname = 'vector');
```

### Remove from Preload

If it's a preloaded extension, remove from `shared_preload_libraries`:

```bash
pg edit-config pg-meta --force -p shared_preload_libraries='pg_stat_statements, auto_explain'
pg restart pg-meta
```

### Uninstall Packages (Optional)

```bash
sudo yum remove pgvector_17*                  # EL systems
sudo apt remove postgresql-17-pgvector        # Debian/Ubuntu
pig remove pgvector                           # Using pig
```


--------

## Add Extension Repositories

To install extensions directly from upstream, you can manually add repositories.

### YUM Repository (EL Systems)

```bash
# Pigsty repository
curl -fsSL https://repo.pigsty.io/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null
curl -fsSL https://repo.pigsty.io/yum/repo | sudo tee /etc/yum.repos.d/pigsty.repo >/dev/null

# China mainland mirror
curl -fsSL https://repo.pigsty.cc/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null
curl -fsSL https://repo.pigsty.cc/yum/repo | sudo tee /etc/yum.repos.d/pigsty.repo >/dev/null
```

### APT Repository (Debian/Ubuntu)

```bash
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql ${distro_codename} main
EOF
sudo apt update

# China mainland mirror: replace repo.pigsty.io with repo.pigsty.cc
```

### Using Pigsty Playbook to Add Repositories

```bash
./node.yml -t node_repo -e node_repo_modules=node,pgsql        # Add PGDG and Pigsty repositories
./node.yml -t node_repo -e node_repo_modules=node,pgsql,local  # Including local repository
```


--------

## FAQ

### Difference Between Extension Name and Package Name

- **Extension name**: Name used with `CREATE EXTENSION`, e.g., `vector`
- **Package alias**: Name used in Pigsty configuration, e.g., `pgvector`
- **Package name**: Actual OS package name, e.g., `pgvector_17*` or `postgresql-17-pgvector`

### Preloaded Extension Prevents Startup

If an extension in `shared_preload_libraries` doesn't exist or fails to load, PostgreSQL won't start. Solutions:

1. Ensure the extension is correctly installed
2. Or remove the extension from `shared_preload_libraries`

### Extension Dependencies

Some extensions depend on others, requiring sequential creation or using `CASCADE`:

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
-- Or
CREATE EXTENSION postgis_topology CASCADE;
```


--------

## Related Resources

- [**Extensions**](/docs/pgsql/ext/): Detailed extension management documentation
- [**Extension Catalog**](https://pgext.cloud/list): Browse 400+ available extensions
- [**pig Package Manager**](https://pgext.cloud/pig): Extension installation tool
