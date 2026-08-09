---
title: PolarDB PG
weight: 2306
description: Using Alibaba Cloud's open-source PolarDB for PostgreSQL kernel to provide
  domestic innovation qualification support, with Oracle RAC-like user experience.
icon: fas fa-paw
module: [PGSQL]
categories: [Concept]
---



--------

## Overview

Pigsty allows you to create PostgreSQL clusters with "domestic innovation qualification" credentials using PolarDB!

PolarDB for PostgreSQL now uses PostgreSQL 17 as its base. The `polar` template, default path, and extension notes in Pigsty have all been updated to PG17. Any client tool compatible with the PostgreSQL wire protocol can access PolarDB clusters.

Pigsty's PGSQL repository provides PolarDB PG open-source installation packages, but they are not downloaded to the local software repository during Pigsty installation.

![PolarDB for PostgreSQL](/img/pigsty/polar.jpg)


--------

## Installation

Use the built-in Pigsty template:

```bash
./configure -c polar
./deploy.yml
```

--------

## Change Summary

Starting with Pigsty v4.4, the PolarDB PG kernel uses packages built and maintained by Pigsty. The main changes are:

| Item | Old docs / old default | Current |
|------|-------------------------|---------|
| Kernel baseline | PostgreSQL 15 | PostgreSQL 17 |
| Default PolarDB path | `/u01/polardb_pg` | `/usr/polar-17` |
| Supported architectures | `x86_64` | `x86_64`, `aarch64` |
| Available extensions | Old docs said 61 | `pg_available_extensions` returns 93; 34 remain after filtering contrib |
| Replication user requirement | `replicator` must be `SUPERUSER` | unchanged |
{.full-width}



--------

## Configuration

The following parameters need special configuration for PolarDB database clusters:

```yaml
#----------------------------------#
# PGSQL & PolarDB
#----------------------------------#
pg_version: 17
pg_mode: polar
pg_packages: [ polardb, pgsql-common ]
pg_exporter_exclude_database: 'template0,template1,postgres,polardb_admin'
pg_default_roles:
  - { name: dbrole_readonly  ,login: false ,comment: role for global read-only access     }
  - { name: dbrole_offline   ,login: false ,comment: role for restricted read-only access }
  - { name: dbrole_readwrite ,login: false ,roles: [dbrole_readonly] ,comment: role for global read-write access }
  - { name: dbrole_admin     ,login: false ,roles: [pg_monitor, dbrole_readwrite] ,comment: role for object creation }
  - { name: postgres     ,superuser: true  ,comment: system superuser }
  - { name: replicator   ,superuser: true  ,replication: true ,roles: [pg_monitor, dbrole_readonly] ,comment: system replicator } # <- superuser is required for replication
  - { name: dbuser_dba   ,superuser: true  ,roles: [dbrole_admin]  ,pgbouncer: true ,pool_mode: session, pool_connlimit: 16 ,comment: pgsql admin user }
  - { name: dbuser_monitor ,roles: [pg_monitor] ,pgbouncer: true ,parameters: {log_min_duration_statement: 1000 } ,pool_mode: session ,pool_connlimit: 8 ,comment: pgsql monitor user }
```

The default installation directory for the `polar` kernel has moved to `/usr/polar-17`. One important difference is that PolarDB PG still requires the `replicator` replication user to be `SUPERUSER`, unlike vanilla PostgreSQL.





--------

## Available Extensions

The PolarDB PG kernel has **93** available extensions. After removing bundled PG Contrib extensions, the following extra extensions remain:

| Extension | Version | Description |
|:----------|:--------|:------------|
| [hll](/ext/e/hll) | `2.18` | type for storing hyperloglog data |
| [ip4r](/ext/e/ip4r) | `2.4` |  |
| [log_fdw](/ext/e/log_fdw) | `1.4` | foreign-data wrapper for Postgres log file access |
| pase | `0.0.1` | ant ai similarity search |
| [pg_bigm](/ext/e/pg_bigm) | `1.2` | text similarity measurement and index searching based on bigrams |
| [pg_cron](/ext/e/pg_cron) | `1.5` | Job scheduler for PostgreSQL |
| pg_cron_preload | `1.0` | polardb pg extend catalog |
| [pg_hint_plan](/ext/e/pg_hint_plan) | `1.7.0` | optimizer hints for PostgreSQL |
| pg_jieba | `1.1.0` | a parser for full-text search of Chinese |
| [pg_partman](/ext/e/pg_partman) | `5.2.4` | Extension to manage partitioned tables by time or ID |
| [pg_profile](/ext/e/pg_profile) | `4.10` | PostgreSQL load profile repository and report builder |
| [pg_repack](/ext/e/pg_repack) | `1.5.1-1` | Reorganize tables in PostgreSQL databases with minimal locks |
| [pg_similarity](/ext/e/pg_similarity) | `1.0` | support similarity queries |
| [pg_squeeze](/ext/e/pg_squeeze) | `1.9` | A tool to remove unused space from a relation. |
| [pg_stat_kcache](/ext/e/pg_stat_kcache) | `2.3.0` | Kernel statistics gathering |
| [pgaudit](/ext/e/pgaudit) | `17.1` | provides auditing functionality |
| [pgtap](/ext/e/pgtap) | `1.3.3` | Unit testing for PostgreSQL |
| [pldbgapi](/ext/e/pldbgapi) | `1.1` | server-side support for debugging PL/pgSQL functions |
| polar_advisor | `1.1` | polar_advisor |
| polar_feature_utils | `1.0` | PolarDB feature utilization |
| polar_io_stat | `1.0` | polar io stat in multi dimension |
| polar_monitor | `1.3` | monitor functions for PolarDB |
| polar_monitor_preload | `1.0` | examine the polardb information |
| polar_parameter_manager | `1.2` | Extension to select parameters for manger. |
| polar_proxy_utils | `1.0` | Extension to provide operations about proxy. |
| polar_resource_manager | `1.0` | a background process that forcibly frees user session process memory |
| polar_smgrperf | `1.0` | smgr perf test extension |
| polar_tde_utils | `1.0` | Internal extension for TDE |
| polar_vfs | `1.0` | polar virtual file system for different storage |
| polar_worker | `1.1` | polar_worker |
| [prefix](/ext/e/prefix) | `1.2.0` | Prefix Range module for PostgreSQL |
| [roaringbitmap](/ext/e/roaringbitmap) | `0.5` | support for Roaring Bitmaps |
| [sequential_uuids](/ext/e/sequential_uuids) | `1.0.3` | generator of sequential UUIDs |
| varbitx | `1.1` | varbit functions pack |
{.full-width}
