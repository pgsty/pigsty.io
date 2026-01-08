---
title: Download
weight: 2204
description: Download extension packages from software repositories to local
icon: fas fa-download
module: [PGSQL]
tags: [Extension]
categories: [Reference]
---

Before installing extensions, ensure that extension packages are downloaded to the local repository or available from upstream.


--------

## Default Behavior

Pigsty automatically downloads mainstream extensions available for the default PostgreSQL version to the local software repository during installation.

Benefits of using a local repository:
- Accelerated installation, avoiding repeated downloads
- Reduced network traffic consumption
- Improved delivery reliability
- Ensured version consistency


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

You can also install directly from internet upstream repositories without pre-downloading:

```bash
# Add upstream software sources on nodes
./node.yml -t node_repo -e node_repo_modules=node,pgsql
```

This approach is suitable for:
- Quick testing of latest versions
- Installing rare extensions
- Environments with good network conditions

But may face:
- Network instability affecting installation
- Version inconsistency risks


--------

## Extension Sources

Extension packages come from two main sources:

| Repository | Description |
|:-----|:-----|
| **PGDG** | PostgreSQL official repository, providing core extensions |
| **Pigsty** | Pigsty supplementary repository, providing additional extensions |

The Pigsty repository only includes extensions not present in the PGDG repository. Once an extension enters the PGDG repository, the Pigsty repository will remove it or keep it consistent.

Repository URLs:
- PGDG YUM: https://download.postgresql.org/pub/repos/yum/
- PGDG APT: https://apt.postgresql.org/pub/repos/apt/
- Pigsty YUM: https://repo.pigsty.io/yum/
- Pigsty APT: https://repo.pigsty.io/apt/

For detailed repository configuration, see [Extension Repository](repo).

