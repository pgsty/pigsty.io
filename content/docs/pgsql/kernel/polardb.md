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

![](/img/pigsty/polar.jpg)


--------

## Installation

Use the built-in Pigsty template:

```bash
./configure -c polar
./deploy.yml
```

--------

## Change Summary

| Item | Old docs / old default | Current |
|------|-------------------------|---------|
| Kernel baseline | PostgreSQL 15 | PostgreSQL 17 |
| Default PolarDB path | `/u01/polardb_pg` | `/u01/polardb_pg_17` |
| Supported architectures | `x86_64` | `x86_64`, `aarch64` |
| Available extensions | Old docs said 61 | `pg_available_extensions` now returns 93 |
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

The default installation directory for the `polar` kernel has moved to `/u01/polardb_pg_17`. One important difference is that PolarDB PG still requires the `replicator` replication user to be `SUPERUSER`, unlike vanilla PostgreSQL.





--------

## Extension List

Most [**extension plugins**](/docs/pgsql/ext/) from the **PGSQL** module, especially binary extensions, cannot be reused directly on the PolarDB kernel. If you need them, recompile them specifically for PolarDB 17.

Compared with the old docs, the PolarDB PG 17 extension catalog has changed substantially. The old page body said "61 extensions", but the old table actually listed 74 entries. Based on the latest `SELECT * FROM pg_available_extensions;`, the current catalog contains **93** available extensions.

| Change Type | Count | Notes |
|-------------|-------|-------|
| Added | 33 | New additions include `pgaudit`, `pg_partman`, `pg_profile`, `pg_repack`, `pg_stat_kcache`, `pg_jieba`, `pg_cron`, `pg_hint_plan`, `pg_walinspect`, plus PolarDB and operations-focused extensions such as `polar_advisor`, `polar_feature_utils`, `polar_parameter_manager`, `polar_proxy_utils`, `polar_resource_manager`, and `polar_smgrperf`. |
| Removed | 14 | `polar_csn`, `polar_px`, `polar_stat_env`, `polar_stat_sql`, `timetravel`, and `smlar` no longer appear in the current PG17 catalog. Several `plpython2u` / `plpythonu` compatibility extensions were also removed. |
{.full-width}

The latest full PolarDB PG 17 extension list is shown below, ordered by the `pg_available_extensions` query result:

| name | default_version | comment |
|------|-----------------|---------|
| `pg_jieba` | `1.1.0` | a parser for full-text search of Chinese |
| `polar_monitor` | `1.3` | monitor functions for PolarDB |
| `plpgsql` | `1.0` | PL/pgSQL procedural language |
| `cube` | `1.5` | data type for multidimensional cubes |
| `bool_plperl` | `1.0` | transform between bool and plperl |
| `pg_partman` | `5.2.4` | Extension to manage partitioned tables by time or ID |
| `pg_buffercache` | `1.6` | examine the shared buffer cache |
| `pgaudit` | `17.1` | provides auditing functionality |
| `pg_profile` | `4.10` | PostgreSQL load profile repository and report builder |
| `pg_stat_statements` | `1.11` | track planning and execution statistics of all SQL statements executed |
| `plperlu` | `1.0` | PL/PerlU untrusted procedural language |
| `fuzzystrmatch` | `1.2` | determine similarities and distance between strings |
| `pltcl` | `1.0` | PL/Tcl procedural language |
| `jsonb_plpython3u` | `1.0` | transform between jsonb and plpython3u |
| `polar_parameter_manager` | `1.2` | Extension to select parameters for manager. |
| `sequential_uuids` | `1.0.3` | generator of sequential UUIDs |
| `unaccent` | `1.1` | text search dictionary that removes accents |
| `autoinc` | `1.0` | functions for autoincrementing fields |
| `plpython3u` | `1.0` | PL/Python3U untrusted procedural language |
| `amcheck` | `1.4` | functions for verifying relation integrity |
| `pg_cron` | `1.5` | Job scheduler for PostgreSQL |
| `polar_advisor` | `1.1` | polar_advisor |
| `tsm_system_rows` | `1.0` | TABLESAMPLE method which accepts number of rows as a limit |
| `pase` | `0.0.1` | ant ai similarity search |
| `pg_squeeze` | `1.9` | A tool to remove unused space from a relation. |
| `dict_xsyn` | `1.0` | text search dictionary template for extended synonym processing |
| `prefix` | `1.2.0` | Prefix Range module for PostgreSQL |
| `ip4r` | `2.4` |  |
| `ltree` | `1.3` | data type for hierarchical tree-like structures |
| `btree_gist` | `1.7` | support for indexing common datatypes in GiST |
| `hstore_plpython3u` | `1.0` | transform between hstore and plpython3u |
| `pg_cron_preload` | `1.0` | polardb pg extend catalog |
| `tablefunc` | `1.0` | functions that manipulate whole tables, including crosstab |
| `refint` | `1.0` | functions for implementing referential integrity (obsolete) |
| `pgtap` | `1.3.3` | Unit testing for PostgreSQL |
| `pgstattuple` | `1.5` | show tuple-level statistics |
| `polar_smgrperf` | `1.0` | smgr perf test extension |
| `pg_repack` | `1.5.1-1` | Reorganize tables in PostgreSQL databases with minimal locks |
| `file_fdw` | `1.0` | foreign-data wrapper for flat file access |
| `pg_stat_kcache` | `2.3.0` | Kernel statistics gathering |
| `pgcrypto` | `1.3` | cryptographic functions |
| `hll` | `2.18` | type for storing hyperloglog data |
| `pgrowlocks` | `1.2` | show row-level locking information |
| `intagg` | `1.1` | integer aggregator and enumerator (obsolete) |
| `sslinfo` | `1.2` | information about SSL certificates |
| `pg_trgm` | `1.6` | text similarity measurement and index searching based on trigrams |
| `isn` | `1.2` | data types for international product numbering standards |
| `ltree_plpython3u` | `1.0` | transform between ltree and plpython3u |
| `hstore` | `1.8` | data type for storing sets of (key, value) pairs |
| `hstore_plperlu` | `1.0` | transform between hstore and plperlu |
| `log_fdw` | `1.4` | foreign-data wrapper for Postgres log file access |
| `dblink` | `1.2` | connect to other PostgreSQL databases from within a database |
| `btree_gin` | `1.3` | support for indexing common datatypes in GIN |
| `dict_int` | `1.0` | text search dictionary template for integers |
| `polar_worker` | `1.1` | polar_worker |
| `polar_resource_manager` | `1.0` | a background process that forcibly frees user session process memory |
| `insert_username` | `1.0` | functions for tracking who changed a table |
| `polar_feature_utils` | `1.0` | PolarDB feature utilization |
| `polar_vfs` | `1.0` | polar virtual file system for different storage |
| `uuid-ossp` | `1.1` | generate universally unique identifiers (UUIDs) |
| `pg_walinspect` | `1.1` | functions to inspect contents of PostgreSQL Write-Ahead Log |
| `pldbgapi` | `1.1` | server-side support for debugging PL/pgSQL functions |
| `earthdistance` | `1.2` | calculate great-circle distances on the surface of the Earth |
| `polar_tde_utils` | `1.0` | Internal extension for TDE |
| `pageinspect` | `1.12` | inspect the contents of database pages at a low level |
| `seg` | `1.4` | data type for representing line segments or floating-point intervals |
| `pg_freespacemap` | `1.2` | examine the free space map (FSM) |
| `bloom` | `1.0` | bloom access method - signature file based index |
| `pg_similarity` | `1.0` | support similarity queries |
| `tsm_system_time` | `1.0` | TABLESAMPLE method which accepts time in milliseconds as a limit |
| `polar_monitor_preload` | `1.0` | examine the polardb information |
| `pg_bigm` | `1.2` | text similarity measurement and index searching based on bigrams |
| `pg_visibility` | `1.2` | examine the visibility map (VM) and page-level visibility info |
| `pg_surgery` | `1.0` | extension to perform surgery on a damaged relation |
| `pg_hint_plan` | `1.7.0` | optimizer hints for PostgreSQL |
| `postgres_fdw` | `1.1` | foreign-data wrapper for remote PostgreSQL servers |
| `lo` | `1.1` | Large Object maintenance |
| `polar_io_stat` | `1.0` | polar io stat in multi dimension |
| `jsonb_plperlu` | `1.0` | transform between jsonb and plperlu |
| `moddatetime` | `1.0` | functions for tracking last modification time |
| `pg_prewarm` | `1.2` | prewarm relation data |
| `plperl` | `1.0` | PL/Perl procedural language |
| `citext` | `1.6` | data type for case-insensitive character strings |
| `xml2` | `1.1` | XPath querying and XSLT |
| `tcn` | `1.0` | Triggered change notifications |
| `bool_plperlu` | `1.0` | transform between bool and plperlu |
| `roaringbitmap` | `0.5` | support for Roaring Bitmaps |
| `polar_proxy_utils` | `1.0` | Extension to provide operations about proxy. |
| `hstore_plperl` | `1.0` | transform between hstore and plperl |
| `jsonb_plperl` | `1.0` | transform between jsonb and plperl |
| `varbitx` | `1.1` | varbit functions pack |
| `pltclu` | `1.0` | PL/TclU untrusted procedural language |
| `intarray` | `1.5` | functions, operators, and index support for 1-D arrays of integers |

- Pigsty Professional Edition provides PolarDB offline installation support, extension plugin compilation support, and monitoring and management support specifically adapted for PolarDB clusters.
- Pigsty collaborates with the Alibaba Cloud kernel team and can provide paid kernel backup support services.
