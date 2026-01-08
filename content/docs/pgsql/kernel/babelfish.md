---
title: Babelfish
weight: 2304
description: Create Microsoft SQL Server compatible PostgreSQL clusters using WiltonDB
  and Babelfish! (Wire protocol level compatibility)
icon: fab fa-microsoft
module: [PGSQL]
tags: [MSSQL]
categories: [Concept]
---

> [Babelfish](https://babelfishpg.org/) is an MSSQL (Microsoft SQL Server) compatibility solution based on PostgreSQL, open-sourced by AWS.


--------

## Overview

Pigsty allows users to create Microsoft SQL Server compatible PostgreSQL clusters using Babelfish and WiltonDB!

- [Babelfish](https://babelfishpg.org/): An MSSQL (Microsoft SQL Server) compatibility extension plugin open-sourced by AWS
- [WiltonDB](https://github.com/wiltondb/wiltondb): A PostgreSQL kernel distribution focusing on integrating Babelfish

Babelfish is a PostgreSQL extension, but it only works on a slightly modified PostgreSQL kernel fork. WiltonDB provides compiled fork kernel binaries and extension binary packages on EL/Ubuntu systems.

Pigsty can replace the native PostgreSQL kernel with WiltonDB, providing an out-of-the-box MSSQL compatible cluster. Using and managing an MSSQL cluster is no different from a standard PostgreSQL 15 cluster. You can use all the features provided by Pigsty, such as high availability, backup, monitoring, etc.

WiltonDB comes with several extension plugins including Babelfish, but cannot use native PostgreSQL extension plugins.

After the MSSQL compatible cluster starts, in addition to listening on the PostgreSQL default port, it also listens on the MSSQL default port `1433`, providing MSSQL services via the TDS Wire Protocol on this port.
You can connect to the MSSQL service provided by Pigsty using any MSSQL client, such as SQL Server Management Studio, or using the `sqlcmd` command-line tool.

![](/img/pigsty/mssql.jpg)


--------

## Installation

WiltonDB conflicts with the native PostgreSQL kernel. Only one kernel can be installed on a node. Use the following command to install the WiltonDB kernel online.

```bash
./node.yml -t node_install -e '{"node_repo_modules":"local,mssql","node_packages":["wiltondb"]}'
```

Please note that WiltonDB is only available on EL and Ubuntu systems. Debian support is not currently provided.

The Pigsty Professional Edition provides offline installation packages for WiltonDB, which can be installed from local software sources.



--------

## Configuration

When installing and deploying the MSSQL module, please pay special attention to the following:

- WiltonDB is available on EL (7/8/9) and Ubuntu (20.04/22.04), but **not available on Debian systems**.
- WiltonDB is currently compiled based on PostgreSQL 15, so you need to specify `pg_version: 15`.
- On EL systems, the `wiltondb` binary is installed by default in the `/usr/bin/` directory, while on Ubuntu systems it is installed in the `/usr/lib/postgresql/15/bin/` directory, which is different from the official PostgreSQL binary placement.
- In WiltonDB compatibility mode, the HBA password authentication rule needs to use `md5` instead of `scram-sha-256`. Therefore, you need to override Pigsty's default HBA rule set and insert the `md5` authentication rule required by SQL Server before the `dbrole_readonly` wildcard authentication rule.
- WiltonDB can only be enabled for one primary database, and you should designate a user as the Babelfish superuser, allowing Babelfish to create databases and users. The default is `mssql` and `dbuser_mssql`. If you change this, please also modify the user in `files/mssql.sql`.
- The WiltonDB TDS wire protocol compatibility plugin `babelfishpg_tds` needs to be enabled in `shared_preload_libraries`.
- After enabling the WiltonDB extension, it listens on the MSSQL default port `1433`. You can override Pigsty's default service definitions to point the `primary` and `replica` services to port `1433` instead of `5432` / `6432`.

The following parameters need to be configured for the MSSQL database cluster:

```yaml
#----------------------------------#
# PGSQL & MSSQL (Babelfish & Wilton)
#----------------------------------#
# PG Installation
node_repo_modules: local,node,mssql # add mssql and os upstream repos
pg_mode: mssql                      # Microsoft SQL Server Compatible Mode
pg_libs: 'babelfishpg_tds, pg_stat_statements, auto_explain' # add timescaledb to shared_preload_libraries
pg_version: 15                      # The current WiltonDB major version is 15
pg_packages:
  - wiltondb                        # install forked version of postgresql with babelfishpg support
  - patroni pgbouncer pgbackrest pg_exporter pgbadger vip-manager
pg_extensions: []                   # do not install any vanilla postgresql extensions

# PG Provision
pg_default_hba_rules:               # overwrite default HBA rules for babelfish cluster
- {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu access via local os user ident'  }
- {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu replication from local os ident' }
- {user: '${repl}'    ,db: replication ,addr: localhost ,auth: pwd   ,title: 'replicator replication from localhost'}
- {user: '${repl}'    ,db: replication ,addr: intra     ,auth: pwd   ,title: 'replicator replication from intranet' }
- {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: pwd   ,title: 'replicator postgres db from intranet' }
- {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor from localhost with password' }
- {user: '${monitor}' ,db: all         ,addr: infra     ,auth: pwd   ,title: 'monitor from infra host with password'}
- {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin @ infra nodes with pwd & ssl'   }
- {user: '${admin}'   ,db: all         ,addr: world     ,auth: ssl   ,title: 'admin @ everywhere with ssl & pwd'    }
- {user: dbuser_mssql ,db: mssql       ,addr: intra     ,auth: md5   ,title: 'allow mssql dbsu intranet access'     } # <--- use md5 auth method for mssql user
- {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: pwd   ,title: 'pgbouncer read/write via local socket'}
- {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: pwd   ,title: 'read/write biz user via password'     }
- {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: pwd   ,title: 'allow etl offline tasks from intranet'}
pg_default_services:                # route primary & replica service to mssql port 1433
- { name: primary ,port: 5433 ,dest: 1433  ,check: /primary   ,selector: "[]" }
- { name: replica ,port: 5434 ,dest: 1433  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
- { name: default ,port: 5436 ,dest: postgres ,check: /primary   ,selector: "[]" }
- { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]"}

```

You can define MSSQL business databases and business users:

```yaml
#----------------------------------#
# pgsql (singleton on current node)
#----------------------------------#
# this is an example single-node postgres cluster with postgis & timescaledb installed, with one biz database & two biz users
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary } # <---- primary instance with read-write capability
  vars:
    pg_cluster: pg-test
    pg_users:                           # create MSSQL superuser
      - {name: dbuser_mssql ,password: DBUser.MSSQL ,superuser: true, pgbouncer: true ,roles: [dbrole_admin], comment: superuser & owner for babelfish  }
    pg_primary_db: mssql                # use `mssql` as the primary sql server database
    pg_databases:
      - name: mssql
        baseline: mssql.sql             # init babelfish database & user
        extensions:
          - { name: uuid-ossp          }
          - { name: babelfishpg_common }
          - { name: babelfishpg_tsql   }
          - { name: babelfishpg_tds    }
          - { name: babelfishpg_money  }
          - { name: pg_hint_plan       }
          - { name: system_stats       }
          - { name: tds_fdw            }
        owner: dbuser_mssql
        parameters: { 'babelfishpg_tsql.migration_mode' : 'multi-db' }
        comment: babelfish cluster, a MSSQL compatible pg cluster
```



--------

## Access

You can use any SQL Server compatible client tool to access this database cluster.

Microsoft provides [sqlcmd](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-use-utility?view=sql-server-ver16) as the official command-line tool.

In addition, they also provide a Go version command-line tool [go-sqlcmd](https://github.com/microsoft/go-sqlcmd).

Install `go-sqlcmd`:

```bash
curl -LO https://github.com/microsoft/go-sqlcmd/releases/download/v1.4.0/sqlcmd-v1.4.0-linux-amd64.tar.bz2
tar xjvf sqlcmd-v1.4.0-linux-amd64.tar.bz2
sudo mv sqlcmd* /usr/bin/
```

Quick start with `go-sqlcmd`:

```bash
$ sqlcmd -S 10.10.10.10,1433 -U dbuser_mssql -P DBUser.MSSQL
1> select @@version
2> go
version
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Babelfish for PostgreSQL with SQL Server Compatibility - 12.0.2000.8
Oct 22 2023 17:48:32
Copyright (c) Amazon Web Services
PostgreSQL 15.4 (EL 1:15.4.wiltondb3.3_2-2.el8) on x86_64-redhat-linux-gnu (Babelfish 3.3.0)

(1 row affected)
```

Using the service mechanism provided by Pigsty, you can use ports 5433 / 5434 to always connect to port 1433 on the primary/replica.

```bash
# Access port 5433 on any cluster member, pointing to port 1433 MSSQL port on the primary
sqlcmd -S 10.10.10.11,5433 -U dbuser_mssql -P DBUser.MSSQL

# Access port 5434 on any cluster member, pointing to port 1433 MSSQL port on any readable replica
sqlcmd -S 10.10.10.11,5434 -U dbuser_mssql -P DBUser.MSSQL
```



--------

## Extensions

Most of the **PGSQL** module's [**extension plugins**](/docs/pgsql/ext/) (non-pure SQL class) cannot be directly used on the WiltonDB kernel of the MSSQL module and need to be recompiled.

Currently, WiltonDB comes with the following extension plugins. In addition to PostgreSQL Contrib extensions and the four BabelfishPG core extensions, it also provides three third-party extensions: `pg_hint_plan`, `tds_fdw`, and `system_stats`.

| Extension Name     | Version | Description                                                                       |
|--------------------|---------|-----------------------------------------------------------------------------------|
| dblink             | 1.2     | connect to other PostgreSQL databases from within a database                      |
| adminpack          | 2.1     | administrative functions for PostgreSQL                                           |
| dict_int           | 1.0     | text search dictionary template for integers                                      |
| intagg             | 1.1     | integer aggregator and enumerator (obsolete)                                      |
| dict_xsyn          | 1.0     | text search dictionary template for extended synonym processing                   |
| amcheck            | 1.3     | functions for verifying relation integrity                                        |
| autoinc            | 1.0     | functions for autoincrementing fields                                             |
| bloom              | 1.0     | bloom access method - signature file based index                                  |
| fuzzystrmatch      | 1.1     | determine similarities and distance between strings                               |
| intarray           | 1.5     | functions, operators, and index support for 1-D arrays of integers                |
| btree_gin          | 1.3     | support for indexing common datatypes in GIN                                      |
| btree_gist         | 1.7     | support for indexing common datatypes in GiST                                     |
| hstore             | 1.8     | data type for storing sets of (key, value) pairs                                  |
| hstore_plperl      | 1.0     | transform between hstore and plperl                                               |
| isn                | 1.2     | data types for international product numbering standards                          |
| hstore_plperlu     | 1.0     | transform between hstore and plperlu                                              |
| jsonb_plperl       | 1.0     | transform between jsonb and plperl                                                |
| citext             | 1.6     | data type for case-insensitive character strings                                  |
| jsonb_plperlu      | 1.0     | transform between jsonb and plperlu                                               |
| jsonb_plpython3u   | 1.0     | transform between jsonb and plpython3u                                            |
| cube               | 1.5     | data type for multidimensional cubes                                              |
| hstore_plpython3u  | 1.0     | transform between hstore and plpython3u                                           |
| earthdistance      | 1.1     | calculate great-circle distances on the surface of the Earth                      |
| lo                 | 1.1     | Large Object maintenance                                                          |
| file_fdw           | 1.0     | foreign-data wrapper for flat file access                                         |
| insert_username    | 1.0     | functions for tracking who changed a table                                        |
| ltree              | 1.2     | data type for hierarchical tree-like structures                                   |
| ltree_plpython3u   | 1.0     | transform between ltree and plpython3u                                            |
| pg_walinspect      | 1.0     | functions to inspect contents of PostgreSQL Write-Ahead Log                       |
| moddatetime        | 1.0     | functions for tracking last modification time                                     |
| old_snapshot       | 1.0     | utilities in support of old_snapshot_threshold                                    |
| pgcrypto           | 1.3     | cryptographic functions                                                           |
| pgrowlocks         | 1.2     | show row-level locking information                                                |
| pageinspect        | 1.11    | inspect the contents of database pages at a low level                             |
| pg_surgery         | 1.0     | extension to perform surgery on a damaged relation                                |
| seg                | 1.4     | data type for representing line segments or floating-point intervals              |
| pgstattuple        | 1.5     | show tuple-level statistics                                                       |
| pg_buffercache     | 1.3     | examine the shared buffer cache                                                   |
| pg_freespacemap    | 1.2     | examine the free space map (FSM)                                                  |
| postgres_fdw       | 1.1     | foreign-data wrapper for remote PostgreSQL servers                                |
| pg_prewarm         | 1.2     | prewarm relation data                                                             |
| tcn                | 1.0     | Triggered change notifications                                                    |
| pg_trgm            | 1.6     | text similarity measurement and index searching based on trigrams                 |
| xml2               | 1.1     | XPath querying and XSLT                                                           |
| refint             | 1.0     | functions for implementing referential integrity (obsolete)                       |
| pg_visibility      | 1.2     | examine the visibility map (VM) and page-level visibility info                    |
| pg_stat_statements | 1.10    | track planning and execution statistics of all SQL statements executed            |
| sslinfo            | 1.2     | information about SSL certificates                                                |
| tablefunc          | 1.0     | functions that manipulate whole tables, including crosstab                        |
| tsm_system_rows    | 1.0     | TABLESAMPLE method which accepts number of rows as a limit                        |
| tsm_system_time    | 1.0     | TABLESAMPLE method which accepts time in milliseconds as a limit                  |
| unaccent           | 1.1     | text search dictionary that removes accents                                       |
| uuid-ossp          | 1.1     | generate universally unique identifiers (UUIDs)                                   |
| plpgsql            | 1.0     | PL/pgSQL procedural language                                                      |
| babelfishpg_money  | 1.1.0   | babelfishpg_money                                                                 |
| system_stats       | 2.0     | EnterpriseDB system statistics for PostgreSQL                                     |
| tds_fdw            | 2.0.3   | Foreign data wrapper for querying a TDS database (Sybase or Microsoft SQL Server) |
| babelfishpg_common | 3.3.3   | Transact SQL Datatype Support                                                     |
| babelfishpg_tds    | 1.0.0   | TDS protocol extension                                                            |
| pg_hint_plan       | 1.5.1   |                                                                                   |
| babelfishpg_tsql   | 3.3.1   | Transact SQL compatibility                                                        |


- The Pigsty Professional Edition provides offline installation capabilities for MSSQL compatible modules
- Pigsty [**Professional Edition**](/docs/about/service/) provides optional MSSQL compatible kernel extension porting and customization services, which can port [**extensions**](/docs/pgsql/ext/) available in the PGSQL module to MSSQL clusters.





