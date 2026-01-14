---
title: Managing PostgreSQL Extensions
linktitle: Extension Admin
weight: 40
description: Extension management - download, install, configure, enable, update, and remove extensions
icon: fas fa-puzzle-piece
module: [PGSQL]
categories: [Task]
---

## Quick Start

Pigsty provides [**440+ extensions**](https://pgext.cloud/list). Using extensions involves four steps: **Download**, **Install**, **Configure**, **Enable**.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_extensions: [ postgis, timescaledb, pgvector ]           # <--- Install extension packages
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'    # <--- Configure preload extensions
    pg_databases:
      - name: meta
        extensions: [ postgis, timescaledb, vector ]            # <--- Enable in database
```


{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-ext <cls>           # Install extensions defined in config on <cls> cluster
bin/pgsql-ext <cls> [ext...]  # Install extensions specified on command line
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l pg-meta -t pg_ext    # Use playbook to install extensions
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-ext pg-meta                         # Install defined extensions on pg-meta cluster
bin/pgsql-ext pg-meta pg_duckdb pg_mooncake   # Install specified extensions
```
{{% /tab %}}
{{< /tabpane >}}

For complete extension reference, see [**Extensions**](/docs/pgsql/ext/). For available extensions, see [**Extension Catalog**](https://pgext.cloud/list).

| Action                          | Command                        | Description                              |
|:--------------------------------|:-------------------------------|:-----------------------------------------|
| [**Download Extensions**](#download-extensions) | `./infra.yml -t repo_build` | Download extensions to local repo        |
| [**Install Extensions**](#install-extensions) | `bin/pgsql-ext <cls>`       | Install extension packages on cluster    |
| [**Configure Extensions**](#configure-extensions) | `pg edit-config <cls> -p`   | Add to preload libs (requires restart)   |
| [**Enable Extensions**](#enable-extensions) | `psql -c 'CREATE EXT ...'`  | Create extension objects in database     |
| [**Update Extensions**](#update-extensions) | `ALTER EXTENSION UPDATE`    | Update packages and extension objects    |
| [**Remove Extensions**](#remove-extensions) | `DROP EXTENSION`            | Drop extension objects, uninstall pkgs   |
{.full-width}


{{< asciinema file="demo/pgsql-ext.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}




----------------

## Install Extensions

Extensions defined in [**`pg_extensions`**](/docs/pgsql/param#pg_extensions) are auto-installed during PostgreSQL [**cluster creation**](/docs/pgsql/admin/cluster#create-cluster) in the `pg_extension` task.

To install extensions on an existing cluster, add extensions to `all.children.<cls>.pg_extensions`, then execute:

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-ext <cls>   # Install extensions on <cls> cluster
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <cls> -t pg_extension   # Use Ansible playbook
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-ext pg-meta    # Install extensions defined in config on pg-meta
```
{{% /tab %}}
{{< /tabpane >}}

**Example: Install PostGIS, TimescaleDB and PGVector on cluster**

```yaml
#all.children.pg-meta.vars:
pg_extensions: [ postgis, timescaledb, pgvector ]
```

**Result**: Installs extension packages on all cluster nodes. Pigsty auto-translates [**package aliases**](/docs/pgsql/config/alias) to actual package names for OS and PG version.


{{% alert title="Ensure repos available before install" color="secondary" %}}
Before installing, ensure nodes have correct repos configured - extensions [**downloaded**](#download-extensions) to local repo, or [**upstream repos configured**](#configure-repos).
{{% /alert %}}


----------------

## Manual Install

If you don't want to use Pigsty config to manage extensions, pass extension list directly on command line:

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-ext pg-meta pg_duckdb pg_mooncake   # Install specified extensions on pg-meta
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l pg-meta -t pg_ext -e '{"pg_extensions": ["pg_duckdb", "pg_mooncake"]}'
```
{{% /tab %}}

{{< /tabpane >}}

You can also use [**pig**](/docs/pig) package manager CLI to install extensions on single node, with auto [**package alias**](/docs/pgsql/config/alias) resolution.

```bash
pig install postgis timescaledb       # Install multiple extensions
pig install pgvector -v 17            # Install for specific PG major version

ansible pg-test -b -a 'pig install pg_duckdb'   # Batch install on cluster with Ansible
```

You can also **use OS package manager directly** (`apt/dnf`), but you must know the exact RPM/DEB package name for your OS/PG:

```bash
# EL systems (RHEL, Rocky, Alma, Oracle Linux)
sudo yum install -y pgvector_17*

# Debian / Ubuntu
sudo apt install -y postgresql-17-pgvector
```


----------------

## Download Extensions

To install extensions, ensure node's [**extension repos**](/docs/repo/pgsql) contain the extension:

- [**Standalone install**](/docs/setup/install): No worries, upstream repos already added to node.
- [**Offline install**](/docs/setup/offline): No worries, most extensions included in offline package, few require online install.
- [**Production multi-node deployment**](/docs/deploy/install) with local repo: depends - if extension was in [`repo_packages`](/docs/infra/param/#repo_packages) / [`repo_extra_packages`](/docs/infra/param/#repo_extra_packages) when creating local repo, it's already downloaded. Otherwise download first or [**configure upstream repos**](#configure-repos) for online install.

Pigsty's default config auto-downloads mainstream extensions during installation. For additional extensions, add to [**`repo_extra_packages`**](/docs/infra/param#repo_extra_packages) and rebuild repo:

```yaml
repo_extra_packages: [ pgvector, postgis, timescaledb ]
```

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
make repo         # Shortcut = repo-build + node-repo
make repo-build   # Rebuild Infra repo (download packages and deps)
make node-repo    # Refresh node repo cache, update Infra repo reference
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./deploy.yml -t repo_build,node_repo  # Execute both tasks at once
./infra.yml -t repo_build     # Re-download packages to local repo
./node.yml  -t node_repo      # Refresh node repo cache
```
{{% /tab %}}
{{< /tabpane >}}


----------------

## Configure Repos

You can also let all nodes use upstream repos directly (not recommended for production), skipping download and installing from [**upstream extension repos**](/docs/repo/pgsql):

```bash
./node.yml -t node_repo -e node_repo_modules=node,pgsql   # Add PGDG and Pigsty upstream repos
```

----------------

## Configure Extensions

Some extensions require preloading to [**`shared_preload_libraries`**](https://www.postgresql.org/docs/current/runtime-config-resource.html#GUC-SHARED-PRELOAD-LIBRARIES), requiring **database restart** after modification.

Use [**`pg_libs`**](/docs/pgsql/param#pg_libs) as its default value to configure preload extensions, but this only takes effect during cluster init - later modifications are ineffective.

```yaml
pg-meta:
  vars:
    pg_cluster: pg-meta
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'   # Preload extensions
    pg_extensions: [ timescaledb, postgis, pgvector ]          # Install packages
```


For existing clusters, refer to [**Modify Config**](/docs/pgsql/admin/patroni#edit-config) to modify `shared_preload_libraries`:

```bash
pg edit-config pg-meta --force -p shared_preload_libraries='timescaledb, pg_stat_statements, auto_explain'
pg restart pg-meta   # Modify pg-meta params and restart to apply
```

Ensure extension packages are correctly installed before adding preload config. If extension in `shared_preload_libraries` doesn't exist or fails to load, PostgreSQL **won't start**.
Also, manage cluster config changes through Patroni - avoid using `ALTER SYSTEM` or [**`pg_parameters`**](/docs/pgsql/param#pg_parameters) to modify instance config separately.
If primary and replica configs differ, it may cause startup failure or replication interruption.




----------------

## Enable Extensions

After installing packages, execute `CREATE EXTENSION` in database to use extension features.

**Enable during cluster init**

Declare extensions to enable in [**database definition**](/docs/pgsql/config/db) via `extensions` array:

```yaml
pg_databases:
  - name: meta
    extensions:
      - vector                             # Simple form
      - { name: postgis, schema: public }  # Specify schema
```

**Manual enable**

{{< tabpane text=true persist=header >}}
{{% tab header="SQL" %}}
```sql
CREATE EXTENSION vector;                      -- Create extension
CREATE EXTENSION postgis SCHEMA public;       -- Specify schema
CREATE EXTENSION IF NOT EXISTS vector;        -- Idempotent creation
CREATE EXTENSION postgis_topology CASCADE;    -- Auto-install dependencies
```
{{% /tab %}}
{{% tab header="psql" %}}
```bash
psql -d meta -c 'CREATE EXTENSION vector;'                  # Create extension in meta database
psql -d meta -c 'CREATE EXTENSION postgis SCHEMA public;'   # Specify schema
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
# After modifying database definition, use playbook to enable extensions
bin/pgsql-db pg-meta meta    # Creating/modifying database auto-enables defined extensions
```
{{% /tab %}}
{{< /tabpane >}}

**Result**: Creates extension objects (functions, types, operators, index methods, etc.) in database, enabling use of extension features.


----------------

## Update Extensions

Extension updates involve two layers: **package update** and **extension object update**.

**Update packages**

{{< tabpane text=true persist=header >}}
{{% tab header="pig" %}}
```bash
pig update pgvector                           # Update extension with pig
```
{{% /tab %}}
{{% tab header="yum" %}}
```bash
sudo yum update pgvector_18 # EL
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
sudo apt upgrade postgresql-18-pgvector  # Debian/Ubuntu
```
{{% /tab %}}
{{< /tabpane >}}

**Update extension objects**

```sql
-- View upgradeable extensions
SELECT name, installed_version, default_version FROM pg_available_extensions
WHERE installed_version IS NOT NULL AND installed_version <> default_version;

-- Update extension to latest version
ALTER EXTENSION vector UPDATE;

-- Update to specific version
ALTER EXTENSION vector UPDATE TO '0.8.1';
```

{{% alert title="Update Notes" color="info" %}}
Backup database before updating extensions. Preloaded extensions may require PostgreSQL restart after update. Some extension version upgrades may be incompatible - check extension docs.
{{% /alert %}}


----------------

## Remove Extensions

Removing extensions involves two layers: **drop extension objects** and **uninstall packages**.

**Drop extension objects**

```sql
DROP EXTENSION vector;              -- Drop extension
DROP EXTENSION vector CASCADE;      -- Cascade drop (drops dependent objects)
```

**Remove from preload**

For preloaded extensions, remove from `shared_preload_libraries` and restart:

```bash
pg edit-config pg-meta --force -p shared_preload_libraries='pg_stat_statements, auto_explain'
pg restart pg-meta   # Restart to apply config
```

**Uninstall packages (optional)**

{{< tabpane text=true persist=header >}}
{{% tab header="pig" %}}
```bash
pig remove pgvector                           # Uninstall with pig
```
{{% /tab %}}
{{% tab header="yum" %}}
```bash
sudo yum remove pgvector_17*                  # EL systems
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
sudo apt remove postgresql-17-pgvector        # Debian/Ubuntu
```
{{% /tab %}}
{{< /tabpane >}}

{{% alert title="CASCADE Warning" color="warning" %}}
Using `CASCADE` to drop extensions also drops all objects depending on that extension (tables, indexes, views, etc.). Check dependencies before executing.
{{% /alert %}}


----------------

## Query Extensions

Common SQL queries for extension info:

**View enabled extensions**

```sql
SELECT extname, extversion, nspname AS schema
FROM pg_extension e JOIN pg_namespace n ON e.extnamespace = n.oid
ORDER BY extname;
```

**View available extensions**

```sql
SELECT name, default_version, installed_version, comment
FROM pg_available_extensions
WHERE installed_version IS NOT NULL   -- Only show installed
ORDER BY name;
```

**Check if extension is available**

```sql
SELECT * FROM pg_available_extensions WHERE name = 'vector';
```

**View extension dependencies**

```sql
SELECT e.extname, d.refobjid::regclass AS depends_on
FROM pg_extension e
JOIN pg_depend d ON d.objid = e.oid
WHERE d.deptype = 'e' AND e.extname = 'postgis_topology';
```

**View extension objects**

```sql
SELECT classid::regclass, objid, deptype
FROM pg_depend
WHERE refobjid = (SELECT oid FROM pg_extension WHERE extname = 'vector');
```

**psql shortcuts**

```bash
\dx                    # List enabled extensions
\dx+ vector            # Show extension details
```


----------------

## Add Repos

To install directly from upstream, manually add repos.

**Using Pigsty playbook**

```bash
./node.yml -t node_repo -e node_repo_modules=node,pgsql        # Add PGDG and Pigsty repos
./node.yml -t node_repo -e node_repo_modules=node,pgsql,local  # Including local repo
```

**YUM repos (EL systems)**

```bash
# Pigsty repo
curl -fsSL https://repo.pigsty.io/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null
curl -fsSL https://repo.pigsty.io/yum/repo | sudo tee /etc/yum.repos.d/pigsty.repo >/dev/null

# China mainland mirror
curl -fsSL https://repo.pigsty.cc/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null
curl -fsSL https://repo.pigsty.cc/yum/repo | sudo tee /etc/yum.repos.d/pigsty.repo >/dev/null
```

**APT repos (Debian/Ubuntu)**

```bash
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg
sudo tee /etc/apt/sources.list.d/pigsty.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql $(lsb_release -cs) main
EOF
sudo apt update

# China mainland mirror: replace repo.pigsty.io with repo.pigsty.cc
```


----------------

## FAQ

**Difference between extension name and package name**

| Name | Description | Example |
|:-----|:------------|:--------|
| Extension name | Name used with `CREATE EXTENSION` | `vector` |
| Package alias | Standardized name in Pigsty config | `pgvector` |
| Package name | Actual OS package name | `pgvector_17*` or `postgresql-17-pgvector` |
{.full-width}

**Preloaded extension prevents startup**

If extension in `shared_preload_libraries` doesn't exist or fails to load, PostgreSQL won't start. Solutions:

1. Ensure extension package is correctly installed
2. Or remove extension from `shared_preload_libraries` (edit `/pg/data/postgresql.conf`)

**Extension dependencies**

Some extensions depend on others, requiring sequential creation or using `CASCADE`:

```sql
CREATE EXTENSION postgis;                    -- Create base extension first
CREATE EXTENSION postgis_topology;           -- Then create dependent extension
-- Or
CREATE EXTENSION postgis_topology CASCADE;   -- Auto-create dependencies
```

**Extension version incompatibility**

View extension versions supported by current PostgreSQL:

```sql
SELECT * FROM pg_available_extension_versions WHERE name = 'vector';
```


----------------

## Related Resources

- [**Extensions**](/docs/pgsql/ext/): Detailed extension management documentation
- [**Extension Catalog**](https://pgext.cloud/list): Browse 440+ available extensions
- [**pig Package Manager**](https://pgext.cloud/pig): Extension installation CLI tool
- [**Database Management**](/docs/pgsql/admin/db/): Enable extensions in databases

