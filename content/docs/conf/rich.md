---
title: rich
weight: 220
description: Feature-rich single-node configuration with local software repository, all extensions, Silo backup, and complete examples
icon: fa-solid fa-gem
categories: [Reference]
---

The [`rich`](https://github.com/pgsty/pigsty/blob/main/conf/rich.yml) configuration template extends [`meta`](/docs/conf/meta/). Use it to try the complete set of features.

Use this template to build a local software repository, use Silo backup storage, or run Docker applications. It also provides preconfigured business databases.


--------

## Overview

- Config Name: `rich`
- Node Count: Single node
- Description: Feature-rich single-node configuration, adding local software repository, Silo backup, complete extensions, Docker application examples on top of `meta`
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/), [`fat`](/docs/conf/fat/)

This template's main enhancements over `meta`:

- Builds local software repository (`repo_enabled: true`), downloads all PG extensions
- Enables single-node Silo as PostgreSQL backup storage
- Preinstalls TimescaleDB, pgvector, pg_wait_sampling and other extensions
- Includes detailed user/database/service definition comment examples
- Adds Redis primary-replica instance example
- Preconfigures pg-test three-node HA cluster configuration stub

Usage:

```bash
./configure -c rich [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/rich.yml`](https://github.com/pgsty/pigsty/blob/main/conf/rich.yml)

{{< include file="yaml/rich.yml" code=true lang="yaml" >}}


--------

## Explanation

The `rich` template provides a **complete functionality showcase configuration**. Use it to learn how all features work.

**Use Cases**:
- Offline environments requiring local software repository
- Environments needing Silo as PostgreSQL backup storage
- Pre-planning multiple business databases and users
- Running Docker applications (pgAdmin, Bytebase, etc.)
- Learners wanting to understand complete configuration parameter usage

**Main Differences from meta**:
- Enables local software repository building (`repo_enabled: true`)
- Enables Silo backup storage (compatibility preset `pgbackrest_method: minio`)
- Preinstalls TimescaleDB, pg_wait_sampling and other additional extensions
- Includes detailed parameter comments for understanding configuration meanings
- Preconfigures HA cluster stub configuration (pg-test)

**Notes**:
- Some extensions are unavailable on ARM64. Adjust the configuration as needed.
- Building local software repository requires longer time and larger disk space
- The default passwords are examples. Change them before production use.
