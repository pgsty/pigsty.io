---
title: Download
weight: 2204
description: Download extension packages to the local software repository
icon: fas fa-download
module: [PGSQL]
categories: [Reference]
---

Before you install extensions, make sure that their packages are available from the local repository or an upstream repository.


--------

## Default Behavior

By default, Pigsty downloads the base PostgreSQL 18 kernel packages to the local software repository.
The default extra download set is `repo_extra_packages_default: [ pgsql-main ]`.
This set includes the PostgreSQL kernel, client, and procedural languages.
It also includes basic extension packages such as `pg_repack`, `wal2json`, and `pgvector`.

If you need other extensions from the {{< param pgext_count >}}-extension catalog, add them to [`repo_extra_packages`](/docs/infra/param#repo_extra_packages).
Pigsty does not download every extension to the local repository by default.

A local repository provides these benefits:

- Faster installation without repeated downloads
- Less network traffic
- More reliable delivery
- Consistent package versions


--------

## Download New Extensions

To download additional extensions, add them to [`repo_extra_packages`](/docs/infra/param#repo_extra_packages) and rebuild the repository:

```yaml
all:
  vars:
    repo_extra_packages: [ pgvector, postgis, timescaledb, pg_duckdb ]
```

```bash
# Re-download packages to local repository
./infra.yml -t repo_build

# Refresh package source cache on all nodes
./node.yml -t node_repo
```


--------

## Using Upstream Repositories

You can also install packages directly from upstream repositories on the internet.
You do not need to download them in advance:

```bash
# Add upstream software sources on nodes
./node.yml -t node_repo -e node_repo_modules=node,pgsql
```

Use this method for:

- Quick testing of latest versions
- Installing rare extensions
- Environments with good network conditions

This method has these risks:

- An unstable network can interrupt installation.
- Package versions can differ.


--------

## Extension Sources

Extension packages come from two main sources:

| Repository | Description                                                      |
|:-----------|:-----------------------------------------------------------------|
| **PGDG**   | PostgreSQL official repository, providing core extensions        |
| **Pigsty** | Pigsty supplementary repository, providing additional extensions |

The Pigsty repository only includes extensions that are absent from the PGDG repository.
If PGDG adds an extension, Pigsty will remove its package or keep it consistent with PGDG.

Repository URLs:
- PGDG YUM: https://download.postgresql.org/pub/repos/yum/
- PGDG APT: https://apt.postgresql.org/pub/repos/apt/
- Pigsty YUM: https://repo.pigsty.io/yum/
- Pigsty APT: https://repo.pigsty.io/apt/

For detailed repository configuration, see [Extension Repository](/docs/pgsql/ext/repo/).
