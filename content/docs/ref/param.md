---
title: Parameters
weight: 475
description: Pigsty configuration parameter overview and navigation
icon: fa-solid fa-sliders
categories: [Reference]
---

Pigsty provides approximately **380+** configuration parameters distributed across 8 core modules, allowing fine-grained control over all aspects of the system.


--------

## Module Navigation

This page provides navigation and overview for all Pigsty configuration parameters. Click on a module name to jump to the detailed parameter documentation.

| Module | Parameter Groups | Total Parameters | Description |
|:---|:---:|:---:|:---|
| [**PGSQL**](/docs/pgsql/param) | 9 | 123 | PostgreSQL database cluster core configuration |
| [**INFRA**](/docs/infra/param) | 10 | 82 | Infrastructure components: repo, Nginx, DNS, monitoring, Grafana, etc. |
| [**NODE**](/docs/node/param) | 11 | 83 | Host node tuning: identity, DNS, packages, tuning, security, admin, time, VIP, etc. |
| [**ETCD**](/docs/etcd/param) | 2 | 13 | Distributed configuration storage and service discovery |
| [**REDIS**](/docs/redis/param) | 1 | 21 | Redis cache and data structure server |
| [**MINIO**](/docs/minio/param) | 2 | 21 | S3-compatible object storage service |
| [**FERRET**](/docs/ferret/param) | 1 | 9 | MongoDB-compatible database FerretDB |
| [**DOCKER**](/docs/docker/param) | 1 | 8 | Docker container engine |


--------

## PGSQL

The [`PGSQL`](/docs/pgsql) module provides **9 groups with 123** PostgreSQL-related configuration parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`PG_ID`](/docs/pgsql/param#pg_id) | 11 | PostgreSQL cluster and instance identity parameters |
| [`PG_BUSINESS`](/docs/pgsql/param#pg_business) | 12 | Business users, databases, services, and access control rules |
| [`PG_INSTALL`](/docs/pgsql/param#pg_install) | 10 | PostgreSQL installation: version, paths, packages |
| [`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap) | 38 | PostgreSQL cluster initialization: Patroni high availability |
| [`PG_PROVISION`](/docs/pgsql/param#pg_provision) | 8 | PostgreSQL cluster template provisioning: roles, privileges, extensions |
| [`PG_BACKUP`](/docs/pgsql/param#pg_backup) | 6 | pgBackRest backup and recovery configuration |
| [`PG_ACCESS`](/docs/pgsql/param#pg_access) | 17 | Service exposure, connection pool, VIP, DNS client access configuration |
| [`PG_MONITOR`](/docs/pgsql/param#pg_monitor) | 17 | PostgreSQL monitoring exporter configuration |
| [`PG_REMOVE`](/docs/pgsql/param#pg_remove) | 4 | PostgreSQL instance cleanup and uninstallation configuration |


--------

## INFRA

The [`INFRA`](/docs/infra) module provides **10 groups with 82** infrastructure-related configuration parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`META`](/docs/infra/param#meta) | 5 | Pigsty meta information: version, admin IP, region, language, proxy |
| [`CA`](/docs/infra/param#ca) | 3 | Self-signed CA certificate management |
| [`INFRA_ID`](/docs/infra/param#infra_id) | 3 | Infrastructure node identity and service portal |
| [`REPO`](/docs/infra/param#repo) | 10 | Local software repository configuration |
| [`INFRA_PACKAGE`](/docs/infra/param#infra_package) | 2 | Infrastructure node package installation |
| [`NGINX`](/docs/infra/param#nginx) | 14 | Nginx web server and reverse proxy configuration |
| [`DNS`](/docs/infra/param#dns) | 3 | DNSMasq DNS resolution service configuration |
| [`VICTORIA`](/docs/infra/param#victoria) | 19 | VictoriaMetrics/Logs/Traces observability suite |
| [`PROMETHEUS`](/docs/infra/param#prometheus) | 7 | Alertmanager and Blackbox Exporter |
| [`GRAFANA`](/docs/infra/param#grafana) | 8 | Grafana visualization platform configuration |


--------

## NODE

The [`NODE`](/docs/node) module provides **11 groups with 83** host node-related configuration parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`NODE_ID`](/docs/node/param#node_id) | 5 | Node identity parameters |
| [`NODE_DNS`](/docs/node/param#node_dns) | 6 | Node DNS configuration |
| [`NODE_PACKAGE`](/docs/node/param#node_package) | 4 | Node package management |
| [`NODE_TUNE`](/docs/node/param#node_tune) | 10 | Node kernel tuning parameters |
| [`NODE_SEC`](/docs/node/param#node_sec) | 4 | Node security parameters |
| [`NODE_ADMIN`](/docs/node/param#node_admin) | 9 | Node admin user configuration |
| [`NODE_TIME`](/docs/node/param#node_time) | 5 | Node time synchronization |
| [`NODE_VIP`](/docs/node/param#node_vip) | 8 | Node VIP configuration |
| [`HAPROXY`](/docs/node/param#haproxy) | 10 | HAProxy load balancer configuration |
| [`NODE_EXPORTER`](/docs/node/param#node_exporter) | 3 | Node exporter configuration |
| [`VECTOR`](/docs/node/param#vector) | 6 | Vector log collector configuration |


--------

## ETCD

The [`ETCD`](/docs/etcd) module provides **2 groups with 13** distributed configuration storage parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`ETCD`](/docs/etcd/param#etcd) | 10 | ETCD cluster deployment and configuration |
| [`ETCD_REMOVE`](/docs/etcd/param#etcd_remove) | 3 | ETCD cluster removal: safeguard, data cleanup, etc. |


--------

## REDIS

The [`REDIS`](/docs/redis) module provides **21** Redis-related configuration parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`REDIS`](/docs/redis/param#redis) | 21 | Redis cluster deployment and configuration |


--------

## MINIO

The [`MINIO`](/docs/minio) module provides **2 groups with 21** MinIO object storage parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`MINIO`](/docs/minio/param#minio) | 18 | MinIO cluster deployment and configuration |
| [`MINIO_REMOVE`](/docs/minio/param#minio_remove) | 3 | MinIO cluster removal: safeguard, data cleanup, etc. |


--------

## FERRET

The [`FERRET`](/docs/ferret) module provides **9** FerretDB-related configuration parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`FERRET`](/docs/ferret/param#ferret) | 9 | FerretDB deployment and configuration |


--------

## DOCKER

The [`DOCKER`](/docs/docker) module provides **8** Docker container engine configuration parameters.

| Parameter Group | Count | Description |
|:---|:---:|:---|
| [`DOCKER`](/docs/docker/param#docker) | 8 | Docker container engine configuration |


--------

## Parameter Overview

The following tables provide a comprehensive summary of all parameters, organized by module.

### PGSQL Parameters

[`PG_ID`](/docs/pgsql/param#pg_id) parameter group defines PostgreSQL cluster and instance identity, including cluster name, instance number, role, shard, etc.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pg_mode`](/docs/pgsql/param#pg_mode) | `enum` | pgsql cluster mode: pgsql,citus,mssql,mysql,polar,ivory,oracle,gpsql |
| [`pg_cluster`](/docs/pgsql/param#pg_cluster) | `string` | pgsql cluster name, required identity parameter |
| [`pg_seq`](/docs/pgsql/param#pg_seq) | `int` | pgsql instance number, required identity parameter |
| [`pg_role`](/docs/pgsql/param#pg_role) | `enum` | pgsql instance role, required, can be primary, replica, offline |
| [`pg_instances`](/docs/pgsql/param#pg_instances) | `dict` | Define multiple pg instances on one node, using `{port:ins_vars}` format |
| [`pg_upstream`](/docs/pgsql/param#pg_upstream) | `ip` | Upstream node IP for cascaded replica or standby cluster |
| [`pg_shard`](/docs/pgsql/param#pg_shard) | `string` | pgsql shard name, required for citus and gpsql horizontal sharding clusters |
| [`pg_group`](/docs/pgsql/param#pg_group) | `int` | pgsql shard number, positive integer, required for citus and gpsql clusters |
| [`gp_role`](/docs/pgsql/param#gp_role) | `enum` | Greenplum role for this cluster, can be master or segment |
| [`pg_exporters`](/docs/pgsql/param#pg_exporters) | `dict` | Set up additional pg_exporters on this node to monitor remote postgres instances |
| [`pg_offline_query`](/docs/pgsql/param#pg_offline_query) | `bool` | Set to true to mark this replica as special offline instance for Offline service |

[`PG_BUSINESS`](/docs/pgsql/param#pg_business) parameter group defines business users, databases, services, access control rules, and default system user credentials.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pg_users`](/docs/pgsql/param#pg_users) | `user[]` | Postgres business users |
| [`pg_databases`](/docs/pgsql/param#pg_databases) | `database[]` | Postgres business databases |
| [`pg_services`](/docs/pgsql/param#pg_services) | `service[]` | Postgres business services |
| [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules) | `hba[]` | Postgres business HBA rules |
| [`pgb_hba_rules`](/docs/pgsql/param#pgb_hba_rules) | `hba[]` | Pgbouncer business HBA rules |
| [`pg_replication_username`](/docs/pgsql/param#pg_replication_username) | `username` | Postgres replication username, default `replicator` |
| [`pg_replication_password`](/docs/pgsql/param#pg_replication_password) | `password` | Postgres replication password, default `DBUser.Replicator` |
| [`pg_admin_username`](/docs/pgsql/param#pg_admin_username) | `username` | Postgres admin username, default `dbuser_dba` |
| [`pg_admin_password`](/docs/pgsql/param#pg_admin_password) | `password` | Postgres admin password, default `DBUser.DBA` |
| [`pg_monitor_username`](/docs/pgsql/param#pg_monitor_username) | `username` | Postgres monitor username, default `dbuser_monitor` |
| [`pg_monitor_password`](/docs/pgsql/param#pg_monitor_password) | `password` | Postgres monitor password, default `DBUser.Monitor` |
| [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password) | `password` | dbsu password, empty string means no dbsu password, best not to set |

[`PG_INSTALL`](/docs/pgsql/param#pg_install) parameter group configures PostgreSQL installation options, including version, paths, packages, and extensions.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pg_dbsu`](/docs/pgsql/param#pg_dbsu) | `username` | OS dbsu name, default postgres, best not to change |
| [`pg_dbsu_uid`](/docs/pgsql/param#pg_dbsu_uid) | `int` | OS dbsu uid and gid, default 26 for postgres user and group |
| [`pg_dbsu_sudo`](/docs/pgsql/param#pg_dbsu_sudo) | `enum` | dbsu sudo privilege: none, limit, all, nopass, default limit |
| [`pg_dbsu_home`](/docs/pgsql/param#pg_dbsu_home) | `path` | PostgreSQL home directory, default `/var/lib/pgsql` |
| [`pg_dbsu_ssh_exchange`](/docs/pgsql/param#pg_dbsu_ssh_exchange) | `bool` | Exchange postgres dbsu ssh keys between pgsql cluster |
| [`pg_version`](/docs/pgsql/param#pg_version) | `enum` | Postgres major version to install, default 18 |
| [`pg_bin_dir`](/docs/pgsql/param#pg_bin_dir) | `path` | Postgres binary directory, default `/usr/pgsql/bin` |
| [`pg_log_dir`](/docs/pgsql/param#pg_log_dir) | `path` | Postgres log directory, default `/pg/log/postgres` |
| [`pg_packages`](/docs/pgsql/param#pg_packages) | `string[]` | pg packages to install, `${pg_version}` will be replaced |
| [`pg_extensions`](/docs/pgsql/param#pg_extensions) | `string[]` | pg extensions to install, `${pg_version}` will be replaced |

[`PG_BOOTSTRAP`](/docs/pgsql/param#pg_bootstrap) parameter group configures PostgreSQL cluster initialization, including Patroni HA, data directory, storage, connections, encoding, etc.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pg_data`](/docs/pgsql/param#pg_data) | `path` | Postgres data directory, default `/pg/data` |
| [`pg_fs_main`](/docs/pgsql/param#pg_fs_main) | `path` | Postgres main data mount point, default `/data/postgres` |
| [`pg_fs_backup`](/docs/pgsql/param#pg_fs_backup) | `path` | pg backup data mount point, default `/data/backups` |
| [`pg_storage_type`](/docs/pgsql/param#pg_storage_type) | `enum` | pg main data storage type: SSD, HDD, default SSD |
| [`pg_dummy_filesize`](/docs/pgsql/param#pg_dummy_filesize) | `size` | Size of `/pg/dummy`, default reserves 64MB for emergency |
| [`pg_listen`](/docs/pgsql/param#pg_listen) | `ip(s)` | postgres/pgbouncer listen address, default `0.0.0.0` |
| [`pg_port`](/docs/pgsql/param#pg_port) | `port` | Postgres listen port, default 5432 |
| [`pg_localhost`](/docs/pgsql/param#pg_localhost) | `path` | Postgres Unix socket directory for local connections |
| [`pg_namespace`](/docs/pgsql/param#pg_namespace) | `path` | Top-level key namespace in etcd, used by patroni & vip |
| [`patroni_enabled`](/docs/pgsql/param#patroni_enabled) | `bool` | If disabled, postgres cluster won't be created during init |
| [`patroni_mode`](/docs/pgsql/param#patroni_mode) | `enum` | Patroni working mode: default, pause, remove |
| [`patroni_port`](/docs/pgsql/param#patroni_port) | `port` | Patroni listen port, default 8008 |
| [`patroni_log_dir`](/docs/pgsql/param#patroni_log_dir) | `path` | Patroni log directory, default `/pg/log/patroni` |
| [`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled) | `bool` | Secure patroni RestAPI with SSL? |
| [`patroni_watchdog_mode`](/docs/pgsql/param#patroni_watchdog_mode) | `enum` | Patroni watchdog mode: automatic, required, off, default off |
| [`patroni_username`](/docs/pgsql/param#patroni_username) | `username` | Patroni restapi username, default `postgres` |
| [`patroni_password`](/docs/pgsql/param#patroni_password) | `password` | Patroni restapi password, default `Patroni.API` |
| [`pg_primary_db`](/docs/pgsql/param#pg_primary_db) | `string` | Primary database name in cluster, used by Citus, default `postgres` |
| [`pg_parameters`](/docs/pgsql/param#pg_parameters) | `dict` | Override PostgreSQL parameters in postgresql.auto.conf |
| [`pg_files`](/docs/pgsql/param#pg_files) | `path[]` | Extra files to copy to PGDATA directory (e.g., license files) |
| [`pg_conf`](/docs/pgsql/param#pg_conf) | `enum` | Config template: oltp, olap, crit, tiny, default `oltp.yml` |
| [`pg_max_conn`](/docs/pgsql/param#pg_max_conn) | `int` | Postgres max connections, `auto` uses recommended value |
| [`pg_shared_buffer_ratio`](/docs/pgsql/param#pg_shared_buffer_ratio) | `float` | Postgres shared buffer memory ratio, default 0.25, range 0.1~0.4 |
| [`pg_rto`](/docs/pgsql/param#pg_rto) | `int` | Recovery Time Objective (seconds), default `30s` |
| [`pg_rpo`](/docs/pgsql/param#pg_rpo) | `int` | Recovery Point Objective (bytes), default `1MiB` |
| [`pg_libs`](/docs/pgsql/param#pg_libs) | `string` | Preloaded libraries, default `pg_stat_statements,auto_explain` |
| [`pg_delay`](/docs/pgsql/param#pg_delay) | `interval` | WAL replay delay for standby cluster, for delayed replica |
| [`pg_checksum`](/docs/pgsql/param#pg_checksum) | `bool` | Enable data checksums for postgres cluster? |
| [`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc) | `enum` | Password encryption algorithm: fixed to scram-sha-256 |
| [`pg_encoding`](/docs/pgsql/param#pg_encoding) | `enum` | Database cluster encoding, default `UTF8` |
| [`pg_locale`](/docs/pgsql/param#pg_locale) | `enum` | Database cluster locale setting, default `C` |
| [`pg_lc_collate`](/docs/pgsql/param#pg_lc_collate) | `enum` | Database cluster collation, default `C` |
| [`pg_lc_ctype`](/docs/pgsql/param#pg_lc_ctype) | `enum` | Database character type, default `C` |
| [`pg_io_method`](/docs/pgsql/param#pg_io_method) | `enum` | PostgreSQL IO method: `auto`, `sync`, `worker`, `io_uring` |
| [`pg_etcd_password`](/docs/pgsql/param#pg_etcd_password) | `password` | Password for this PostgreSQL cluster in etcd, default uses cluster name |
| [`pgsodium_key`](/docs/pgsql/param#pgsodium_key) | `string` | pgsodium encryption master key, 64-bit hex, default sha256(pg_cluster) |
| [`pgsodium_getkey_script`](/docs/pgsql/param#pgsodium_getkey_script) | `path` | pgsodium getkey script path, default uses template pgsodium_getkey |

[`PG_PROVISION`](/docs/pgsql/param#pg_provision) parameter group configures PostgreSQL cluster template provisioning, including default roles, privileges, schemas, extensions, and HBA rules.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pg_provision`](/docs/pgsql/param#pg_provision) | `bool` | Provision postgres cluster business objects after bootstrap? |
| [`pg_init`](/docs/pgsql/param#pg_init) | `string` | Cluster template initialization script, default `pg-init` |
| [`pg_default_roles`](/docs/pgsql/param#pg_default_roles) | `role[]` | Default predefined roles and system users in postgres cluster |
| [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges) | `string[]` | Default privileges when admin user creates database objects |
| [`pg_default_schemas`](/docs/pgsql/param#pg_default_schemas) | `string[]` | List of default schemas to create |
| [`pg_default_extensions`](/docs/pgsql/param#pg_default_extensions) | `extension[]` | List of default extensions to create |
| [`pg_reload`](/docs/pgsql/param#pg_reload) | `bool` | Reload postgres config immediately after HBA changes |
| [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules) | `hba[]` | Postgres host-based authentication rules, global PG default HBA |
| [`pgb_default_hba_rules`](/docs/pgsql/param#pgb_default_hba_rules) | `hba[]` | Pgbouncer default host-based authentication rules, global PGB default HBA |

[`PG_BACKUP`](/docs/pgsql/param#pg_backup) parameter group configures pgBackRest backup and recovery, including repository type, path, retention policy, etc.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pgbackrest_enabled`](/docs/pgsql/param#pgbackrest_enabled) | `bool` | Enable pgbackrest on pgsql host? |
| [`pgbackrest_clean`](/docs/pgsql/param#pgbackrest_clean) | `bool` | Delete previous pg backup data during init? |
| [`pgbackrest_log_dir`](/docs/pgsql/param#pgbackrest_log_dir) | `path` | pgbackrest log directory, default `/pg/log/pgbackrest` |
| [`pgbackrest_method`](/docs/pgsql/param#pgbackrest_method) | `enum` | pgbackrest repo method: local, minio, etc. |
| [`pgbackrest_init_backup`](/docs/pgsql/param#pgbackrest_init_backup) | `bool` | Execute full backup immediately after pgbackrest init? default `true` |
| [`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo) | `dict` | pgbackrest repository definition |

[`PG_ACCESS`](/docs/pgsql/param#pg_access) parameter group configures service exposure, connection pool, VIP, DNS, and other client access options.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pgbouncer_enabled`](/docs/pgsql/param#pgbouncer_enabled) | `bool` | If disabled, pgbouncer connection pool won't be configured |
| [`pgbouncer_port`](/docs/pgsql/param#pgbouncer_port) | `port` | pgbouncer listen port, default 6432 |
| [`pgbouncer_log_dir`](/docs/pgsql/param#pgbouncer_log_dir) | `path` | pgbouncer log directory, default `/pg/log/pgbouncer` |
| [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query) | `bool` | Use AuthQuery to fetch unlisted business users from postgres? |
| [`pgbouncer_poolmode`](/docs/pgsql/param#pgbouncer_poolmode) | `enum` | Pooling mode: transaction, session, statement, default transaction |
| [`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode) | `enum` | pgbouncer client SSL mode, default disabled |
| [`pgbouncer_ignore_param`](/docs/pgsql/param#pgbouncer_ignore_param) | `string[]` | pgbouncer ignore startup parameters list |
| [`pg_weight`](/docs/pgsql/param#pg_weight) | `int` | Relative load balancing weight in service, default 100, range 0-255 |
| [`pg_service_provider`](/docs/pgsql/param#pg_service_provider) | `string` | Dedicated haproxy node group name, or empty for local haproxy |
| [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) | `enum` | If svc.dest='default', default service points to postgres or pgbouncer |
| [`pg_default_services`](/docs/pgsql/param#pg_default_services) | `service[]` | Postgres default service definition list, global shared |
| [`pg_vip_enabled`](/docs/pgsql/param#pg_vip_enabled) | `bool` | Enable L2 VIP for pgsql primary node? default disabled |
| [`pg_vip_address`](/docs/pgsql/param#pg_vip_address) | `cidr4` | VIP address format `<ipv4>/<mask>`, required when vip enabled |
| [`pg_vip_interface`](/docs/pgsql/param#pg_vip_interface) | `string` | VIP network interface to listen, default eth0 |
| [`pg_dns_suffix`](/docs/pgsql/param#pg_dns_suffix) | `string` | pgsql dns suffix, default empty |
| [`pg_dns_target`](/docs/pgsql/param#pg_dns_target) | `enum` | PG DNS resolves to: auto, primary, vip, none, or specific IP |

[`PG_MONITOR`](/docs/pgsql/param#pg_monitor) parameter group configures PostgreSQL monitoring exporters, including pg_exporter, pgbouncer_exporter, and pgbackrest_exporter.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pg_exporter_enabled`](/docs/pgsql/param#pg_exporter_enabled) | `bool` | Enable pg_exporter on pgsql host? |
| [`pg_exporter_config`](/docs/pgsql/param#pg_exporter_config) | `string` | pg_exporter config file/template name |
| [`pg_exporter_cache_ttls`](/docs/pgsql/param#pg_exporter_cache_ttls) | `string` | pg_exporter collector tiered TTL config, default '1,10,60,300' |
| [`pg_exporter_port`](/docs/pgsql/param#pg_exporter_port) | `port` | pg_exporter listen port, default 9630 |
| [`pg_exporter_params`](/docs/pgsql/param#pg_exporter_params) | `string` | Extra URL parameters passed in pg_exporter dsn |
| [`pg_exporter_url`](/docs/pgsql/param#pg_exporter_url) | `pgurl` | If specified, overrides auto-generated postgres DSN connection string |
| [`pg_exporter_auto_discovery`](/docs/pgsql/param#pg_exporter_auto_discovery) | `bool` | Enable monitoring auto database discovery? default enabled |
| [`pg_exporter_exclude_database`](/docs/pgsql/param#pg_exporter_exclude_database) | `string` | Excluded database names when auto discovery enabled, comma-separated |
| [`pg_exporter_include_database`](/docs/pgsql/param#pg_exporter_include_database) | `string` | Only monitor databases in this list when auto discovery enabled |
| [`pg_exporter_connect_timeout`](/docs/pgsql/param#pg_exporter_connect_timeout) | `int` | pg_exporter connection timeout in ms, default 200 |
| [`pg_exporter_options`](/docs/pgsql/param#pg_exporter_options) | `arg` | pg_exporter extra command line options |
| [`pgbouncer_exporter_enabled`](/docs/pgsql/param#pgbouncer_exporter_enabled) | `bool` | Enable pgbouncer_exporter on pgsql host? |
| [`pgbouncer_exporter_port`](/docs/pgsql/param#pgbouncer_exporter_port) | `port` | pgbouncer_exporter listen port, default 9631 |
| [`pgbouncer_exporter_url`](/docs/pgsql/param#pgbouncer_exporter_url) | `pgurl` | If specified, overrides auto-generated pgbouncer dsn connection string |
| [`pgbouncer_exporter_options`](/docs/pgsql/param#pgbouncer_exporter_options) | `arg` | pgbouncer_exporter extra command line options |
| [`pgbackrest_exporter_enabled`](/docs/pgsql/param#pgbackrest_exporter_enabled) | `bool` | Enable pgbackrest_exporter on pgsql host? |
| [`pgbackrest_exporter_port`](/docs/pgsql/param#pgbackrest_exporter_port) | `port` | pgbackrest_exporter listen port, default 9854 |
| [`pgbackrest_exporter_options`](/docs/pgsql/param#pgbackrest_exporter_options) | `arg` | pgbackrest_exporter extra command line options |

[`PG_REMOVE`](/docs/pgsql/param#pg_remove) parameter group configures PostgreSQL instance cleanup and uninstallation behavior, including data directory, backup, and package removal control.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`pg_rm_data`](/docs/pgsql/param#pg_rm_data) | `bool` | Clean postgres data directory when removing pgsql instance? |
| [`pg_rm_backup`](/docs/pgsql/param#pg_rm_backup) | `bool` | Clean pgbackrest backup when removing primary? |
| [`pg_rm_pkg`](/docs/pgsql/param#pg_rm_pkg) | `bool` | Uninstall related packages when removing pgsql instance? |
| [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) | `bool` | Safeguard to prevent accidental pgsql cleanup? default false |


--------

### INFRA Parameters

[`META`](/docs/infra/param#meta) parameter group defines Pigsty meta information, including version number, admin node IP, repository region, default language, and proxy settings.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`version`](/docs/infra/param#version) | `string` | Pigsty version string |
| [`admin_ip`](/docs/infra/param#admin_ip) | `ip` | Admin node IP address |
| [`region`](/docs/infra/param#region) | `enum` | Upstream mirror region: default, china, europe |
| [`language`](/docs/infra/param#language) | `enum` | Default language, en or zh |
| [`proxy_env`](/docs/infra/param#proxy_env) | `dict` | Global proxy environment variables for package downloads |

[`CA`](/docs/infra/param#ca) parameter group configures Pigsty self-signed CA certificate management, including whether to create CA, CA name, and certificate validity.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`ca_create`](/docs/infra/param#ca_create) | `bool` | Create CA if not exists? default true |
| [`ca_cn`](/docs/infra/param#ca_cn) | `string` | CA CN name, fixed to pigsty-ca |
| [`cert_validity`](/docs/infra/param#cert_validity) | `interval` | Certificate validity, default 20 years |

[`INFRA_ID`](/docs/infra/param#infra_id) parameter group defines infrastructure node identity, including node sequence number, service portal configuration, and data directory.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`infra_seq`](/docs/infra/param#infra_seq) | `int` | Infrastructure node sequence number, required identity parameter |
| [`infra_portal`](/docs/infra/param#infra_portal) | `dict` | Infrastructure service list exposed via Nginx portal |
| [`infra_data`](/docs/infra/param#infra_data) | `path` | Infrastructure data directory, default /data/infra |

[`REPO`](/docs/infra/param#repo) parameter group configures local software repository, including repository enable switch, directory path, upstream source definitions, and packages to download.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`repo_enabled`](/docs/infra/param#repo_enabled) | `bool` | Create software repository on this infra node? |
| [`repo_home`](/docs/infra/param#repo_home) | `path` | Software repository home directory, default `/www` |
| [`repo_name`](/docs/infra/param#repo_name) | `string` | Software repository name, default pigsty |
| [`repo_endpoint`](/docs/infra/param#repo_endpoint) | `url` | Repository access point: domain or `ip:port` format |
| [`repo_remove`](/docs/infra/param#repo_remove) | `bool` | Remove existing upstream repo source definition files when building local repo? |
| [`repo_modules`](/docs/infra/param#repo_modules) | `string` | Enabled upstream repository module list, comma-separated |
| [`repo_upstream`](/docs/infra/param#repo_upstream) | `upstream[]` | Upstream repository source definitions: where to download packages |
| [`repo_packages`](/docs/infra/param#repo_packages) | `string[]` | Which packages to download from upstream |
| [`repo_extra_packages`](/docs/infra/param#repo_extra_packages) | `string[]` | Which extra packages to download from upstream |
| [`repo_url_packages`](/docs/infra/param#repo_url_packages) | `string[]` | Extra packages to download by URL |

[`INFRA_PACKAGE`](/docs/infra/param#infra_package) parameter group defines packages to install on infrastructure nodes, including RPM/DEB and PIP packages.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`infra_packages`](/docs/infra/param#infra_packages) | `string[]` | Packages to install on infrastructure nodes |
| [`infra_packages_pip`](/docs/infra/param#infra_packages_pip) | `string` | Packages to install via pip on infrastructure nodes |

[`NGINX`](/docs/infra/param#nginx) parameter group configures Nginx web server and reverse proxy, including enable switch, ports, SSL mode, certificates, and basic authentication.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`nginx_enabled`](/docs/infra/param#nginx_enabled) | `bool` | Enable nginx on this infra node? |
| [`nginx_clean`](/docs/infra/param#nginx_clean) | `bool` | Clean existing nginx config during init? |
| [`nginx_exporter_enabled`](/docs/infra/param#nginx_exporter_enabled) | `bool` | Enable nginx_exporter on this infra node? |
| [`nginx_exporter_port`](/docs/infra/param#nginx_exporter_port) | `port` | nginx_exporter listen port, default 9113 |
| [`nginx_sslmode`](/docs/infra/param#nginx_sslmode) | `enum` | nginx SSL mode: disable, enable, enforce |
| [`nginx_cert_validity`](/docs/infra/param#nginx_cert_validity) | `duration` | nginx self-signed certificate validity, default 397d |
| [`nginx_home`](/docs/infra/param#nginx_home) | `path` | nginx content directory, default `/www`, symlinks to nginx_data |
| [`nginx_data`](/docs/infra/param#nginx_data) | `path` | nginx actual data directory, default /data/nginx |
| [`nginx_users`](/docs/infra/param#nginx_users) | `dict` | nginx basic auth users: username and password dictionary |
| [`nginx_port`](/docs/infra/param#nginx_port) | `port` | nginx listen port, default 80 |
| [`nginx_ssl_port`](/docs/infra/param#nginx_ssl_port) | `port` | nginx SSL listen port, default 443 |
| [`certbot_sign`](/docs/infra/param#certbot_sign) | `bool` | Use certbot to sign certificates? |
| [`certbot_email`](/docs/infra/param#certbot_email) | `string` | certbot notification email address |
| [`certbot_options`](/docs/infra/param#certbot_options) | `string` | certbot extra command line arguments |

[`DNS`](/docs/infra/param#dns) parameter group configures DNSMasq DNS resolution service, including enable switch, listen port, and dynamic DNS records.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`dns_enabled`](/docs/infra/param#dns_enabled) | `bool` | Set up dnsmasq on this infra node? |
| [`dns_port`](/docs/infra/param#dns_port) | `port` | DNS server listen port, default 53 |
| [`dns_records`](/docs/infra/param#dns_records) | `string[]` | Dynamic DNS records resolved by dnsmasq |

[`VICTORIA`](/docs/infra/param#victoria) parameter group configures VictoriaMetrics/Logs/Traces observability suite, including enable switches, ports, data retention policies, etc.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`vmetrics_enabled`](/docs/infra/param#vmetrics_enabled) | `bool` | Enable VictoriaMetrics on this infra node? |
| [`vmetrics_clean`](/docs/infra/param#vmetrics_clean) | `bool` | Clean VictoriaMetrics data during init? |
| [`vmetrics_port`](/docs/infra/param#vmetrics_port) | `port` | VictoriaMetrics listen port, default 8428 |
| [`vmetrics_scrape_interval`](/docs/infra/param#vmetrics_scrape_interval) | `interval` | Global scrape interval, default 10s |
| [`vmetrics_scrape_timeout`](/docs/infra/param#vmetrics_scrape_timeout) | `interval` | Global scrape timeout, default 8s |
| [`vmetrics_options`](/docs/infra/param#vmetrics_options) | `arg` | VictoriaMetrics extra command line arguments |
| [`vlogs_enabled`](/docs/infra/param#vlogs_enabled) | `bool` | Enable VictoriaLogs on this infra node? |
| [`vlogs_clean`](/docs/infra/param#vlogs_clean) | `bool` | Clean VictoriaLogs data during init? |
| [`vlogs_port`](/docs/infra/param#vlogs_port) | `port` | VictoriaLogs listen port, default 9428 |
| [`vlogs_options`](/docs/infra/param#vlogs_options) | `arg` | VictoriaLogs extra command line arguments |
| [`vtraces_enabled`](/docs/infra/param#vtraces_enabled) | `bool` | Enable VictoriaTraces on this infra node? |
| [`vtraces_clean`](/docs/infra/param#vtraces_clean) | `bool` | Clean VictoriaTraces data during init? |
| [`vtraces_port`](/docs/infra/param#vtraces_port) | `port` | VictoriaTraces listen port, default 10428 |
| [`vtraces_options`](/docs/infra/param#vtraces_options) | `arg` | VictoriaTraces extra command line arguments |
| [`vmalert_enabled`](/docs/infra/param#vmalert_enabled) | `bool` | Enable VMAlert on this infra node? |
| [`vmalert_port`](/docs/infra/param#vmalert_port) | `port` | VMAlert listen port, default 8880 |
| [`vmalert_options`](/docs/infra/param#vmalert_options) | `arg` | VMAlert extra command line arguments |

[`PROMETHEUS`](/docs/infra/param#prometheus) parameter group configures Alertmanager and Blackbox Exporter, providing alerting management and network probing.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`blackbox_enabled`](/docs/infra/param#blackbox_enabled) | `bool` | Set up blackbox_exporter on this infra node? |
| [`blackbox_port`](/docs/infra/param#blackbox_port) | `port` | blackbox_exporter listen port, default 9115 |
| [`blackbox_options`](/docs/infra/param#blackbox_options) | `arg` | blackbox_exporter extra command line options |
| [`alertmanager_enabled`](/docs/infra/param#alertmanager_enabled) | `bool` | Set up alertmanager on this infra node? |
| [`alertmanager_port`](/docs/infra/param#alertmanager_port) | `port` | AlertManager listen port, default 9059 |
| [`alertmanager_options`](/docs/infra/param#alertmanager_options) | `arg` | alertmanager extra command line options |
| [`exporter_metrics_path`](/docs/infra/param#exporter_metrics_path) | `path` | exporter metrics path, default /metrics |

[`GRAFANA`](/docs/infra/param#grafana) parameter group configures Grafana visualization platform, including enable switch, port, admin credentials, and data source configuration.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`grafana_enabled`](/docs/infra/param#grafana_enabled) | `bool` | Enable Grafana on this infra node? |
| [`grafana_port`](/docs/infra/param#grafana_port) | `port` | Grafana listen port, default 3000 |
| [`grafana_clean`](/docs/infra/param#grafana_clean) | `bool` | Clean data during Grafana init? |
| [`grafana_admin_username`](/docs/infra/param#grafana_admin_username) | `username` | Grafana admin username, default `admin` |
| [`grafana_admin_password`](/docs/infra/param#grafana_admin_password) | `password` | Grafana admin password, default `pigsty` |
| [`grafana_auth_proxy`](/docs/infra/param#grafana_auth_proxy) | `bool` | Enable Grafana auth proxy? |
| [`grafana_pgurl`](/docs/infra/param#grafana_pgurl) | `url` | External PostgreSQL database URL (for Grafana persistence) |
| [`grafana_view_password`](/docs/infra/param#grafana_view_password) | `password` | Grafana metadb PG datasource password |

--------

### NODE Parameters

[`NODE_ID`](/docs/node/param#node_id) parameter group defines node identity parameters, including node name, cluster name, and whether to borrow identity from PostgreSQL.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`nodename`](/docs/node/param#nodename) | `string` | Node instance identifier, uses hostname if missing, optional |
| [`node_cluster`](/docs/node/param#node_cluster) | `string` | Node cluster identifier, uses 'nodes' if missing, optional |
| [`nodename_overwrite`](/docs/node/param#nodename_overwrite) | `bool` | Overwrite node hostname with nodename? |
| [`nodename_exchange`](/docs/node/param#nodename_exchange) | `bool` | Exchange nodename between playbook hosts? |
| [`node_id_from_pg`](/docs/node/param#node_id_from_pg) | `bool` | Borrow postgres identity as node identity if possible? |

[`NODE_DNS`](/docs/node/param#node_dns) parameter group configures node DNS resolution, including static hosts records and dynamic DNS servers.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`node_write_etc_hosts`](/docs/node/param#node_write_etc_hosts) | `bool` | Modify `/etc/hosts` on target nodes? |
| [`node_default_etc_hosts`](/docs/node/param#node_default_etc_hosts) | `string[]` | Static DNS records in /etc/hosts |
| [`node_etc_hosts`](/docs/node/param#node_etc_hosts) | `string[]` | Extra static DNS records in /etc/hosts |
| [`node_dns_method`](/docs/node/param#node_dns_method) | `enum` | How to handle existing DNS servers: add, none, overwrite |
| [`node_dns_servers`](/docs/node/param#node_dns_servers) | `string[]` | Dynamic DNS server list in /etc/resolv.conf |
| [`node_dns_options`](/docs/node/param#node_dns_options) | `string[]` | DNS resolution options in /etc/resolv.conf |

[`NODE_PACKAGE`](/docs/node/param#node_package) parameter group configures node software sources and package installation.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`node_repo_modules`](/docs/node/param#node_repo_modules) | `enum` | Which repo modules to enable on node? default local |
| [`node_repo_remove`](/docs/node/param#node_repo_remove) | `bool` | Remove existing repos on node when configuring node software repos? |
| [`node_packages`](/docs/node/param#node_packages) | `string[]` | Packages to install on current node |
| [`node_default_packages`](/docs/node/param#node_default_packages) | `string[]` | Default packages to install on all nodes |

[`NODE_TUNE`](/docs/node/param#node_tune) parameter group configures node kernel parameters, feature switches, and performance tuning templates.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`node_disable_numa`](/docs/node/param#node_disable_numa) | `bool` | Disable node NUMA, requires reboot |
| [`node_disable_swap`](/docs/node/param#node_disable_swap) | `bool` | Disable node Swap, use with caution |
| [`node_static_network`](/docs/node/param#node_static_network) | `bool` | Preserve DNS resolver settings after reboot, i.e., static network, default enabled |
| [`node_disk_prefetch`](/docs/node/param#node_disk_prefetch) | `bool` | Configure disk prefetch on HDD to improve performance |
| [`node_kernel_modules`](/docs/node/param#node_kernel_modules) | `string[]` | Kernel modules to enable on this node |
| [`node_hugepage_count`](/docs/node/param#node_hugepage_count) | `int` | Number of 2MB hugepages allocated on host node, higher priority than ratio |
| [`node_hugepage_ratio`](/docs/node/param#node_hugepage_ratio) | `float` | Memory hugepage ratio allocated on host node, 0 disables |
| [`node_overcommit_ratio`](/docs/node/param#node_overcommit_ratio) | `float` | Node memory overcommit ratio (50-100), 0 disables |
| [`node_tune`](/docs/node/param#node_tune) | `enum` | Node tuning profile: none, oltp, olap, crit, tiny |
| [`node_sysctl_params`](/docs/node/param#node_sysctl_params) | `dict` | Extra sysctl config parameters, k:v format |

[`NODE_SEC`](/docs/node/param#node_sec) parameter group configures node security options, including SELinux, firewall, etc.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`node_selinux_mode`](/docs/node/param#node_selinux_mode) | `enum` | SELinux mode: disabled, permissive, enforcing |
| [`node_firewall_mode`](/docs/node/param#node_firewall_mode) | `enum` | Firewall mode: off, none, zone |
| [`node_firewall_intranet`](/docs/node/param#node_firewall_intranet) | `cidr[]` | Intranet CIDR list for firewall rules |
| [`node_firewall_public_port`](/docs/node/param#node_firewall_public_port) | `port[]` | Public open port list, default [22, 80, 443, 5432] |

[`NODE_ADMIN`](/docs/node/param#node_admin) parameter group configures node admin user, data directory, and command aliases.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`node_data`](/docs/node/param#node_data) | `path` | Node main data directory, default `/data` |
| [`node_admin_enabled`](/docs/node/param#node_admin_enabled) | `bool` | Create admin user on target node? |
| [`node_admin_uid`](/docs/node/param#node_admin_uid) | `int` | Node admin user uid and gid |
| [`node_admin_username`](/docs/node/param#node_admin_username) | `username` | Node admin user name, default `dba` |
| [`node_admin_sudo`](/docs/node/param#node_admin_sudo) | `enum` | Admin user sudo privilege: limited, nopass, all, none |
| [`node_admin_ssh_exchange`](/docs/node/param#node_admin_ssh_exchange) | `bool` | Exchange admin ssh keys between node clusters? |
| [`node_admin_pk_current`](/docs/node/param#node_admin_pk_current) | `bool` | Add current user's ssh public key to admin's authorized_keys? |
| [`node_admin_pk_list`](/docs/node/param#node_admin_pk_list) | `string[]` | ssh public keys to add to admin user |
| [`node_aliases`](/docs/node/param#node_aliases) | `dict` | Shell alias commands to configure on host, KV dictionary |

[`NODE_TIME`](/docs/node/param#node_time) parameter group configures node timezone, NTP time sync, and cron jobs.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`node_timezone`](/docs/node/param#node_timezone) | `string` | Set host node timezone, empty string skips |
| [`node_ntp_enabled`](/docs/node/param#node_ntp_enabled) | `bool` | Enable chronyd time sync service? |
| [`node_ntp_servers`](/docs/node/param#node_ntp_servers) | `string[]` | NTP server list in /etc/chrony.conf |
| [`node_crontab_overwrite`](/docs/node/param#node_crontab_overwrite) | `bool` | Append or overwrite when writing /etc/crontab? |
| [`node_crontab`](/docs/node/param#node_crontab) | `string[]` | Crontab entries in /etc/crontab |

[`NODE_VIP`](/docs/node/param#node_vip) parameter group configures node cluster L2 VIP, implemented by keepalived.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`vip_enabled`](/docs/node/param#vip_enabled) | `bool` | Enable L2 VIP on this node cluster? |
| [`vip_address`](/docs/node/param#vip_address) | `ip` | Node VIP address in ipv4 format, required when vip enabled |
| [`vip_vrid`](/docs/node/param#vip_vrid) | `int` | Required integer 1-254, should be unique in same VLAN |
| [`vip_role`](/docs/node/param#vip_role) | `enum` | Optional, master/backup, default backup |
| [`vip_preempt`](/docs/node/param#vip_preempt) | `bool` | Optional, true/false, default false, enable vip preemption |
| [`vip_interface`](/docs/node/param#vip_interface) | `string` | Node VIP network interface to listen, default eth0 |
| [`vip_dns_suffix`](/docs/node/param#vip_dns_suffix) | `string` | Node VIP DNS name suffix, default empty string |
| [`vip_auth_pass`](/docs/node/param#vip_auth_pass) | `password` | VRRP auth password, auto-generated if empty |
| [`vip_exporter_port`](/docs/node/param#vip_exporter_port) | `port` | keepalived exporter listen port, default 9650 |

[`HAPROXY`](/docs/node/param#haproxy) parameter group configures HAProxy load balancer and service exposure on nodes.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`haproxy_enabled`](/docs/node/param#haproxy_enabled) | `bool` | Enable haproxy on this node? |
| [`haproxy_clean`](/docs/node/param#haproxy_clean) | `bool` | Clean all existing haproxy config? |
| [`haproxy_reload`](/docs/node/param#haproxy_reload) | `bool` | Reload haproxy after config? |
| [`haproxy_auth_enabled`](/docs/node/param#haproxy_auth_enabled) | `bool` | Enable haproxy admin page authentication? |
| [`haproxy_admin_username`](/docs/node/param#haproxy_admin_username) | `username` | haproxy admin username, default `admin` |
| [`haproxy_admin_password`](/docs/node/param#haproxy_admin_password) | `password` | haproxy admin password, default `pigsty` |
| [`haproxy_exporter_port`](/docs/node/param#haproxy_exporter_port) | `port` | haproxy exporter port, default 9101 |
| [`haproxy_client_timeout`](/docs/node/param#haproxy_client_timeout) | `interval` | haproxy client connection timeout, default 24h |
| [`haproxy_server_timeout`](/docs/node/param#haproxy_server_timeout) | `interval` | haproxy server connection timeout, default 24h |
| [`haproxy_services`](/docs/node/param#haproxy_services) | `service[]` | haproxy service list to expose on node |

[`NODE_EXPORTER`](/docs/node/param#node_exporter) parameter group configures node monitoring exporter.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`node_exporter_enabled`](/docs/node/param#node_exporter_enabled) | `bool` | Configure node_exporter on this node? |
| [`node_exporter_port`](/docs/node/param#node_exporter_port) | `port` | node exporter listen port, default 9100 |
| [`node_exporter_options`](/docs/node/param#node_exporter_options) | `arg` | node_exporter extra server options |

[`VECTOR`](/docs/node/param#vector) parameter group configures Vector log collector.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`vector_enabled`](/docs/node/param#vector_enabled) | `bool` | Enable vector log collector? |
| [`vector_clean`](/docs/node/param#vector_clean) | `bool` | Clean vector data directory during init? |
| [`vector_data`](/docs/node/param#vector_data) | `path` | vector data directory, default /data/vector |
| [`vector_port`](/docs/node/param#vector_port) | `port` | vector metrics listen port, default 9598 |
| [`vector_read_from`](/docs/node/param#vector_read_from) | `enum` | vector reads logs from beginning or end |
| [`vector_log_endpoint`](/docs/node/param#vector_log_endpoint) | `string[]` | Log send destination endpoint, default sends to infra group |

--------

### ETCD Parameters

[`ETCD`](/docs/etcd/param#etcd) parameter group is for etcd cluster deployment and configuration, including instance identity, cluster name, data directory, ports, and authentication password.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`etcd_seq`](/docs/etcd/param#etcd_seq) | `int` | etcd instance identifier, required |
| [`etcd_cluster`](/docs/etcd/param#etcd_cluster) | `string` | etcd cluster name, default fixed to etcd |
| [`etcd_learner`](/docs/etcd/param#etcd_learner) | `bool` | Initialize etcd instance as learner? |
| [`etcd_data`](/docs/etcd/param#etcd_data) | `path` | etcd data directory, default /data/etcd |
| [`etcd_port`](/docs/etcd/param#etcd_port) | `port` | etcd client port, default 2379 |
| [`etcd_peer_port`](/docs/etcd/param#etcd_peer_port) | `port` | etcd peer port, default 2380 |
| [`etcd_init`](/docs/etcd/param#etcd_init) | `enum` | etcd initial cluster state, new or existing |
| [`etcd_election_timeout`](/docs/etcd/param#etcd_election_timeout) | `int` | etcd election timeout, default 1000ms |
| [`etcd_heartbeat_interval`](/docs/etcd/param#etcd_heartbeat_interval) | `int` | etcd heartbeat interval, default 100ms |
| [`etcd_root_password`](/docs/etcd/param#etcd_root_password) | `password` | etcd root user password for RBAC authentication |

[`ETCD_REMOVE`](/docs/etcd/param#etcd_remove) parameter group controls etcd cluster removal behavior, including safeguard, data cleanup, and package uninstallation.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`etcd_safeguard`](/docs/etcd/param#etcd_safeguard) | `bool` | etcd safeguard to prevent cleaning running etcd instance? |
| [`etcd_rm_data`](/docs/etcd/param#etcd_rm_data) | `bool` | Delete etcd data when removing? default true |
| [`etcd_rm_pkg`](/docs/etcd/param#etcd_rm_pkg) | `bool` | Uninstall etcd package when removing? default false |

--------

### REDIS Parameters

[`REDIS`](/docs/redis/param#redis) parameter group is for Redis cluster deployment and configuration, including identity, instance definitions, working mode, memory configuration, persistence, and monitoring.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`redis_cluster`](/docs/redis/param#redis_cluster) | `string` | Redis database cluster name, required identity parameter |
| [`redis_instances`](/docs/redis/param#redis_instances) | `dict` | Instance definitions on Redis node |
| [`redis_node`](/docs/redis/param#redis_node) | `int` | Redis node number, positive integer, unique in cluster, required |
| [`redis_fs_main`](/docs/redis/param#redis_fs_main) | `path` | Redis main data directory, default `/data` |
| [`redis_exporter_enabled`](/docs/redis/param#redis_exporter_enabled) | `bool` | Redis Exporter enabled? |
| [`redis_exporter_port`](/docs/redis/param#redis_exporter_port) | `port` | Redis Exporter listen port |
| [`redis_exporter_options`](/docs/redis/param#redis_exporter_options) | `string` | Redis Exporter command arguments |
| [`redis_safeguard`](/docs/redis/param#redis_safeguard) | `bool` | Prevent erasing existing Redis |
| [`redis_clean`](/docs/redis/param#redis_clean) | `bool` | Erase existing instance when initializing Redis |
| [`redis_rmdata`](/docs/redis/param#redis_rmdata) | `bool` | Remove data when removing Redis instance? |
| [`redis_mode`](/docs/redis/param#redis_mode) | `enum` | Redis cluster mode: sentinel, cluster, standalone |
| [`redis_conf`](/docs/redis/param#redis_conf) | `string` | Redis config file template, except sentinel |
| [`redis_bind_address`](/docs/redis/param#redis_bind_address) | `ip` | Redis listen address, empty binds to host IP |
| [`redis_max_memory`](/docs/redis/param#redis_max_memory) | `size` | Redis max available memory |
| [`redis_mem_policy`](/docs/redis/param#redis_mem_policy) | `enum` | Redis memory eviction policy |
| [`redis_password`](/docs/redis/param#redis_password) | `password` | Redis password, empty disables password |
| [`redis_rdb_save`](/docs/redis/param#redis_rdb_save) | `string[]` | Redis RDB save directives, empty array disables RDB |
| [`redis_aof_enabled`](/docs/redis/param#redis_aof_enabled) | `bool` | Redis AOF enabled? |
| [`redis_rename_commands`](/docs/redis/param#redis_rename_commands) | `dict` | Redis dangerous command rename list |
| [`redis_cluster_replicas`](/docs/redis/param#redis_cluster_replicas) | `int` | How many replicas per master in Redis native cluster? |
| [`redis_sentinel_monitor`](/docs/redis/param#redis_sentinel_monitor) | `master[]` | Master list monitored by Redis sentinel, only for sentinel cluster |

--------

### MINIO Parameters

[`MINIO`](/docs/minio/param#minio) parameter group is for MinIO cluster deployment and configuration, including identity, storage paths, ports, authentication credentials, and bucket/user provisioning.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`minio_seq`](/docs/minio/param#minio_seq) | `int` | minio instance identifier, required |
| [`minio_cluster`](/docs/minio/param#minio_cluster) | `string` | minio cluster name, default minio |
| [`minio_user`](/docs/minio/param#minio_user) | `username` | minio OS user, default `minio` |
| [`minio_https`](/docs/minio/param#minio_https) | `bool` | Enable HTTPS for MinIO? default true |
| [`minio_node`](/docs/minio/param#minio_node) | `string` | minio node name pattern |
| [`minio_data`](/docs/minio/param#minio_data) | `path` | minio data directory, use `{x...y}` for multiple disks |
| [`minio_volumes`](/docs/minio/param#minio_volumes) | `string` | minio core parameter, specifies member nodes and disks |
| [`minio_domain`](/docs/minio/param#minio_domain) | `string` | minio external domain, default `sss.pigsty` |
| [`minio_port`](/docs/minio/param#minio_port) | `port` | minio service port, default 9000 |
| [`minio_admin_port`](/docs/minio/param#minio_admin_port) | `port` | minio console port, default 9001 |
| [`minio_access_key`](/docs/minio/param#minio_access_key) | `username` | Root access key, default `minioadmin` |
| [`minio_secret_key`](/docs/minio/param#minio_secret_key) | `password` | Root secret key, default `S3User.MinIO` |
| [`minio_extra_vars`](/docs/minio/param#minio_extra_vars) | `string` | Extra environment variables for minio server |
| [`minio_provision`](/docs/minio/param#minio_provision) | `bool` | Execute minio resource provisioning task? default true |
| [`minio_alias`](/docs/minio/param#minio_alias) | `string` | minio deployment client alias |
| [`minio_endpoint`](/docs/minio/param#minio_endpoint) | `string` | minio deployment client alias endpoint |
| [`minio_buckets`](/docs/minio/param#minio_buckets) | `bucket[]` | minio buckets to create |
| [`minio_users`](/docs/minio/param#minio_users) | `user[]` | minio users to create |

[`MINIO_REMOVE`](/docs/minio/param#minio_remove) parameter group controls MinIO cluster removal behavior, including safeguard, data cleanup, and package uninstallation.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`minio_safeguard`](/docs/minio/param#minio_safeguard) | `bool` | Prevent accidental deletion? default false |
| [`minio_rm_data`](/docs/minio/param#minio_rm_data) | `bool` | Delete minio data when removing? default true |
| [`minio_rm_pkg`](/docs/minio/param#minio_rm_pkg) | `bool` | Uninstall minio package when removing? default false |

--------

### FERRET Parameters

[`FERRET`](/docs/ferret/param#ferret) parameter group is for FerretDB deployment and configuration, including identity, underlying PostgreSQL connection, listen port, and SSL settings.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`mongo_seq`](/docs/ferret/param#mongo_seq) | `int` | mongo instance number, required identity parameter |
| [`mongo_cluster`](/docs/ferret/param#mongo_cluster) | `string` | mongo cluster name, required identity parameter |
| [`mongo_pgurl`](/docs/ferret/param#mongo_pgurl) | `pgurl` | PGURL connection string for FerretDB backend |
| [`mongo_ssl_enabled`](/docs/ferret/param#mongo_ssl_enabled) | `bool` | Enable SSL? default `false` |
| [`mongo_listen`](/docs/ferret/param#mongo_listen) | `ip` | Listen address, empty listens on all addresses |
| [`mongo_port`](/docs/ferret/param#mongo_port) | `port` | Service port, default `27017` |
| [`mongo_ssl_port`](/docs/ferret/param#mongo_ssl_port) | `port` | TLS listen port, default `27018` |
| [`mongo_exporter_port`](/docs/ferret/param#mongo_exporter_port) | `port` | Exporter port, default `9216` |
| [`mongo_extra_vars`](/docs/ferret/param#mongo_extra_vars) | `string` | Extra environment variables, default empty string |

--------

### DOCKER Parameters

[`DOCKER`](/docs/docker/param#docker) parameter group is for Docker container engine deployment and configuration, including enable switch, data directory, storage driver, registry mirrors, and monitoring.

| Parameter | Type | Description |
|:---|:---:|:---|
| [`docker_enabled`](/docs/docker/param#docker_enabled) | `bool` | Enable Docker on current node? default disabled |
| [`docker_data`](/docs/docker/param#docker_data) | `path` | Docker data directory, default `/data/docker` |
| [`docker_storage_driver`](/docs/docker/param#docker_storage_driver) | `enum` | Docker storage driver, default `overlay2` |
| [`docker_cgroups_driver`](/docs/docker/param#docker_cgroups_driver) | `enum` | Docker CGroup filesystem driver: cgroupfs, systemd |
| [`docker_registry_mirrors`](/docs/docker/param#docker_registry_mirrors) | `string[]` | Docker registry mirror list |
| [`docker_exporter_port`](/docs/docker/param#docker_exporter_port) | `port` | Docker monitoring metrics export port, default `9323` |
| [`docker_image`](/docs/docker/param#docker_image) | `string[]` | Docker images to pull, default empty list |
| [`docker_image_cache`](/docs/docker/param#docker_image_cache) | `path` | Docker image tarball path to import, default `/tmp/docker/*.tgz` |

