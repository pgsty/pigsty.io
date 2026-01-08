---
title: rich
weight: 765
description: Feature-rich single-node configuration with local software repository, all extensions, MinIO backup, and complete examples
icon: fa-solid fa-gem
categories: [Reference]
---

The [`rich`](https://github.com/Vonng/pigsty/blob/main/conf/rich.yml) configuration template is an enhanced version of [`meta`](/docs/conf/meta/), designed for users who need to experience complete functionality.

If you want to build a local software repository, use MinIO for backup storage, run Docker applications, or need preconfigured business databases, use this template.


--------

## Overview

- Config Name: `rich`
- Node Count: Single node
- Description: Feature-rich single-node configuration, adding local software repository, MinIO backup, complete extensions, Docker application examples on top of `meta`
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/), [`fat`](/docs/conf/fat/)

This template's main enhancements over `meta`:

- Builds local software repository (`repo_enabled: true`), downloads all PG extensions
- Enables single-node MinIO as PostgreSQL backup storage
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

Source: [`pigsty/conf/rich.yml`](https://github.com/Vonng/pigsty/blob/main/conf/rich.yml)

{{< readfile file="yaml/rich.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `rich` template is Pigsty's **complete functionality showcase configuration**, suitable for users who want to deeply experience all features.

**Use Cases**:
- Offline environments requiring local software repository
- Environments needing MinIO as PostgreSQL backup storage
- Pre-planning multiple business databases and users
- Running Docker applications (pgAdmin, Bytebase, etc.)
- Learners wanting to understand complete configuration parameter usage

**Main Differences from meta**:
- Enables local software repository building (`repo_enabled: true`)
- Enables MinIO storage backup (`pgbackrest_method: minio`)
- Preinstalls TimescaleDB, pg_wait_sampling and other additional extensions
- Includes detailed parameter comments for understanding configuration meanings
- Preconfigures HA cluster stub configuration (pg-test)

**Notes**:
- Some extensions unavailable on ARM64 architecture, adjust as needed
- Building local software repository requires longer time and larger disk space
- Default passwords are sample passwords, must be changed for production

