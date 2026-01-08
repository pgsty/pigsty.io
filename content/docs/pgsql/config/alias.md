---
title: Package Alias
weight: 1203
description: Pigsty provides a package alias translation mechanism that shields the
  differences in binary package details across operating systems, making installation
  easier.
icon: fa-solid fa-square-binary
module: [PGSQL]
categories: [Reference]
---



PostgreSQL package naming conventions vary significantly across different operating systems:

- **EL systems** (RHEL/Rocky/Alma/...) use formats like `pgvector_17`, `postgis36_17*`
- **Debian/Ubuntu systems** use formats like `postgresql-17-pgvector`, `postgresql-17-postgis-3`

This difference adds cognitive burden to users: you need to remember different package name rules for different systems, and handle the embedding of PostgreSQL version numbers.


## Package Alias

Pigsty solves this problem through the **Package Alias** mechanism: you only need to use unified aliases, and Pigsty will handle all the details:

```yaml
# Using aliases - simple, unified, cross-platform
pg_extensions: [ postgis, pgvector, timescaledb ]

# Equivalent to actual package names on EL9 + PG17
pg_extensions: [ postgis36_17*, pgvector_17*, timescaledb-tsl_17* ]

# Equivalent to actual package names on Ubuntu 24 + PG17
pg_extensions: [ postgresql-17-postgis-3, postgresql-17-pgvector, postgresql-17-timescaledb-tsl ]
```

## Alias Translation

Aliases can also group a set of packages as a whole. For example, Pigsty's default installed packages - the default value of [**`pg_packages`**](/docs/pgsql/param#pg_packages) is:

```yaml
pg_packages:                      # pg packages to be installed, alias can be used
  - pgsql-main pgsql-common
```

Pigsty will query the current operating system alias list (assuming [**`el10.x86_64`**](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.x86_64.yml#L105)) and translate it to PGSQL kernel, extensions, and toolkits:

```yaml
pgsql-main:    "postgresql$v postgresql$v-server postgresql$v-libs postgresql$v-contrib postgresql$v-plperl postgresql$v-plpython3 postgresql$v-pltcl postgresql$v-llvmjit pg_repack_$v* wal2json_$v* pgvector_$v*"
pgsql-common:  "patroni patroni-etcd pgbouncer pgbackrest pg_exporter pgbackrest_exporter vip-manager"
```

Next, Pigsty further translates `pgsql-main` using the currently specified PG major version (assuming [**`pg_version`**](/docs/pgsql/param#pg_version) = `18`):

```yaml
pg18-main:   "postgresql18 postgresql18-server postgresql18-libs postgresql18-contrib postgresql18-plperl postgresql18-plpython3 postgresql18-pltcl postgresql18-llvmjit pg_repack_18* wal2json_18* pgvector_18*"
```

Through this approach, Pigsty shields the complexity of packages, allowing users to simply specify the functional components they want.


----------------

## Which Variables Can Use Aliases?

You can use package aliases in the following four parameters, and the aliases will be automatically converted to actual package names according to the translation process:

- [**`pg_extensions`**](/docs/pgsql/param#pg_extensions) - PG extension packages
- [**`pg_packages`**](/docs/pgsql/param#pg_extensions) - PG kernel/base utility packages
- [**`repo_packages`**](/docs/infra/param#repo_packages) - Package download parameter: packages to download to local repository
- [**`repo_packages_extra`**](/docs/pgsql/param#pg_extensions) - Extension installation parameter: additional packages to download to local repository


--------

## Alias List

You can find the alias mapping files for each operating system and architecture in the [`roles/node_id/vars/`](https://github.com/pgsty/pigsty/tree/main/roles/node_id/vars) directory of the Pigsty project source code:

- [`el10.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.x86_64.yml#L85)
- [`el10.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el10.aarch64.yml#L85)
- [`el9.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el9.x86_64.yml#L85)
- [`el9.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el9.aarch64.yml#L85)
- [`el8.x86_64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el8.x86_64.yml#L85)
- [`el8.aarch64`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/el8.aarch64.yml#L85)
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
  postgis          el9.x86_64         postgis36_$v*                   postgis36_17*
  postgis          u24.x86_64         postgresql-$v-postgis-3         postgresql-17-postgis-3
```



### Version Placeholder

Pigsty's alias system uses `$v` as a placeholder for the PostgreSQL version number. When you specify a PostgreSQL version using [`pg_version`](/docs/pgsql/param#pg_version), all `$v` in aliases will be replaced with the actual version number.

For example, when `pg_version: 17`:

| Alias Definition (EL) | Expanded Result       |
|-----------------------|-----------------------|
| `postgresql$v*`       | `postgresql17*`       |
| `pgvector_$v*`        | `pgvector_17*`        |
| `timescaledb-tsl_$v*` | `timescaledb-tsl_17*` |

| Alias Definition (Debian/Ubuntu)    | Expanded Result                 |
|-------------------------------------|---------------------------------|
| `postgresql-$v`                     | `postgresql-17`                 |
| `postgresql-$v-pgvector`            | `postgresql-17-pgvector`        |
| `postgresql-$v-timescaledb-tsl`     | `postgresql-17-timescaledb-tsl` |


### Wildcard Matching

On EL systems, many aliases use the `*` wildcard to match related subpackages. For example:

- `postgis36_17*` will match `postgis36_17`, `postgis36_17-client`, `postgis36_17-utils`, etc.
- `postgresql17*` will match `postgresql17`, `postgresql17-server`, `postgresql17-libs`, `postgresql17-contrib`, etc.

This design ensures you don't need to list each subpackage individually - one alias can install the complete extension.



