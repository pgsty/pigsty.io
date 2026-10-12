---
title: Managing PostgreSQL Extensions
linktitle: Extension Admin
weight: 90
description: Extension management - download, install, configure, enable, update, and remove extensions
icon: fas fa-puzzle-piece
module: [PGSQL]
categories: [Task]
---

## Quick Start

Pigsty provides [**{{< param pgext_count >}} extensions**](/ext/list).
To use an extension, complete four steps: **download**, **install**, **configure**, and **enable**.

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


```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-ext <cls>           # Install extensions defined in config on <cls> cluster
bin/pgsql-ext <cls> [ext...]  # Install extensions specified on command line
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l pg-meta -t pg_ext    # Use playbook to install extensions
```

```bash {tab="Example" value="example"}
bin/pgsql-ext pg-meta                         # Install defined extensions on pg-meta cluster
bin/pgsql-ext pg-meta pg_duckdb pg_mooncake   # Install specified extensions
```

For complete extension reference, see [**Extensions**](/docs/pgsql/ext/). For available extensions, see [**Extension Catalog**](/ext/list).

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

During PostgreSQL [**cluster creation**](/docs/pgsql/admin/cluster#create-cluster), the `pg_extension` task automatically installs extensions from [**`pg_extensions`**](/docs/pgsql/param#pg_extensions).

To install extensions on an existing cluster, add them to `all.children.<cls>.pg_extensions`.
Then run:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-ext <cls>   # Install extensions on <cls> cluster
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <cls> -t pg_extension   # Use Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-ext pg-meta    # Install extensions defined in config on pg-meta
```

**Example: Install PostGIS, TimescaleDB and PGVector on cluster**

```yaml
#all.children.pg-meta.vars:
pg_extensions: [ postgis, timescaledb, pgvector ]
```

**Result**: Pigsty installs extension packages on all cluster nodes.
It translates [**package aliases**](/docs/pgsql/config/alias) to package names for the operating system and PostgreSQL version.


> [!NOTE] Ensure repos available before install
> Before installation, verify that the nodes have the correct software repositories.
> [**Download extensions**](#download-extensions) to the local repository or [**configure upstream repositories**](#configure-repos).


----------------

## Manual Install

To install extensions without managing them in Pigsty configuration, pass the extension list on the command line:

```bash {tab="Script" group="script-playbook" value="script"}
bin/pgsql-ext pg-meta pg_duckdb pg_mooncake   # Install specified extensions on pg-meta
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l pg-meta -t pg_ext -e '{"pg_extensions": ["pg_duckdb", "pg_mooncake"]}'
```

You can also use the [**pig**](/docs/pig) package manager CLI to install extensions on one node.
It resolves [**package aliases**](/docs/pgsql/config/alias) automatically.

```bash
pig install postgis timescaledb       # Install multiple extensions
pig install pgvector -v 18            # Install for specific PG major version

ansible pg-test -b -a 'pig install pg_duckdb'   # Batch install on cluster with Ansible
```

You can also **use the operating system package manager directly** (`apt/dnf`).
You must know the exact RPM or DEB package name for your operating system and PostgreSQL version:

```bash
# EL systems (RHEL, Rocky, Alma, Oracle Linux)
sudo yum install -y pgvector_18*

# Debian / Ubuntu
sudo apt install -y postgresql-18-pgvector
```


----------------

## Download Extensions

Before installation, verify that the node can get the extension from its [**software repositories**](/docs/repo/pgsql):

- [**Standalone installation**](/docs/setup/install): The node already has the upstream repositories.
- [**Offline installation**](/docs/setup/offline): The offline package contains most extensions. A few require online installation.
- [**Production deployment on multiple nodes**](/docs/deploy/install) with a local repository: The extension may already be downloaded. This applies if [`repo_packages`](/docs/infra/param/#repo_packages) or [`repo_extra_packages`](/docs/infra/param/#repo_extra_packages) included it when you created the repository. Otherwise, download it first or [**configure upstream repositories**](#configure-repos) for online installation.

The default Pigsty configuration downloads common extensions during installation.
For additional extensions, add them to [**`repo_extra_packages`**](/docs/infra/param#repo_extra_packages) and rebuild the repository:

```yaml
repo_extra_packages: [ pgvector, postgis, timescaledb ]
```

```bash {tab="Script" group="script-playbook" value="script"}
make repo         # Shortcut = repo-build + node-repo
make repo-build   # Rebuild Infra repo (download packages and deps)
make node-repo    # Refresh node repo cache, update Infra repo reference
```

```bash {tab="Playbook" value="playbook"}
./deploy.yml -t repo_build,node_repo  # Execute both tasks at once
./infra.yml -t repo_build     # Re-download packages to local repo
./node.yml  -t node_repo      # Refresh node repo cache
```


----------------

## Configure Repos

You can configure all nodes to install directly from [**upstream extension repositories**](/docs/repo/pgsql).
This skips the local download step.
It is not recommended for production:

```bash
./node.yml -t node_repo -e node_repo_modules=node,pgsql   # Add PGDG and Pigsty upstream repos
```

----------------

## Configure Extensions

Some extensions must be in [**`shared_preload_libraries`**](https://www.postgresql.org/docs/current/runtime-config-resource.html#GUC-SHARED-PRELOAD-LIBRARIES).
Changes to this parameter require a **database restart**.

Use [**`pg_libs`**](/docs/pgsql/param#pg_libs) to set the default list of preload extensions.
This value applies only during cluster initialization.
Changes to this value have no effect after initialization.

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

Before you add preload configuration, verify that the extension packages are installed correctly.
If an extension in `shared_preload_libraries` is missing or cannot load, PostgreSQL **will not start**.
Manage cluster configuration changes through Patroni.
Avoid `ALTER SYSTEM` or [**`pg_parameters`**](/docs/pgsql/param#pg_parameters) for separate instance configuration changes.
Different primary and replica configurations can cause startup failure or interrupt replication.




----------------

## Enable Extensions

After you install the packages, run `CREATE EXTENSION` in the database to enable extension features.

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

```sql {tab="SQL" group="sql-psql-playbook" value="sql"}
CREATE EXTENSION vector;                      -- Create extension
CREATE EXTENSION postgis SCHEMA public;       -- Specify schema
CREATE EXTENSION IF NOT EXISTS vector;        -- Idempotent creation
CREATE EXTENSION postgis_topology CASCADE;    -- Auto-install dependencies
```

```bash {tab="psql" value="psql"}
psql -d meta -c 'CREATE EXTENSION vector;'                  # Create extension in meta database
psql -d meta -c 'CREATE EXTENSION postgis SCHEMA public;'   # Specify schema
```

```bash {tab="Playbook" value="playbook"}
# After modifying database definition, use playbook to enable extensions
bin/pgsql-db pg-meta meta    # Creating/modifying database auto-enables defined extensions
```

**Result**: Pigsty creates extension objects in the database, such as functions, types, operators, and index methods.
You can then use the extension features.


----------------

## Update Extensions

Extension updates involve two layers: **package update** and **extension object update**.

**Update packages**

```bash {tab="pig" group="pig-yum-apt" value="pig"}
pig update pgvector                           # Update extension with pig
```

```bash {tab="yum" value="yum"}
sudo yum update pgvector_18 # EL
```

```bash {tab="apt" value="apt"}
sudo apt upgrade postgresql-18-pgvector  # Debian/Ubuntu
```

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

> [!NOTE] Update Notes
> Back up the database before you update extensions.
> Preloaded extensions may require a PostgreSQL restart after an update.
> Some version upgrades may be incompatible. Check the extension documentation.


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

```bash {tab="pig" group="pig-yum-apt" value="pig"}
pig remove pgvector                           # Uninstall with pig
```

```bash {tab="yum" value="yum"}
sudo yum remove pgvector_18*                  # EL systems
```

```bash {tab="apt" value="apt"}
sudo apt remove postgresql-18-pgvector        # Debian/Ubuntu
```

> [!WARNING] CASCADE Warning
> `CASCADE` also deletes all objects that depend on the extension, such as tables, indexes, and views.
> Check dependencies before you run the command.


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

| Name           | Description                        | Example                                    |
|:---------------|:-----------------------------------|:-------------------------------------------|
| Extension name | Name used with `CREATE EXTENSION`  | `vector`                                   |
| Package alias  | Standardized name in Pigsty config | `pgvector`                                 |
| Package name   | Actual OS package name             | `pgvector_18*` or `postgresql-18-pgvector` |
{.full-width}

**Preloaded extension prevents startup**

If an extension in `shared_preload_libraries` is missing or cannot load, PostgreSQL will not start.
Use one of these solutions:

1. Ensure extension package is correctly installed
2. Or remove extension from `shared_preload_libraries` (edit `/pg/data/postgresql.conf`)

**Extension dependencies**

Some extensions depend on other extensions.
Create the dependencies first, or use `CASCADE`:

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
- [**Extension Catalog**](/ext/list): Browse {{< param pgext_count >}} available extensions
- [**pig Package Manager**](/docs/pig/): Extension installation CLI tool
- [**Database Management**](/docs/pgsql/admin/db/): Enable extensions in databases
