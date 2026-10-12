---
title: Package Alias
weight: 30
description: Pigsty provides a package alias translation mechanism that shields the
  differences in binary package details across operating systems, making installation
  easier.
icon: fa-solid fa-square-binary
module: [PGSQL]
categories: [Reference]
---



PostgreSQL package names differ between operating systems:

- **EL systems** (RHEL/Rocky/Alma/...) use formats like `pgvector_18`, `postgis36_18*`
- **Debian/Ubuntu systems** use formats like `postgresql-18-pgvector`, `postgresql-18-postgis-3`

Without aliases, you need different naming rules for each system.
You must also include the correct PostgreSQL version in the names.


## Package Alias

Use a **Package Alias** to specify the same component on different platforms.
Pigsty converts it to the correct package names:

```yaml
# Using aliases - simple, unified, cross-platform
pg_extensions: [ postgis, pgvector, timescaledb ]

# Equivalent to actual package names on EL9 + PG18
pg_extensions: [ postgis36_18*, pgvector_18*, timescaledb-tsl_18* ]

# Equivalent to actual package names on Ubuntu 24 + PG18
pg_extensions: [ postgresql-18-postgis-3, postgresql-18-pgvector, postgresql-18-timescaledb-tsl ]
```

## Alias Translation

An alias can also identify a group of packages.
For example, the default [**`pg_packages`**](/docs/pgsql/param#pg_packages) value is:

```yaml
pg_packages:                      # pg packages to be installed, alias can be used
  - pgsql-main pgsql-common
```

Pigsty reads the alias list for the current operating system.
For [**`el10.x86_64`**](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.x86_64.yml#L105), it expands the aliases to PostgreSQL kernel, extension, and utility packages:

```yaml
pgsql-main:    "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit pg_repack_$v* wal2json_$v* pgvector_$v*"
pgsql-common:  "patroni patroni-etcd pgbouncer pgbackrest pg_exporter pgbackrest_exporter vip-manager"
```

Then Pigsty substitutes the selected PostgreSQL major version into `pgsql-main`.
For example, with [**`pg_version`**](/docs/pgsql/param#pg_version) = `18`:

```yaml
pg18-main:   "postgresql18 postgresql18-server postgresql18-libs postgresql18-contrib postgresql18-plperl postgresql18-plpython3 postgresql18-pltcl postgresql18-llvmjit pg_repack_18* wal2json_18* pgvector_18*"
```

This process lets you select functional components without specifying platform-specific package details.


----------------

## Which Variables Can Use Aliases?

These four parameters accept package aliases.
Pigsty converts the aliases to package names through the same process:

- [**`pg_extensions`**](/docs/pgsql/param#pg_extensions) - PG extension packages
- [**`pg_packages`**](/docs/pgsql/param#pg_extensions) - PG kernel/base utility packages
- [**`repo_packages`**](/docs/infra/param#repo_packages) - Package download parameter: packages to download to local repository
- [**`repo_extra_packages`**](/docs/pgsql/param#pg_extensions) - Extension installation parameter: additional packages to download to local repository


--------

## Alias List

The Pigsty source directory [`roles/node_id/vars/`](https://github.com/pgsty/pigsty/tree/main/roles/node_id/vars) contains alias mappings for each operating system and architecture:

- [`el10.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.x86_64.yml#L85)
- [`el10.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.aarch64.yml#L85)
- [`el9.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el9.x86_64.yml#L85)
- [`el9.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el9.aarch64.yml#L85)
- [`el8.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el8.x86_64.yml#L85)
- [`el8.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el8.aarch64.yml#L85)
- [`u26.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u26.x86_64.yml#L78)
- [`u26.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u26.aarch64.yml#L78)
- [`u24.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u24.x86_64.yml#L78)
- [`u24.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u24.aarch64.yml#L78)
- [`u22.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u22.x86_64.yml#L78)
- [`u22.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/u22.aarch64.yml#L78)
- [`d13.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d13.x86_64.yml#L78)
- [`d13.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d13.aarch64.yml#L78)
- [`d12.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d12.x86_64.yml#L78)
- [`d12.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/d12.aarch64.yml#L78)



----------------

## How It Works


### Alias Translation Process

```bash
User config alias --> Detect OS -->  Find alias mapping table ---> Replace $v placeholder ---> Install actual packages
     ↓                 ↓                   ↓                                   ↓
  postgis          el9.x86_64         postgis36_$v*                   postgis36_18*
  postgis          u24.x86_64         postgresql-$v-postgis-3         postgresql-18-postgis-3
```



### Version Placeholder

The alias system uses `$v` as a PostgreSQL version placeholder.
Pigsty replaces each `$v` in an alias with the value of [`pg_version`](/docs/pgsql/param#pg_version).

For example, when `pg_version: 18`:

| Alias Definition (EL) | Expanded Result       |
|-----------------------|-----------------------|
| `postgresql$v*`       | `postgresql18*`       |
| `pgvector_$v*`        | `pgvector_18*`        |
| `timescaledb-tsl_$v*` | `timescaledb-tsl_18*` |

| Alias Definition (Debian/Ubuntu)    | Expanded Result                 |
|-------------------------------------|---------------------------------|
| `postgresql-$v`                     | `postgresql-18`                 |
| `postgresql-$v-pgvector`            | `postgresql-18-pgvector`        |
| `postgresql-$v-timescaledb-tsl`     | `postgresql-18-timescaledb-tsl` |


### Wildcard Matching

On EL systems, many aliases use the `*` wildcard to match related subpackages.
For example:

- `postgis36_18*` will match `postgis36_18`, `postgis36_18-client`, `postgis36_18-utils`, etc.
- `postgresql18*` will match `postgresql18`, `postgresql18-server`, `postgresql18-libs`, `postgresql18-contrib`, etc.

One alias can install a complete extension.
You do not need to list each subpackage.
