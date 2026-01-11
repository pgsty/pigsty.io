---
title: "Module: PGSQL"
weight: 1000
description: >
  Deploy and manage world's most advanced open-source relational database — PostgreSQL, customizable and production-ready!
icon: fas fa-database fa-bounce
module: [PGSQL]
categories: [Reference]
sidebar_root_for: self
---


> **The world's most advanced open-source relational database!**
>
> Pigsty brings it to full potential: batteries-included, reliable, observable, maintainable, and scalable! [Config](#config) | [Admin](/docs/pgsql/admin) | [Playbooks](/docs/pgsql/playbook) | [Dashboards](/docs/pgsql/monitor/dashboard) | [Parameters](#parameters)


----------------

## Overview

> Learn key topics and concepts about PostgreSQL.

- [Architecture](/docs/pgsql/arch)
- [Cluster Config](/docs/pgsql/config)
- [Extensions](/docs/ref/extension)
- [Users/Roles](/docs/pgsql/config/user)
- [Databases](/docs/pgsql/config/db)
- [Services/Access](/docs/pgsql/service/)
- [Auth/HBA](/docs/pgsql/config/hba)
- [Access Control](/docs/concept/sec/ac/)
- [Admin SOP](/docs/pgsql/admin)
- [Backup & Recovery](/docs/pgsql/arch/pitr)
- [Monitoring](/docs/pgsql/monitor)
- [Migration](/docs/pgsql/migration)
- [Dashboards](/docs/pgsql/monitor/dashboard)


----------------

## Config

> [Describe](/docs/pgsql/config) your desired PostgreSQL cluster

- [Identity Params](/docs/pgsql/arch#identity-parameters): Define identity params for a PostgreSQL cluster
- [Primary Instance](/docs/pgsql/config#primary-instance): Create single-instance "cluster" with one primary
- [Replica Instance](/docs/pgsql/config#replica-instance): Create basic HA cluster with one primary and one replica
- [Offline Instance](/docs/pgsql/config#offline-instance): Create special read-only instance for OLAP/ETL/interactive queries
- [Sync Standby](/docs/pgsql/config#sync-standby): Enable sync commit to ensure zero data loss
- [Quorum Commit](/docs/pgsql/config#quorum-commit): Use quorum sync commit for higher consistency level
- [Standby Cluster](/docs/pgsql/config#standby-cluster): Clone existing cluster and keep in sync (DR cluster)
- [Delayed Cluster](/docs/pgsql/config#delayed-cluster): Clone existing cluster with delayed replay for emergency recovery
- [Citus Cluster](/docs/pgsql/config#citus-cluster): Define and create Citus distributed database cluster
- [Major Version](/docs/pgsql/config#major-version): Deploy cluster with different PostgreSQL major version


----------------

## Admin

> [Manage](/docs/pgsql/admin) your PostgreSQL clusters.

- [Cheatsheet](/docs/pgsql/admin#cheatsheet)
- [Create Cluster](/docs/pgsql/admin#create-cluster)
- [Create User](/docs/pgsql/admin#create-user)
- [Create Database](/docs/pgsql/admin#create-database)
- [Reload Service](/docs/pgsql/admin#reload-service)
- [Reload HBA](/docs/pgsql/admin#reload-hba)
- [Config Cluster](/docs/pgsql/admin#config-cluster)
- [Append Replica](/docs/pgsql/admin#append-replica)
- [Remove Replica](/docs/pgsql/admin#remove-replica)
- [Remove Cluster](/docs/pgsql/admin#remove-cluster)
- [Switchover](/docs/pgsql/admin#switchover)
- [Backup Cluster](/docs/pgsql/admin#backup-cluster)
- [Restore Cluster](/docs/pgsql/admin#restore-cluster)
- [Troubleshooting](/docs/pgsql/faq/)


----------------

## Playbooks

> Use idempotent [playbooks](/docs/pgsql/playbook) to materialize your config.

- [`pgsql.yml`](/docs/pgsql/playbook#pgsqlyml): Init PostgreSQL cluster or add new replicas.
- [`pgsql-rm.yml`](/docs/pgsql/playbook#pgsql-rmyml): Remove PostgreSQL cluster or specific instance
- [`pgsql-user.yml`](/docs/pgsql/playbook#pgsql-useryml): Add new biz user to existing PostgreSQL cluster
- [`pgsql-db.yml`](/docs/pgsql/playbook#pgsql-dbyml): Add new biz database to existing PostgreSQL cluster
- [`pgsql-monitor.yml`](/docs/pgsql/playbook#pgsql-monitoryml): Monitor remote postgres instance
- [`pgsql-migration.yml`](/docs/pgsql/playbook#pgsql-migrationyml): Generate migration manual and scripts

<details><summary>Example: Install PGSQL Module</summary>

[![asciicast](https://asciinema.org/a/566417.svg)](https://asciinema.org/a/566417)

</details>


<details><summary>Example: Remove PGSQL Module</summary>

[![asciicast](https://asciinema.org/a/566418.svg)](https://asciinema.org/a/566418)

</details>



----------------

## Monitoring

> Check PostgreSQL status via Grafana [dashboards](/docs/pgsql/monitor/dashboard).

Pigsty has 26 PostgreSQL-related dashboards:

|                            Overview                             |                               Cluster                                |                             Instance                              |                            Database                            |
|:---------------------------------------------------------------:|:--------------------------------------------------------------------:|:-----------------------------------------------------------------:|:--------------------------------------------------------------:|
| [PGSQL Overview](https://demo.pigsty.io/d/pgsql-overview) |     [PGSQL Cluster](https://demo.pigsty.io/d/pgsql-cluster)     |  [PGSQL Instance](https://demo.pigsty.io/d/pgsql-instance)  | [PGSQL Database](https://demo.pigsty.io/d/pgsql-database) |
|    [PGSQL Alert](https://demo.pigsty.io/d/pgsql-alert)    |     [PGRDS Cluster](https://demo.pigsty.io/d/pgrds-cluster)     |  [PGRDS Instance](https://demo.pigsty.io/d/pgrds-instance)  | [PGCAT Database](https://demo.pigsty.io/d/pgcat-database) |
|    [PGSQL Shard](https://demo.pigsty.io/d/pgsql-shard)    |    [PGSQL Activity](https://demo.pigsty.io/d/pgsql-activity)    |  [PGCAT Instance](https://demo.pigsty.io/d/pgcat-instance)  |   [PGSQL Tables](https://demo.pigsty.io/d/pgsql-tables)   |
|                                                                 | [PGSQL Replication](https://demo.pigsty.io/d/pgsql-replication) |   [PGSQL Persist](https://demo.pigsty.io/d/pgsql-persist)   |    [PGSQL Table](https://demo.pigsty.io/d/pgsql-table)    |
|                                                                 |     [PGSQL Service](https://demo.pigsty.io/d/pgsql-service)     |     [PGSQL Proxy](https://demo.pigsty.io/d/pgsql-proxy)     |    [PGCAT Table](https://demo.pigsty.io/d/pgcat-table)    |
|                                                                 |   [PGSQL Databases](https://demo.pigsty.io/d/pgsql-databases)   | [PGSQL Pgbouncer](https://demo.pigsty.io/d/pgsql-pgbouncer) |    [PGSQL Query](https://demo.pigsty.io/d/pgsql-query)    |
|                                                                 |     [PGSQL Patroni](https://demo.pigsty.io/d/pgsql-patroni)     |   [PGSQL Session](https://demo.pigsty.io/d/pgsql-session)   |    [PGCAT Query](https://demo.pigsty.io/d/pgcat-query)    |
|                                                                 |        [PGSQL PITR](https://demo.pigsty.io/d/pgsql-pitr)        |     [PGSQL Xacts](https://demo.pigsty.io/d/pgsql-xacts)     |    [PGCAT Locks](https://demo.pigsty.io/d/pgcat-locks)    |
|                                                                 |                                                                      |  [PGSQL Exporter](https://demo.pigsty.io/d/pgsql-exporter)  |   [PGCAT Schema](https://demo.pigsty.io/d/pgcat-schema)   |


----------------

## Parameters

> Config params for the [PGSQL](/docs/pgsql/param#pgsql) module

- [`PG_ID`](/docs/pgsql/param#pg_id): Calculate & validate PostgreSQL instance identity
- [`PG_BUSINESS`](/docs/pgsql/param#pg_business): PostgreSQL biz object definitions
- [`PG_INSTALL`](/docs/pgsql/param#pg_install): Install PostgreSQL kernel, pkgs & extensions
- [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap): Init HA PostgreSQL cluster with Patroni
- [`PG_PROVISION`](/docs/pgsql/param#pg_provision): Create PostgreSQL users, databases & in-db objects
- [`PG_BACKUP`](/docs/pgsql/param#pg_backup): Setup backup repo with pgbackrest
- [`PG_ACCESS`](/docs/pgsql/param#pg_access): Expose PostgreSQL services, bindVIP (optional), register DNS
- [`PG_MONITOR`](/docs/pgsql/param#pg_monitor): Add monitoring for PostgreSQL instance and register to infra
- [`PG_REMOVE`](/docs/pgsql/param#pg_remove): Remove PostgreSQL cluster, instance and related resources


<details><summary>Full Parameter List</summary>

| Parameter                                                                                 | Section                                                         |     Type      | Level | Description                                                                   |
|-------------------------------------------------------------------------------------------|-----------------------------------------------------------------|:-------------:|:-----:|-------------------------------------------------------------------------------|
| [`pg_mode`](/docs/pgsql/param#pg_mode)                                                    | [`PG_ID`](/docs/pgsql/param#pg_id)                              |     enum      |   C   | pgsql cluster mode: pgsql,citus,gpsql                                         |
| [`pg_cluster`](/docs/pgsql/param#pg_cluster)                                              | [`PG_ID`](/docs/pgsql/param#pg_id)                              |    string     |   C   | pgsql cluster name, REQUIRED identity param                                   |
| [`pg_seq`](/docs/pgsql/param#pg_seq)                                                      | [`PG_ID`](/docs/pgsql/param#pg_id)                              |      int      |   I   | pgsql instance seq number, REQUIRED identity param                            |
| [`pg_role`](/docs/pgsql/param#pg_role)                                                    | [`PG_ID`](/docs/pgsql/param#pg_id)                              |     enum      |   I   | pgsql role, REQUIRED, could be primary,replica,offline                        |
| [`pg_instances`](/docs/pgsql/param#pg_instances)                                          | [`PG_ID`](/docs/pgsql/param#pg_id)                              |     dict      |   I   | define multiple pg instances on node in `{port:ins_vars}` format              |
| [`pg_upstream`](/docs/pgsql/param#pg_upstream)                                            | [`PG_ID`](/docs/pgsql/param#pg_id)                              |      ip       |   I   | repl upstream ip for standby cluster or cascade replica                       |
| [`pg_shard`](/docs/pgsql/param#pg_shard)                                                  | [`PG_ID`](/docs/pgsql/param#pg_id)                              |    string     |   C   | pgsql shard name, optional identity for sharding clusters                     |
| [`pg_group`](/docs/pgsql/param#pg_group)                                                  | [`PG_ID`](/docs/pgsql/param#pg_id)                              |      int      |   C   | pgsql shard index number, optional identity for sharding clusters             |
| [`gp_role`](/docs/pgsql/param#gp_role)                                                    | [`PG_ID`](/docs/pgsql/param#pg_id)                              |     enum      |   C   | greenplum role of this cluster, could be master or segment                    |
| [`pg_exporters`](/docs/pgsql/param#pg_exporters)                                          | [`PG_ID`](/docs/pgsql/param#pg_id)                              |     dict      |   C   | additional pg_exporters to monitor remote postgres instances                  |
| [`pg_offline_query`](/docs/pgsql/param#pg_offline_query)                                  | [`PG_ID`](/docs/pgsql/param#pg_id)                              |     bool      |   I   | set true to enable offline query on this instance                             |
| [`pg_users`](/docs/pgsql/param#pg_users)                                                  | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |    user[]     |   C   | postgres biz users                                                            |
| [`pg_databases`](/docs/pgsql/param#pg_databases)                                          | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |  database[]   |   C   | postgres biz databases                                                        |
| [`pg_services`](/docs/pgsql/param#pg_services)                                            | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   service[]   |   C   | postgres biz services                                                         |
| [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules)                                          | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |    hba[]      |   C   | biz hba rules for postgres                                                    |
| [`pgb_hba_rules`](/docs/pgsql/param#pgb_hba_rules)                                        | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |    hba[]      |   C   | biz hba rules for pgbouncer                                                   |
| [`pg_replication_username`](/docs/pgsql/param#pg_replication_username)                    | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   username    |   G   | postgres replication username, `replicator` by default                        |
| [`pg_replication_password`](/docs/pgsql/param#pg_replication_password)                    | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   password    |   G   | postgres replication password, `DBUser.Replicator` by default                 |
| [`pg_admin_username`](/docs/pgsql/param#pg_admin_username)                                | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   username    |   G   | postgres admin username, `dbuser_dba` by default                              |
| [`pg_admin_password`](/docs/pgsql/param#pg_admin_password)                                | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   password    |   G   | postgres admin password in plain text, `DBUser.DBA` by default                |
| [`pg_monitor_username`](/docs/pgsql/param#pg_monitor_username)                            | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   username    |   G   | postgres monitor username, `dbuser_monitor` by default                        |
| [`pg_monitor_password`](/docs/pgsql/param#pg_monitor_password)                            | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   password    |   G   | postgres monitor password, `DBUser.Monitor` by default                        |
| [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password)                                  | [`PG_BUSINESS`](/docs/pgsql/param#pg_business)                  |   password    |  G/C  | dbsu password, empty string means no dbsu password by default                 |
| [`pg_dbsu`](/docs/pgsql/param#pg_dbsu)                                                    | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |   username    |   C   | os dbsu name, postgres by default, better not change it                       |
| [`pg_dbsu_uid`](/docs/pgsql/param#pg_dbsu_uid)                                            | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |      int      |   C   | os dbsu uid and gid, 26 for default postgres users and groups                 |
| [`pg_dbsu_sudo`](/docs/pgsql/param#pg_dbsu_sudo)                                          | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |     enum      |   C   | dbsu sudo privilege, none,limit,all,nopass. limit by default                  |
| [`pg_dbsu_home`](/docs/pgsql/param#pg_dbsu_home)                                          | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |     path      |   C   | postgresql home dir, `/var/lib/pgsql` by default                              |
| [`pg_dbsu_ssh_exchange`](/docs/pgsql/param#pg_dbsu_ssh_exchange)                          | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |     bool      |   C   | exchange postgres dbsu ssh key among same pgsql cluster                       |
| [`pg_version`](/docs/pgsql/param#pg_version)                                              | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |     enum      |   C   | postgres major version to install, 18 by default                              |
| [`pg_bin_dir`](/docs/pgsql/param#pg_bin_dir)                                              | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |     path      |   C   | postgres binary dir, `/usr/pgsql/bin` by default                              |
| [`pg_log_dir`](/docs/pgsql/param#pg_log_dir)                                              | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |     path      |   C   | postgres log dir, `/pg/log/postgres` by default                               |
| [`pg_packages`](/docs/pgsql/param#pg_packages)                                            | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |   string[]    |   C   | pg pkgs to install, `${pg_version}` will be replaced                          |
| [`pg_extensions`](/docs/pgsql/param#pg_extensions)                                        | [`PG_INSTALL`](/docs/pgsql/param#pg_install)                    |   string[]    |   C   | pg extensions to install, `${pg_version}` will be replaced                    |
| [`pg_clean`](/docs/pgsql/param#pg_clean)                                                  | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     bool      | G/C/A | purge existing postgres during pgsql init? true by default                    |
| [`pg_data`](/docs/pgsql/param#pg_data)                                                    | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     path      |   C   | postgres data dir, `/pg/data` by default                                      |
| [`pg_fs_main`](/docs/pgsql/param#pg_fs_main)                                              | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     path      |   C   | mountpoint/path for postgres main data, `/data` by default                    |
| [`pg_fs_bkup`](/docs/pgsql/param#pg_fs_bkup)                                              | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     path      |   C   | mountpoint/path for pg backup data, `/data/backup` by default                 |
| [`pg_storage_type`](/docs/pgsql/param#pg_storage_type)                                    | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | storage type for pg main data, SSD,HDD, SSD by default                        |
| [`pg_dummy_filesize`](/docs/pgsql/param#pg_dummy_filesize)                                | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     size      |   C   | size of `/pg/dummy`, hold 64MB disk space for emergency use                   |
| [`pg_listen`](/docs/pgsql/param#pg_listen)                                                | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |    ip(s)      |  C/I  | postgres/pgbouncer listen addr, comma separated list                          |
| [`pg_port`](/docs/pgsql/param#pg_port)                                                    | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     port      |   C   | postgres listen port, 5432 by default                                         |
| [`pg_localhost`](/docs/pgsql/param#pg_localhost)                                          | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     path      |   C   | postgres unix socket dir for localhost connection                             |
| [`pg_namespace`](/docs/pgsql/param#pg_namespace)                                          | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     path      |   C   | top level key namespace in etcd, used by patroni & vip                        |
| [`patroni_enabled`](/docs/pgsql/param#patroni_enabled)                                    | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     bool      |   C   | if disabled, no postgres cluster will be created during init                  |
| [`patroni_mode`](/docs/pgsql/param#patroni_mode)                                          | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | patroni working mode: default,pause,remove                                    |
| [`patroni_port`](/docs/pgsql/param#patroni_port)                                          | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     port      |   C   | patroni listen port, 8008 by default                                          |
| [`patroni_log_dir`](/docs/pgsql/param#patroni_log_dir)                                    | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     path      |   C   | patroni log dir, `/pg/log/patroni` by default                                 |
| [`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled)                            | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     bool      |   G   | secure patroni RestAPI comms with SSL?                                        |
| [`patroni_watchdog_mode`](/docs/pgsql/param#patroni_watchdog_mode)                        | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | patroni watchdog mode: automatic,required,off. off by default                 |
| [`patroni_username`](/docs/pgsql/param#patroni_username)                                  | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |   username    |   C   | patroni restapi username, `postgres` by default                               |
| [`patroni_password`](/docs/pgsql/param#patroni_password)                                  | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |   password    |   C   | patroni restapi password, `Patroni.API` by default                            |
| [`pg_etcd_password`](/docs/pgsql/param#pg_etcd_password)                                  | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |   password    |   C   | etcd password for this pg cluster, empty to use pg_cluster                    |
| [`pg_primary_db`](/docs/pgsql/param#pg_primary_db)                                        | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |    string     |   C   | primary database in this cluster, optional, postgres by default               |
| [`pg_parameters`](/docs/pgsql/param#pg_parameters)                                        | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     dict      |   C   | extra params in postgresql.auto.conf                                          |
| [`pg_files`](/docs/pgsql/param#pg_files)                                                  | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |    path[]     |   C   | extra files to copy to postgres data dir                                      |
| [`pg_conf`](/docs/pgsql/param#pg_conf)                                                    | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | config template: oltp,olap,crit,tiny. `oltp.yml` by default                   |
| [`pg_max_conn`](/docs/pgsql/param#pg_max_conn)                                            | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |      int      |   C   | postgres max connections, `auto` will use recommended value                   |
| [`pg_shared_buffer_ratio`](/docs/pgsql/param#pg_shared_buffer_ratio)                      | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     float     |   C   | postgres shared buffer mem ratio, 0.25 by default, 0.1~0.4                    |
| [`pg_io_method`](/docs/pgsql/param#pg_io_method)                                          | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | io method for postgres: auto,sync,worker,io_uring, worker by default          |
| [`pg_rto`](/docs/pgsql/param#pg_rto)                                                      | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |      int      |   C   | recovery time objective in seconds, `30s` by default                          |
| [`pg_rpo`](/docs/pgsql/param#pg_rpo)                                                      | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |      int      |   C   | recovery point objective in bytes, `1MiB` at most by default                  |
| [`pg_libs`](/docs/pgsql/param#pg_libs)                                                    | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |    string     |   C   | preloaded libs, `timescaledb,pg_stat_statements,auto_explain` by default      |
| [`pg_delay`](/docs/pgsql/param#pg_delay)                                                  | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |   interval    |   I   | replication apply delay for standby cluster leader                            |
| [`pg_checksum`](/docs/pgsql/param#pg_checksum)                                            | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     bool      |   C   | enable data checksum for postgres cluster?                                    |
| [`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc)                                              | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | password encryption algo: md5,scram-sha-256                                   |
| [`pg_encoding`](/docs/pgsql/param#pg_encoding)                                            | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | database cluster encoding, `UTF8` by default                                  |
| [`pg_locale`](/docs/pgsql/param#pg_locale)                                                | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | database cluster locale, `C` by default                                       |
| [`pg_lc_collate`](/docs/pgsql/param#pg_lc_collate)                                        | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | database cluster collate, `C` by default                                      |
| [`pg_lc_ctype`](/docs/pgsql/param#pg_lc_ctype)                                            | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     enum      |   C   | database char type, `C` by default                                            |
| [`pgsodium_key`](/docs/pgsql/param#pgsodium_key)                                          | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |    string     |   C   | pgsodium key, 64 hex digit, default to sha256(pg_cluster)                     |
| [`pgsodium_getkey_script`](/docs/pgsql/param#pgsodium_getkey_script)                      | [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap)                |     path      |   C   | pgsodium getkey script path                                                   |
| [`pgbouncer_enabled`](/docs/pgsql/param#pgbouncer_enabled)                                | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     bool      |   C   | if disabled, pgbouncer will not be launched on pgsql host                     |
| [`pgbouncer_port`](/docs/pgsql/param#pgbouncer_port)                                      | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     port      |   C   | pgbouncer listen port, 6432 by default                                        |
| [`pgbouncer_log_dir`](/docs/pgsql/param#pgbouncer_log_dir)                                | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     path      |   C   | pgbouncer log dir, `/pg/log/pgbouncer` by default                             |
| [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query)                          | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     bool      |   C   | query postgres to retrieve unlisted biz users?                                |
| [`pgbouncer_poolmode`](/docs/pgsql/param#pgbouncer_poolmode)                              | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     enum      |   C   | pooling mode: transaction,session,statement, transaction by default           |
| [`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode)                                | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     enum      |   C   | pgbouncer client ssl mode, disable by default                                 |
| [`pgbouncer_ignore_param`](/docs/pgsql/param#pgbouncer_ignore_param)                      | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |   string[]    |   C   | pgbouncer ignore_startup_parameters list                                      |
| [`pg_provision`](/docs/pgsql/param#pg_provision)                                          | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |     bool      |   C   | provision postgres cluster after bootstrap                                    |
| [`pg_init`](/docs/pgsql/param#pg_init)                                                    | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |    string     |  G/C  | provision init script for cluster template, `pg-init` by default              |
| [`pg_default_roles`](/docs/pgsql/param#pg_default_roles)                                  | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |    role[]     |  G/C  | default roles and users in postgres cluster                                   |
| [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges)                        | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |   string[]    |  G/C  | default privileges when created by admin user                                 |
| [`pg_default_schemas`](/docs/pgsql/param#pg_default_schemas)                              | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |   string[]    |  G/C  | default schemas to be created                                                 |
| [`pg_default_extensions`](/docs/pgsql/param#pg_default_extensions)                        | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |  extension[]  |  G/C  | default extensions to be created                                              |
| [`pg_reload`](/docs/pgsql/param#pg_reload)                                                | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |     bool      |   A   | reload postgres after hba changes                                             |
| [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules)                          | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |    hba[]      |  G/C  | postgres default host-based auth rules                                        |
| [`pgb_default_hba_rules`](/docs/pgsql/param#pgb_default_hba_rules)                        | [`PG_PROVISION`](/docs/pgsql/param#pg_provision)                |    hba[]      |  G/C  | pgbouncer default host-based auth rules                                       |
| [`pgbackrest_enabled`](/docs/pgsql/param#pgbackrest_enabled)                              | [`PG_BACKUP`](/docs/pgsql/param#pg_backup)                      |     bool      |   C   | enable pgbackrest on pgsql host?                                              |
| [`pgbackrest_clean`](/docs/pgsql/param#pgbackrest_clean)                                  | [`PG_BACKUP`](/docs/pgsql/param#pg_backup)                      |     bool      |   C   | remove pg backup data during init?                                            |
| [`pgbackrest_log_dir`](/docs/pgsql/param#pgbackrest_log_dir)                              | [`PG_BACKUP`](/docs/pgsql/param#pg_backup)                      |     path      |   C   | pgbackrest log dir, `/pg/log/pgbackrest` by default                           |
| [`pgbackrest_method`](/docs/pgsql/param#pgbackrest_method)                                | [`PG_BACKUP`](/docs/pgsql/param#pg_backup)                      |     enum      |   C   | pgbackrest repo method: local,minio,etc...                                    |
| [`pgbackrest_init_backup`](/docs/pgsql/param#pgbackrest_init_backup)                      | [`PG_BACKUP`](/docs/pgsql/param#pg_backup)                      |     bool      |   C   | take a full backup after pgbackrest init?                                     |
| [`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo)                                    | [`PG_BACKUP`](/docs/pgsql/param#pg_backup)                      |     dict      |  G/C  | pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository |
| [`pg_weight`](/docs/pgsql/param#pg_weight)                                                | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |      int      |   I   | relative load balance weight in service, 100 by default, 0-255                |
| [`pg_service_provider`](/docs/pgsql/param#pg_service_provider)                            | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     enum      |  G/C  | dedicated haproxy node group name, or empty string for local nodes by default |
| [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest)                    | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     enum      |  G/C  | default service dest if svc.dest='default'                                    |
| [`pg_default_services`](/docs/pgsql/param#pg_default_services)                            | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |   service[]   |  G/C  | postgres default service definitions                                          |
| [`pg_vip_enabled`](/docs/pgsql/param#pg_vip_enabled)                                      | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     bool      |   C   | enable L2 VIP for pgsql primary? false by default                             |
| [`pg_vip_address`](/docs/pgsql/param#pg_vip_address)                                      | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     cidr4     |   C   | vip addr in `<ipv4>/<mask>` format, required if vip is enabled                |
| [`pg_vip_interface`](/docs/pgsql/param#pg_vip_interface)                                  | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |    string     |  C/I  | vip network interface to listen, eth0 by default                              |
| [`pg_dns_suffix`](/docs/pgsql/param#pg_dns_suffix)                                        | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |    string     |   C   | pgsql dns suffix, '' by default                                               |
| [`pg_dns_target`](/docs/pgsql/param#pg_dns_target)                                        | [`PG_ACCESS`](/docs/pgsql/param#pg_access)                      |     enum      |   C   | auto, primary, vip, none, or ad hoc ip                                        |
| [`pg_exporter_enabled`](/docs/pgsql/param#pg_exporter_enabled)                            | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     bool      |   C   | enable pg_exporter on pgsql hosts?                                            |
| [`pg_exporter_config`](/docs/pgsql/param#pg_exporter_config)                              | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |    string     |   C   | pg_exporter config file name                                                  |
| [`pg_exporter_cache_ttls`](/docs/pgsql/param#pg_exporter_cache_ttls)                      | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |    string     |   C   | pg_exporter collector ttl stage in seconds, '1,10,60,300' by default          |
| [`pg_exporter_port`](/docs/pgsql/param#pg_exporter_port)                                  | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     port      |   C   | pg_exporter listen port, 9630 by default                                      |
| [`pg_exporter_params`](/docs/pgsql/param#pg_exporter_params)                              | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |    string     |   C   | extra url params for pg_exporter dsn                                          |
| [`pg_exporter_url`](/docs/pgsql/param#pg_exporter_url)                                    | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     pgurl     |   C   | overwrite auto-gen pg dsn if specified                                        |
| [`pg_exporter_auto_discovery`](/docs/pgsql/param#pg_exporter_auto_discovery)              | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     bool      |   C   | enable auto database discovery? enabled by default                            |
| [`pg_exporter_exclude_database`](/docs/pgsql/param#pg_exporter_exclude_database)          | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |    string     |   C   | csv of database that WILL NOT be monitored during auto-discovery              |
| [`pg_exporter_include_database`](/docs/pgsql/param#pg_exporter_include_database)          | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |    string     |   C   | csv of database that WILL BE monitored during auto-discovery                  |
| [`pg_exporter_connect_timeout`](/docs/pgsql/param#pg_exporter_connect_timeout)            | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |      int      |   C   | pg_exporter connect timeout in ms, 200 by default                             |
| [`pg_exporter_options`](/docs/pgsql/param#pg_exporter_options)                            | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |      arg      |   C   | overwrite extra options for pg_exporter                                       |
| [`pgbouncer_exporter_enabled`](/docs/pgsql/param#pgbouncer_exporter_enabled)              | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     bool      |   C   | enable pgbouncer_exporter on pgsql hosts?                                     |
| [`pgbouncer_exporter_port`](/docs/pgsql/param#pgbouncer_exporter_port)                    | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     port      |   C   | pgbouncer_exporter listen port, 9631 by default                               |
| [`pgbouncer_exporter_url`](/docs/pgsql/param#pgbouncer_exporter_url)                      | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     pgurl     |   C   | overwrite auto-gen pgbouncer dsn if specified                                 |
| [`pgbouncer_exporter_options`](/docs/pgsql/param#pgbouncer_exporter_options)              | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |      arg      |   C   | overwrite extra options for pgbouncer_exporter                                |
| [`pgbackrest_exporter_enabled`](/docs/pgsql/param#pgbackrest_exporter_enabled)            | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     bool      |   C   | enable pgbackrest_exporter on pgsql hosts?                                    |
| [`pgbackrest_exporter_port`](/docs/pgsql/param#pgbackrest_exporter_port)                  | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |     port      |   C   | pgbackrest_exporter listen port, 9854 by default                              |
| [`pgbackrest_exporter_options`](/docs/pgsql/param#pgbackrest_exporter_options)            | [`PG_MONITOR`](/docs/pgsql/param#pg_monitor)                    |      arg      |   C   | overwrite extra options for pgbackrest_exporter                               |
| [`pg_safeguard`](/docs/pgsql/param#pg_safeguard)                                          | [`PG_REMOVE`](/docs/pgsql/param#pg_remove)                      |     bool      | G/C/A | prevent purging running postgres instance? false by default                   |
| [`pg_rm_data`](/docs/pgsql/param#pg_rm_data)                                              | [`PG_REMOVE`](/docs/pgsql/param#pg_remove)                      |     bool      | G/C/A | remove postgres data during remove? true by default                           |
| [`pg_rm_backup`](/docs/pgsql/param#pg_rm_backup)                                          | [`PG_REMOVE`](/docs/pgsql/param#pg_remove)                      |     bool      | G/C/A | remove pgbackrest backup during primary remove? true by default               |
| [`pg_rm_pkg`](/docs/pgsql/param#pg_rm_pkg)                                                | [`PG_REMOVE`](/docs/pgsql/param#pg_remove)                      |     bool      | G/C/A | uninstall postgres pkgs during remove? true by default                        |

</details>




----------------

## Tutorials

> Tutorials for using/managing PostgreSQL in Pigsty.

- Clone an existing PostgreSQL cluster
- Create an online standby cluster of existing PostgreSQL cluster
- Create a delayed standby cluster of existing PostgreSQL cluster
- Monitor an existing postgres instance
- Migrate from external PostgreSQL to Pigsty-managed PostgreSQL using logical replication
- Use MinIO as centralized pgBackRest backup repo
- Use dedicated etcd cluster as PostgreSQL / Patroni DCS
- Use dedicated haproxy load balancer cluster to expose PostgreSQL services
- Use pg-meta CMDB instead of pigsty.yml as inventory source
- Use PostgreSQL as Grafana backend storage
- Use PostgreSQL as Prometheus backend storage
