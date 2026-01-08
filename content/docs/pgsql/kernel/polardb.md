---
title: PolarDB PG
weight: 2306
description: Using Alibaba Cloud's open-source PolarDB for PostgreSQL kernel to provide
  domestic innovation qualification support, with Oracle RAC-like user experience.
icon: fas fa-paw
module: [PGSQL]
tags: [PolarDB]
categories: [Concept]
---



--------

## Overview

Pigsty allows you to create PostgreSQL clusters with "domestic innovation qualification" credentials using PolarDB!

PolarDB for PostgreSQL is essentially equivalent to PostgreSQL 15. Any client tool compatible with the PostgreSQL wire protocol can access PolarDB clusters.

Pigsty's PGSQL repository provides PolarDB PG open-source installation packages for EL7 / EL8, but they are not downloaded to the local software repository during Pigsty installation.

If you need offline installation support for PolarDB PG, please consider our [professional subscription service](/docs/about/service)

![](/img/pigsty/polar.jpg)


--------

## Installation

If your environment has internet access, you can add the Pigsty PGSQL and dependency repositories to the node using the following method:

```yaml
node_repo_modules: local,node,pgsql
```

Then in `pg_packages`, replace the native `postgresql` package with `polardb`.



--------

## Configuration

The following parameters need special configuration for PolarDB database clusters:

```yaml
#----------------------------------#
# PGSQL & PolarDB
#----------------------------------#
pg_version: 15
pg_packages: [ 'polardb patroni pgbouncer pgbackrest pg_exporter pgbadger vip-manager' ]
pg_extensions: [ ]                # do not install any vanilla postgresql extensions
pg_mode: polar                    # PolarDB Compatible Mode
pg_default_roles:                 # default roles and users in postgres cluster
  - { name: dbrole_readonly  ,login: false ,comment: role for global read-only access     }
  - { name: dbrole_offline   ,login: false ,comment: role for restricted read-only access }
  - { name: dbrole_readwrite ,login: false ,roles: [dbrole_readonly] ,comment: role for global read-write access }
  - { name: dbrole_admin     ,login: false ,roles: [pg_monitor, dbrole_readwrite] ,comment: role for object creation }
  - { name: postgres     ,superuser: true  ,comment: system superuser }
  - { name: replicator   ,superuser: true  ,replication: true ,roles: [pg_monitor, dbrole_readonly] ,comment: system replicator } # <- superuser is required for replication
  - { name: dbuser_dba   ,superuser: true  ,roles: [dbrole_admin]  ,pgbouncer: true ,pool_mode: session, pool_connlimit: 16 ,comment: pgsql admin user }
  - { name: dbuser_monitor ,roles: [pg_monitor] ,pgbouncer: true ,parameters: {log_min_duration_statement: 1000 } ,pool_mode: session ,pool_connlimit: 8 ,comment: pgsql monitor user }
```

Note particularly that PolarDB PG requires the `replicator` replication user to be a Superuser, unlike native PG.





--------

## Extension List

Most **PGSQL** module [**extension plugins**](/docs/pgsql/ext/) (non-pure SQL types) cannot be used directly on the PolarDB kernel. If needed, please recompile and install from source for the new kernel.

Currently, the PolarDB kernel comes with the following **61** extension plugins. Apart from Contrib extensions, the additional extensions provided include:

- `polar_csn` 1.0 :  polar_csn
- `polar_monitor` 1.2 :  examine the polardb information
- `polar_monitor_preload` 1.1 :  examine the polardb information
- `polar_parameter_check` 1.0 :  kernel extension for parameter validation
- `polar_px` 1.0 :  Parallel Execution extension
- `polar_stat_env` 1.0 :  env stat functions for PolarDB
- `polar_stat_sql` 1.3 :  Kernel statistics gathering, and sql plan nodes information gathering
- `polar_tde_utils` 1.0 :  Internal extension for TDE
- `polar_vfs` 1.0 :  polar_vfs
- `polar_worker` 1.0 :  polar_worker
- `timetravel` 1.0 : functions for implementing time travel
- `vector` 0.5.1   : vector data type and ivfflat and hnsw access methods
- `smlar` 1.0      : compute similary of any one-dimensional arrays

Complete list of available PolarDB plugins:

| name                  | version | comment                                                               |
|-----------------------|---------|-----------------------------------------------------------------------|
| hstore_plpython2u     | 1.0     | transform between hstore and plpython2u                               |
| dict_int              | 1.0     | text search dictionary template for integers                          |
| adminpack             | 2.0     | administrative functions for PostgreSQL                               |
| hstore_plpython3u     | 1.0     | transform between hstore and plpython3u                               |
| amcheck               | 1.1     | functions for verifying relation integrity                            |
| hstore_plpythonu      | 1.0     | transform between hstore and plpythonu                                |
| autoinc               | 1.0     | functions for autoincrementing fields                                 |
| insert_username       | 1.0     | functions for tracking who changed a table                            |
| bloom                 | 1.0     | bloom access method - signature file based index                      |
| file_fdw              | 1.0     | foreign-data wrapper for flat file access                             |
| dblink                | 1.2     | connect to other PostgreSQL databases from within a database          |
| btree_gin             | 1.3     | support for indexing common datatypes in GIN                          |
| fuzzystrmatch         | 1.1     | determine similarities and distance between strings                   |
| lo                    | 1.1     | Large Object maintenance                                              |
| intagg                | 1.1     | integer aggregator and enumerator (obsolete)                          |
| btree_gist            | 1.5     | support for indexing common datatypes in GiST                         |
| hstore                | 1.5     | data type for storing sets of (key, value) pairs                      |
| intarray              | 1.2     | functions, operators, and index support for 1-D arrays of integers    |
| citext                | 1.5     | data type for case-insensitive character strings                      |
| cube                  | 1.4     | data type for multidimensional cubes                                  |
| hstore_plperl         | 1.0     | transform between hstore and plperl                                   |
| isn                   | 1.2     | data types for international product numbering standards              |
| jsonb_plperl          | 1.0     | transform between jsonb and plperl                                    |
| dict_xsyn             | 1.0     | text search dictionary template for extended synonym processing       |
| hstore_plperlu        | 1.0     | transform between hstore and plperlu                                  |
| earthdistance         | 1.1     | calculate great-circle distances on the surface of the Earth          |
| pg_prewarm            | 1.2     | prewarm relation data                                                 |
| jsonb_plperlu         | 1.0     | transform between jsonb and plperlu                                   |
| pg_stat_statements    | 1.6     | track execution statistics of all SQL statements executed             |
| jsonb_plpython2u      | 1.0     | transform between jsonb and plpython2u                                |
| jsonb_plpython3u      | 1.0     | transform between jsonb and plpython3u                                |
| jsonb_plpythonu       | 1.0     | transform between jsonb and plpythonu                                 |
| pg_trgm               | 1.4     | text similarity measurement and index searching based on trigrams     |
| pgstattuple           | 1.5     | show tuple-level statistics                                           |
| ltree                 | 1.1     | data type for hierarchical tree-like structures                       |
| ltree_plpython2u      | 1.0     | transform between ltree and plpython2u                                |
| pg_visibility         | 1.2     | examine the visibility map (VM) and page-level visibility info        |
| ltree_plpython3u      | 1.0     | transform between ltree and plpython3u                                |
| ltree_plpythonu       | 1.0     | transform between ltree and plpythonu                                 |
| seg                   | 1.3     | data type for representing line segments or floating-point intervals  |
| moddatetime           | 1.0     | functions for tracking last modification time                         |
| pgcrypto              | 1.3     | cryptographic functions                                               |
| pgrowlocks            | 1.2     | show row-level locking information                                    |
| pageinspect           | 1.7     | inspect the contents of database pages at a low level                 |
| pg_buffercache        | 1.3     | examine the shared buffer cache                                       |
| pg_freespacemap       | 1.2     | examine the free space map (FSM)                                      |
| tcn                   | 1.0     | Triggered change notifications                                        |
| plperl                | 1.0     | PL/Perl procedural language                                           |
| uuid-ossp             | 1.1     | generate universally unique identifiers (UUIDs)                       |
| plperlu               | 1.0     | PL/PerlU untrusted procedural language                                |
| refint                | 1.0     | functions for implementing referential integrity (obsolete)           |
| xml2                  | 1.1     | XPath querying and XSLT                                               |
| plpgsql               | 1.0     | PL/pgSQL procedural language                                          |
| plpython3u            | 1.0     | PL/Python3U untrusted procedural language                             |
| pltcl                 | 1.0     | PL/Tcl procedural language                                            |
| pltclu                | 1.0     | PL/TclU untrusted procedural language                                 |
| polar_csn             | 1.0     | polar_csn                                                             |
| sslinfo               | 1.2     | information about SSL certificates                                    |
| polar_monitor         | 1.2     | examine the polardb information                                       |
| polar_monitor_preload | 1.1     | examine the polardb information                                       |
| polar_parameter_check | 1.0     | kernel extension for parameter validation                             |
| polar_px              | 1.0     | Parallel Execution extension                                          |
| tablefunc             | 1.0     | functions that manipulate whole tables, including crosstab            |
| polar_stat_env        | 1.0     | env stat functions for PolarDB                                        |
| smlar                 | 1.0     | compute similary of any one-dimensional arrays                        |
| timetravel            | 1.0     | functions for implementing time travel                                |
| tsm_system_rows       | 1.0     | TABLESAMPLE method which accepts number of rows as a limit            |
| polar_stat_sql        | 1.3     | Kernel statistics gathering, and sql plan nodes information gathering |
| tsm_system_time       | 1.0     | TABLESAMPLE method which accepts time in milliseconds as a limit      |
| polar_tde_utils       | 1.0     | Internal extension for TDE                                            |
| polar_vfs             | 1.0     | polar_vfs                                                             |
| polar_worker          | 1.0     | polar_worker                                                          |
| unaccent              | 1.1     | text search dictionary that removes accents                           |
| postgres_fdw          | 1.0     | foreign-data wrapper for remote PostgreSQL servers                    |

- Pigsty Professional Edition provides PolarDB offline installation support, extension plugin compilation support, and monitoring and management support specifically adapted for PolarDB clusters.
- Pigsty collaborates with the Alibaba Cloud kernel team and can provide paid kernel backup support services.