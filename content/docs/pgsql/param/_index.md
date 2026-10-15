---
title: Parameters
description: Customize PostgreSQL clusters with 120 parameters in the PGSQL module
weight: 2000
icon: fa-solid fa-sliders
categories: [Reference]
---


Install [`PGSQL`](/docs/pgsql) only on nodes that Pigsty manages through the [`NODE`](/docs/node) module.
The deployment also needs an available [`ETCD`](/docs/etcd) cluster to store cluster metadata.

Install `PGSQL` on one node to create a standalone server, which is a [primary](/docs/pgsql/config/cluster/#primary) instance.
Install it on additional nodes to create [read replicas](/docs/pgsql/config/cluster/#replica) that provide standby capacity and read-only access.
You can create [offline](/docs/pgsql/config/cluster#offline) instances for ETL, OLAP, and interactive queries.
Use [synchronous standby](/docs/pgsql/config/cluster#sync-standby) and [quorum commit](/docs/pgsql/config/cluster#quorum-commit) for stronger data consistency.
Use [standby clusters](/docs/pgsql/config/cluster/#standby-cluster) and [delayed clusters](/docs/pgsql/config/cluster/#delayed-cluster) to respond quickly to data loss from human error or software defects.

You can organize multiple PGSQL clusters into a horizontally sharded cluster.
Pigsty supports [Citus cluster groups](/docs/pgsql/config/cluster/#citus-cluster) natively.
You can upgrade a standard PGSQL cluster to a distributed database cluster in place.

------------------------------


| Section                         | Description                                                             |
|:--------------------------------|:------------------------------------------------------------------------|
| [`PG_ID`](#pg_id)               | PostgreSQL cluster and instance identity parameters                     |
| [`PG_BUSINESS`](#pg_business)   | Business users, databases, services and access control rule definition  |
| [`PG_INSTALL`](#pg_install)     | PostgreSQL installation: version, paths, packages                       |
| [`PG_BOOTSTRAP`](#pg_bootstrap) | PostgreSQL cluster initialization: Patroni high availability            |
| [`PG_PROVISION`](#pg_provision) | PostgreSQL cluster template provisioning: roles, privileges, extensions |
| [`PG_BACKUP`](#pg_backup)       | pgBackRest backup and recovery configuration                            |
| [`PG_ACCESS`](#pg_access)       | Service exposure, connection pooling, VIP, DNS client access config     |
| [`PG_MONITOR`](#pg_monitor)     | PostgreSQL monitoring exporter configuration                            |
| [`PG_REMOVE`](#pg_remove)       | PostgreSQL instance cleanup and uninstall configuration                 |


----------------

## Parameter Overview

--------

[`PG_ID`](#pg_id) defines cluster and instance identity, including cluster name, instance sequence number, role, shard, and other core identifiers.

| Parameter                               |   Type   | Level | Description                                                              |
|:----------------------------------------|:--------:|:-----:|:-------------------------------------------------------------------------|
| [`pg_mode`](#pg_mode)                   |  `enum`  |  `C`  | pgsql cluster mode: pgsql,citus,mssql,mysql,ivory,pgtde,polar,gpsql,agens,oriole,pgedge |
| [`pg_cluster`](#pg_cluster)             | `string` |  `C`  | pgsql cluster name, REQUIRED identity parameter                          |
| [`pg_seq`](#pg_seq)                     |  `int`   |  `I`  | pgsql instance seq number, REQUIRED identity parameter                   |
| [`pg_role`](#pg_role)                   |  `enum`  |  `I`  | pgsql instance role: primary, replica, standby, offline, or delayed      |
| [`pg_instances`](#pg_instances)         |  `dict`  |  `I`  | define multiple pg instances on node in `{port:ins_vars}` format         |
| [`pg_upstream`](#pg_upstream)           |   `ip`   |  `I`  | replication upstream IP for a standby cluster or cascade replica         |
| [`pg_shard`](#pg_shard)                 | `string` |  `C`  | pgsql shard name; specify explicitly for horizontal sharding             |
| [`pg_group`](#pg_group)                 |  `int`   |  `C`  | non-negative pgsql shard index; specify explicitly for horizontal sharding |
| [`gp_role`](#gp_role)                   |  `enum`  |  `C`  | greenplum role of this cluster, could be master or segment               |
| [`pg_exporters`](#pg_exporters)         |  `dict`  |  `C`  | additional pg_exporters to monitor remote postgres instances             |
| [`pg_offline_query`](#pg_offline_query) |  `bool`  |  `I`  | set to true to mark this replica as offline instance for offline queries |

--------

[`PG_BUSINESS`](#pg_business) defines business users, databases, services, access control rules, and default system user credentials.

| Parameter                                             |     Type      | Level | Description                                                       |
|:------------------------------------------------------|:-------------:|:-----:|:------------------------------------------------------------------|
| [`pg_users`](#pg_users)                               |   `user[]`    | `C`   | postgres business users                                           |
| [`pg_databases`](#pg_databases)                       | `database[]`  | `C`   | postgres business databases                                       |
| [`pg_services`](#pg_services)                         |  `service[]`  | `C`   | postgres business services                                        |
| [`pg_hba_rules`](#pg_hba_rules)                       |    `hba[]`    | `C`   | business hba rules for postgres                                   |
| [`pgb_hba_rules`](#pgb_hba_rules)                     |    `hba[]`    | `C`   | business hba rules for pgbouncer                                  |
| [`pg_crontab`](#pg_crontab)                           |  `string[]`   | `C`   | crontab entries for postgres dbsu                                 |
| [`pg_replication_username`](#pg_replication_username) |  `username`   | `G`   | postgres replication username, `replicator` by default            |
| [`pg_replication_password`](#pg_replication_password) |  `password`   | `G`   | postgres replication password, `DBUser.Replicator` by default     |
| [`pg_admin_username`](#pg_admin_username)             |  `username`   | `G`   | postgres admin username, `dbuser_dba` by default                  |
| [`pg_admin_password`](#pg_admin_password)             |  `password`   | `G`   | postgres admin password in plain text, `DBUser.DBA` by default    |
| [`pg_monitor_username`](#pg_monitor_username)         |  `username`   | `G`   | postgres monitor username, `dbuser_monitor` by default            |
| [`pg_monitor_password`](#pg_monitor_password)         |  `password`   | `G`   | postgres monitor password, `DBUser.Monitor` by default            |
| [`pg_dbsu_password`](#pg_dbsu_password)               |  `password`   | `G/C` | dbsu password, empty string disables it by default, best not set  |

--------

[`PG_INSTALL`](#pg_install) configures the PostgreSQL version, installation paths, packages, and extensions.

| Parameter                                       |    Type     | Level | Description                                                        |
|:------------------------------------------------|:-----------:|:-----:|:-------------------------------------------------------------------|
| [`pg_dbsu`](#pg_dbsu)                           | `username`  | `C`   | os dbsu name, `postgres` by default, better not change it          |
| [`pg_dbsu_uid`](#pg_dbsu_uid)                   |   `int`     | `C`   | os dbsu uid and gid, 26 for default postgres user and group        |
| [`pg_dbsu_sudo`](#pg_dbsu_sudo)                 |  `enum`     | `C`   | dbsu sudo privilege, none,limit,all,nopass. limit by default       |
| [`pg_dbsu_home`](#pg_dbsu_home)                 |  `path`     | `C`   | postgresql home directory, `/var/lib/pgsql` by default             |
| [`pg_dbsu_ssh_exchange`](#pg_dbsu_ssh_exchange) |  `bool`     | `C`   | exchange postgres dbsu ssh key among same pgsql cluster            |
| [`pg_version`](#pg_version)                     |  `enum`     | `C`   | postgres major version to be installed, 18 by default              |
| [`pg_bin_dir`](#pg_bin_dir)                     |  `path`     | `C`   | postgres binary dir, `/usr/pgsql/bin` by default                   |
| [`pg_log_dir`](#pg_log_dir)                     |  `path`     | `C`   | postgres log dir, `/pg/log/postgres` by default                    |
| [`pg_packages`](#pg_packages)                   | `string[]`  | `C`   | pg packages to be installed, `${pg_version}` will be replaced      |
| [`pg_extensions`](#pg_extensions)               | `string[]`  | `C`   | pg extensions to be installed, `${pg_version}` will be replaced    |

--------

[`PG_BOOTSTRAP`](#pg_bootstrap) configures cluster initialization, including Patroni high availability, storage paths, networking, encoding, and other core settings.

| Parameter                                           |    Type    | Level | Description                                                          |
|:----------------------------------------------------|:----------:|:-----:|:---------------------------------------------------------------------|
| [`pg_data`](#pg_data)                               |   `path`   | `C`   | PostgreSQL data directory, `/pg/data` by default                     |
| [`pg_fs_main`](#pg_fs_main)                         |   `path`   | `C`   | mountpoint/path for pg main data, `/data/postgres` by default        |
| [`pg_fs_backup`](#pg_fs_backup)                     |   `path`   | `C`   | mountpoint/path for pg backup data, `/data/backups` by default       |
| [`pg_storage_type`](#pg_storage_type)               |   `enum`   | `C`   | storage type for pg main data, SSD,HDD. SSD by default               |
| [`pg_dummy_filesize`](#pg_dummy_filesize)           |   `size`   | `C`   | size of `/pg/dummy`, hold 64MB disk space for emergency use          |
| [`pg_listen`](#pg_listen)                           |  `ip(s)`   | `C/I` | postgres/pgbouncer listen addr, comma separated list, `0.0.0.0`      |
| [`pg_port`](#pg_port)                               |   `port`   | `C`   | postgres listen port, 5432 by default                                |
| [`pg_localhost`](#pg_localhost)                     |   `path`   | `C`   | postgres unix socket dir for localhost connection                    |
| [`pg_namespace`](#pg_namespace)                     |   `path`   | `C`   | top level key namespace in etcd, used by patroni & vip               |
| [`patroni_enabled`](#patroni_enabled)               |   `bool`   | `C`   | if disabled, no postgres cluster will be created during init         |
| [`patroni_mode`](#patroni_mode)                     |   `enum`   | `C`   | patroni working mode: default,pause,remove                           |
| [`patroni_port`](#patroni_port)                     |   `port`   | `C`   | patroni listen port, 8008 by default                                 |
| [`patroni_log_dir`](#patroni_log_dir)               |   `path`   | `C`   | patroni log dir, `/pg/log/patroni` by default                        |
| [`patroni_ssl_enabled`](#patroni_ssl_enabled)       |   `bool`   | `G`   | secure patroni RestAPI communications with SSL?                      |
| [`patroni_watchdog_mode`](#patroni_watchdog_mode)   |   `enum`   | `C`   | patroni watchdog mode: automatic,required,off. off by default        |
| [`patroni_username`](#patroni_username)             | `username` | `C`   | patroni restapi username, `postgres` by default                      |
| [`patroni_password`](#patroni_password)             | `password` | `C`   | patroni restapi password, `Patroni.API` by default                   |
| [`pg_primary_db`](#pg_primary_db)                   |  `string`  | `C`   | primary database name, used by citus,etc. `postgres` by default      |
| [`pg_parameters`](#pg_parameters)                   |   `dict`   | `C`   | extra parameters in postgresql.auto.conf                             |
| [`pg_files`](#pg_files)                             |  `path[]`  | `C`   | extra files to be copied to PGDATA (e.g. license files)              |
| [`pg_conf`](#pg_conf)                               |   `enum`   | `C`   | config template: oltp,olap,crit,tiny. `oltp.yml` by default          |
| [`pg_max_conn`](#pg_max_conn)                       |   `int`    | `C`   | postgres max connections, `auto` will use recommended value          |
| [`pg_shared_buffer_ratio`](#pg_shared_buffer_ratio) |  `float`   | `C`   | postgres shared buffer memory ratio, 0.25 by default, 0.1~0.4        |
| [`pg_rto`](#pg_rto)                                 |   `enum`   | `C`   | RTO mode: `fast`, `norm`, `safe`, or `wide`; default `norm`          |
| [`pg_rto_plan`](#pg_rto_plan)                       |   `dict`   | `G`   | RTO presets for Patroni HA and HAProxy health-check timeouts         |
| [`pg_rpo`](#pg_rpo)                                 |   `int`    | `C`   | sampled lag threshold for Patroni failover candidates; default `1MiB` |
| [`pg_libs`](#pg_libs)                               |  `string`  | `C`   | preloaded libraries, `pg_stat_statements,auto_explain` by default    |
| [`pg_delay`](#pg_delay)                             | `interval` | `I`   | WAL replay apply delay for standby cluster, for delayed replica      |
| [`pg_checksum`](#pg_checksum)                       |   `bool`   | `C`   | enable data checksum for postgres cluster?                           |
| [`pg_pwd_enc`](#pg_pwd_enc)                         |   `enum`   | `C`   | password encryption algorithm: fixed to scram-sha-256                |
| [`pg_encoding`](#pg_encoding)                       |   `enum`   | `C`   | database cluster encoding, `UTF8` by default                         |
| [`pg_locale`](#pg_locale)                           |   `enum`   | `C`   | database cluster locale, `C` by default                              |
| [`pg_lc_collate`](#pg_lc_collate)                   |   `enum`   | `C`   | database cluster collate, `C` by default                             |
| [`pg_lc_ctype`](#pg_lc_ctype)                       |   `enum`   | `C`   | database character type, `C` by default                              |
| [`pg_io_method`](#pg_io_method)                     |   `enum`   | `C`   | PostgreSQL IO method: `auto`, `sync`, `worker`, `io_uring`           |
| [`pg_etcd_password`](#pg_etcd_password)             | `password` | `C`   | etcd password for this PostgreSQL cluster, cluster name by default   |
| [`pgsodium_key`](#pgsodium_key)                     |  `string`  | `C`   | pgsodium encryption master key, 64 hex digits, sha256(pg_cluster)    |
| [`pgsodium_getkey_script`](#pgsodium_getkey_script) |   `path`   | `C`   | pgsodium getkey script path, uses template pgsodium_getkey           |

--------

[`PG_PROVISION`](#pg_provision) configures cluster templates, including default roles, privileges, schemas, extensions, and HBA rules.

| Parameter                                         |     Type      | Level | Description                                                 |
|:--------------------------------------------------|:-------------:|:-----:|:------------------------------------------------------------|
| [`pg_provision`](#pg_provision)                   |    `bool`     | `C`   | provision postgres cluster content after bootstrap?         |
| [`pg_init`](#pg_init)                             |   `string`    | `G/C` | init script for cluster template, `pg-init` by default      |
| [`pg_default_roles`](#pg_default_roles)           |   `role[]`    | `G/C` | default predefined roles and system users in postgres       |
| [`pg_default_privileges`](#pg_default_privileges) |  `string[]`   | `G/C` | default privileges when created by admin user               |
| [`pg_default_schemas`](#pg_default_schemas)       |  `string[]`   | `G/C` | default schemas to be created                               |
| [`pg_default_extensions`](#pg_default_extensions) | `extension[]` | `G/C` | default extensions to be created                            |
| [`pg_reload`](#pg_reload)                         |    `bool`     | `A`   | reload postgres config after hba changes?                   |
| [`pg_default_hba_rules`](#pg_default_hba_rules)   |    `hba[]`    | `G/C` | postgres default host-based auth rules, global default HBA  |
| [`pgb_default_hba_rules`](#pgb_default_hba_rules) |    `hba[]`    | `G/C` | pgbouncer default host-based auth rules, global default HBA |

--------

[`PG_BACKUP`](#pg_backup) configures pgBackRest backup and recovery, including repository types, paths, and retention policies.

| Parameter                                           |  Type  | Level | Description                                               |
|:----------------------------------------------------|:------:|:-----:|:----------------------------------------------------------|
| [`pgbackrest_enabled`](#pgbackrest_enabled)         | `bool` | `C`   | enable pgbackrest on pgsql host?                          |
| [`pgbackrest_log_dir`](#pgbackrest_log_dir)         | `path` | `C`   | pgbackrest log dir, `/pg/log/pgbackrest` by default       |
| [`pgbackrest_method`](#pgbackrest_method)           | `enum` | `C`   | pgbackrest repo method: local,minio,etc...                |
| [`pgbackrest_init_backup`](#pgbackrest_init_backup) | `bool` | `C`   | perform full backup after init? `true` by default         |
| [`pgbackrest_repo`](#pgbackrest_repo)               | `dict` | `G/C` | pgbackrest repo definition                                |

--------

[`PG_ACCESS`](#pg_access) configures services, connection pooling, VIP, DNS, and other client access options.

| Parameter                                             |    Type     | Level | Description                                                       |
|:------------------------------------------------------|:-----------:|:-----:|:------------------------------------------------------------------|
| [`pgbouncer_enabled`](#pgbouncer_enabled)             |   `bool`    |  `C`  | if disabled, pgbouncer will not be configured                     |
| [`pgbouncer_port`](#pgbouncer_port)                   |   `port`    |  `C`  | pgbouncer listen port, 6432 by default                            |
| [`pgbouncer_log_dir`](#pgbouncer_log_dir)             |   `path`    |  `C`  | pgbouncer log dir, `/pg/log/pgbouncer` by default                 |
| [`pgbouncer_auth_query`](#pgbouncer_auth_query)       |   `bool`    |  `C`  | use AuthQuery to get unlisted business users from postgres?       |
| [`pgbouncer_poolmode`](#pgbouncer_poolmode)           |   `enum`    |  `C`  | pool mode: transaction,session,statement. transaction by default  |
| [`pgbouncer_sslmode`](#pgbouncer_sslmode)             |   `enum`    |  `C`  | pgbouncer client ssl mode, disabled by default                    |
| [`pgbouncer_ignore_param`](#pgbouncer_ignore_param)   | `string[]`  |  `C`  | pgbouncer ignore startup parameters list                          |
| [`pg_weight`](#pg_weight)                             |    `int`    |  `I`  | relative load balancing weight in service, 0-255, 100 by default  |
| [`pg_service_provider`](#pg_service_provider)         |  `string`   | `G/C` | dedicated haproxy node group name, or use local haproxy           |
| [`pg_default_service_dest`](#pg_default_service_dest) |   `enum`    | `G/C` | default service dest if svc.dest='default': postgres or pgbouncer |
| [`pg_default_services`](#pg_default_services)         | `service[]` | `G/C` | postgres default service definition list, shared globally         |
| [`pg_vip_enabled`](#pg_vip_enabled)                   |   `bool`    |  `C`  | enable L2 VIP for pgsql primary? disabled by default              |
| [`pg_vip_address`](#pg_vip_address)                   |   `cidr4`   |  `C`  | vip address in `<ipv4>/<mask>` format, required if vip enabled    |
| [`pg_vip_interface`](#pg_vip_interface)               |  `string`   | `C/I` | vip network interface to bind, `auto` by default                  |
| [`pg_dns_suffix`](#pg_dns_suffix)                     |  `string`   |  `C`  | pgsql dns suffix, empty by default                                |
| [`pg_dns_target`](#pg_dns_target)                     |   `enum`    |  `C`  | PG DNS resolves to: auto, primary, vip, none, or specific IP      |

--------

[`PG_MONITOR`](#pg_monitor) configures PostgreSQL monitoring exporters: pg_exporter, pgbouncer_exporter, and pgbackrest_exporter.

| Parameter                                                       |   Type   | Level | Description                                                  |
|:----------------------------------------------------------------|:--------:|:-----:|:-------------------------------------------------------------|
| [`pg_exporter_enabled`](#pg_exporter_enabled)                   |  `bool`  | `C`   | enable pg_exporter on pgsql host?                            |
| [`pg_exporter_config`](#pg_exporter_config)                     | `string` | `C`   | pg_exporter config file/template name                        |
| [`pg_exporter_cache_ttls`](#pg_exporter_cache_ttls)             | `string` | `C`   | pg_exporter collector ttl stages, '1,10,60,300' by default   |
| [`pg_exporter_port`](#pg_exporter_port)                         |  `port`  | `C`   | pg_exporter listen port, 9630 by default                     |
| [`pg_exporter_params`](#pg_exporter_params)                     | `string` | `C`   | extra URL parameters for pg_exporter dsn                     |
| [`pg_exporter_url`](#pg_exporter_url)                           | `pgurl`  | `C`   | overwrite auto-generated postgres DSN connection string      |
| [`pg_exporter_auto_discovery`](#pg_exporter_auto_discovery)     |  `bool`  | `C`   | enable auto database discovery for monitoring? enabled       |
| [`pg_exporter_exclude_database`](#pg_exporter_exclude_database) | `string` | `C`   | excluded database list when auto-discovery, comma separated  |
| [`pg_exporter_include_database`](#pg_exporter_include_database) | `string` | `C`   | only monitor these databases when auto-discovery enabled     |
| [`pg_exporter_connect_timeout`](#pg_exporter_connect_timeout)   |  `int`   | `C`   | pg_exporter connect timeout in ms, 200 by default            |
| [`pg_exporter_options`](#pg_exporter_options)                   |  `arg`   | `C`   | extra command line options for pg_exporter                   |
| [`pgbouncer_exporter_enabled`](#pgbouncer_exporter_enabled)     |  `bool`  | `C`   | enable pgbouncer_exporter on pgsql host?                     |
| [`pgbouncer_exporter_port`](#pgbouncer_exporter_port)           |  `port`  | `C`   | pgbouncer_exporter listen port, 9631 by default              |
| [`pgbouncer_exporter_url`](#pgbouncer_exporter_url)             | `pgurl`  | `C`   | overwrite auto-generated pgbouncer dsn connection string     |
| [`pgbouncer_exporter_options`](#pgbouncer_exporter_options)     |  `arg`   | `C`   | extra command line options for pgbouncer_exporter            |
| [`pgbackrest_exporter_enabled`](#pgbackrest_exporter_enabled)   |  `bool`  | `C`   | enable pgbackrest_exporter on pgsql host?                    |
| [`pgbackrest_exporter_port`](#pgbackrest_exporter_port)         |  `port`  | `C`   | pgbackrest_exporter listen port, 9854 by default             |
| [`pgbackrest_exporter_options`](#pgbackrest_exporter_options)   |  `arg`   | `C`   | extra command line options for pgbackrest_exporter           |


--------

[`PG_REMOVE`](#pg_remove) controls instance removal, including data directories, backups, and packages.

| Parameter                       |  Type  |  Level  | Description                                              |
|:--------------------------------|:------:|:-------:|:---------------------------------------------------------|
| [`pg_rm_data`](#pg_rm_data)     | `bool` | `G/C/A` | remove postgres data directory when removing instance?   |
| [`pg_rm_backup`](#pg_rm_backup) | `bool` | `G/C/A` | remove pgbackrest backup when removing primary?          |
| [`pg_rm_pkg`](#pg_rm_pkg)       | `bool` | `G/C/A` | uninstall related packages when removing pgsql instance? |
| [`pg_safeguard`](#pg_safeguard) | `bool` | `G/C/A` | prevent accidental pgsql cleanup operations? false       |


------------------------------

## `PG_ID`

Use these parameters to identify PGSQL [entities](/docs/concept/model/pgsql/), such as clusters, instances, and services:


```yaml
# pg_cluster:           #CLUSTER  # pgsql cluster name, required identity parameter
# pg_seq: 0             #INSTANCE # pgsql instance seq number, required identity parameter
# pg_role: replica      #INSTANCE # pgsql role, required, could be primary,replica,offline
# pg_instances: {}      #INSTANCE # define multiple pg instances on node in `{port:ins_vars}` format
# pg_upstream:          #INSTANCE # repl upstream ip addr for standby cluster or cascade replica
# pg_shard:             #CLUSTER  # pgsql shard name, optional identity for sharding clusters
# pg_group: 0           #CLUSTER  # pgsql shard index number, optional identity for sharding clusters
# gp_role: master       #CLUSTER  # greenplum role of this cluster, could be master or segment
pg_offline_query: false #INSTANCE # set to true to enable offline query on this instance
```

You must explicitly set these **identity parameters**.
They have no defaults:

|             Name              |   Type   | Level | Description               |
|:-----------------------------:|:--------:|:-----:|---------------------------|
| [`pg_cluster`](#pg_cluster)   | `string` | **C** | **PG cluster name**       |
|     [`pg_seq`](#pg_seq)       | `number` | **I** | **PG instance ID**        |
|    [`pg_role`](#pg_role)      |  `enum`  | **I** | **PG instance role**      |
|   [`pg_shard`](#pg_shard)     | `string` | **C** | **Shard name**            |
|    [`pg_group`](#pg_group)    | `number` | **C** | **Shard index**           |

- [`pg_cluster`](#pg_cluster): Identifies the cluster name, configured at cluster level.
- [`pg_role`](#pg_role): Configured at instance level, identifies the role of the instance. Only `primary` role is treated specially. If not specified, defaults to `replica` role, with special `delayed` and `offline` roles.
- [`pg_seq`](#pg_seq): Used to identify instances within a cluster, typically an integer starting from 0 or 1, once assigned it doesn't change.
- `{{ pg_cluster }}-{{ pg_seq }}` uniquely identifies an instance, i.e., `pg_instance`.
- `{{ pg_cluster }}-{{ pg_role }}` identifies services within the cluster, i.e., `pg_service`.
- [`pg_shard`](#pg_shard) and [`pg_group`](#pg_group) are used for horizontal sharding clusters, only for citus, greenplum, and matrixdb.

Every PostgreSQL cluster requires these core **identity parameters**: [`pg_cluster`](#pg_cluster), [`pg_role`](#pg_role), and [`pg_seq`](#pg_seq).
Set them explicitly, as in this example:

```yaml
pg-test:
  hosts:
    10.10.10.11: {pg_seq: 1, pg_role: replica}
    10.10.10.12: {pg_seq: 2, pg_role: primary}
    10.10.10.13: {pg_seq: 3, pg_role: replica}
  vars:
    pg_cluster: pg-test
```

Other parameters can inherit global or default values.
You must **manually assign** and **explicitly set** identity parameters.



### `pg_mode`

Parameter Name: `pg_mode`, Type: `enum`, Level: `C`

PostgreSQL cluster mode, default value is `pgsql`, i.e., standard PostgreSQL cluster.

Available mode options include:

- `pgsql`: Standard PostgreSQL cluster
- `citus`: Citus distributed database cluster
- `mssql`: Babelfish MSSQL wire protocol compatible kernel
- `mysql`: OpenHalo/HaloDB MySQL wire protocol compatible kernel
- `ivory`: IvorySQL Oracle compatible kernel
- `pgtde`: Percona PostgreSQL with pg_tde
- `polar`: PolarDB for PostgreSQL kernel
- `gpsql`: Greenplum parallel database cluster (monitoring)
- `agens`: AgensGraph graph database kernel
- `oriole`: OrioleDB storage-engine kernel
- `pgedge`: pgEdge distributed-replication kernel

`pg_shard` defaults to `pg_cluster`, and `pg_group` defaults to `0`.
If `pg_mode` is `citus` or `gpsql` and the sharded system contains multiple physical clusters, set both explicitly.
They define the horizontal-sharding identity.

In both cases, each PostgreSQL cluster is part of a larger business unit.




### `pg_cluster`

Parameter Name: `pg_cluster`, Type: `string`, Level: `C`

PostgreSQL cluster name, required identity parameter, no default value.

The cluster name is used as the namespace for resources.

Current role validation accepts names matching `^[A-Za-z0-9-]+$` and rejects `root`.
Lowercase names that start with a letter are still recommended for consistency with DNS names, service names, and operation scripts.
Use only lowercase letters, digits, and hyphens in these names.




### `pg_seq`

Parameter Name: `pg_seq`, Type: `int`, Level: `I`

PostgreSQL instance sequence number, required identity parameter, no default value.

Assign a unique sequence number to each instance within its **cluster**.
Usually, use natural numbers starting at 0 or 1.
Usually, do not recycle or reuse them.




### `pg_role`

Parameter Name: `pg_role`, Type: `enum`, Level: `I`

PostgreSQL instance role, required identity parameter with no default. Current validation accepts `primary`, `replica`, `standby`, `offline`, and `delayed`.

The commonly used service-membership labels are:

- `primary`: Primary instance, there is one and only one in a cluster.
- `replica`: Replica for serving online read-only traffic, may have slight replication delay under high load (10ms~100ms, 100KB).
- `offline`: Offline replica for handling offline read-only traffic, such as analytics/ETL/personal queries.

`standby` and `delayed` are valid inventory roles.
However, these values alone do not create a standby cluster or delayed replication.
Configure the topology with [`pg_upstream`](#pg_upstream) and [`pg_delay`](#pg_delay).
HBA role filters use the inventory labels directly.




### `pg_instances`

Parameter Name: `pg_instances`, Type: `dict`, Level: `I`

Define multiple PostgreSQL instances on a single host using `{port:ins_vars}` format.

This parameter reserves support for multiple instances on one node.
Pigsty has not implemented this feature yet.
A dedicated node per instance is strongly recommended.





### `pg_upstream`

Parameter Name: `pg_upstream`, Type: `ip`, Level: `I`

Upstream instance IP address for [standby cluster](/docs/pgsql/config/cluster/#standby-cluster) or cascade replica.

Set `pg_upstream` on the cluster `primary` to create a [standby cluster](/docs/pgsql/config/cluster/#standby-cluster).
This instance becomes the `standby leader` and receives and applies changes from the upstream cluster.

On a non-`primary` instance, `pg_upstream` selects the upstream for physical replication.
If this address differs from the primary IP, the instance becomes a **cascade replica**.
You must select another instance in the same cluster.





### `pg_shard`

Parameter Name: `pg_shard`, Type: `string`, Level: `C`

PostgreSQL horizontal shard name, defaulting to `pg_cluster`. Specify it explicitly for horizontal-sharding systems made up of multiple physical clusters, such as Citus.

A **horizontal sharding cluster** is a group of standard PostgreSQL clusters that jointly serve one business with horizontal sharding.

[`pg_shard`](#pg_shard) is the shard group name. It is typically a prefix of [`pg_cluster`](#pg_cluster).

For example, if we have a shard group `pg-citus` with 4 clusters, their identity parameters would be:

```text
cls pg_shard: pg-citus
cls pg_group = 0:   pg-citus0
cls pg_group = 1:   pg-citus1
cls pg_group = 2:   pg-citus2
cls pg_group = 3:   pg-citus3
```





### `pg_group`

Parameter Name: `pg_group`, Type: `int`, Level: `C`

PostgreSQL horizontal-sharding cluster index, defaulting to `0`. Specify it explicitly for horizontal-sharding systems made up of multiple physical clusters, such as Citus.

Use this parameter with [pg_shard](#pg_shard).
The index is usually a non-negative integer.







### `gp_role`

Parameter Name: `gp_role`, Type: `enum`, Level: `C`

Greenplum/Matrixdb role of the PostgreSQL cluster, can be `master` or `segment`.

- `master`: Marks the postgres cluster as a greenplum master instance (coordinator node), this is the default value.
- `segment`: Marks the postgres cluster as a greenplum segment cluster (data node).

This parameter applies only to Greenplum/MatrixDB when [`pg_mode`](#pg_mode) is `gpsql`.
It has no effect on a regular PostgreSQL cluster.






### `pg_exporters`

Parameter Name: `pg_exporters`, Type: `dict`, Level: `C`

Additional exporter definitions for [monitoring](/docs/pgsql/monitor) remote PostgreSQL instances, default value: `{}`

To monitor remote PostgreSQL instances, define them in `pg_exporters` on the infrastructure cluster that runs monitoring.
Then deploy with [`pgsql-monitor.yml`](/docs/pgsql/playbook#pgsql-monitoryml).

```yaml
pg_exporters: # list all remote instances here, alloc a unique unused local port as k
    20001: { pg_cluster: pg-foo, pg_seq: 1, pg_host: 10.10.10.10 }
    20004: { pg_cluster: pg-foo, pg_seq: 2, pg_host: 10.10.10.11 }
    20002: { pg_cluster: pg-bar, pg_seq: 1, pg_host: 10.10.10.12 }
    20003: { pg_cluster: pg-bar, pg_seq: 1, pg_host: 10.10.10.13 }
```






### `pg_offline_query`

Parameter Name: `pg_offline_query`, Type: `bool`, Level: `I`

Set to `true` to mark this instance as eligible for offline queries. The default is `false`.

The flag adds the instance to the default `offline` service candidates.
It also enables HBA rules with `role: offline` on that instance.
The flag alone does not grant connection access.
Access still depends on generated HBA rules, database `CONNECT` privileges, and role attributes.

This flag has an effect similar to `pg_role` = `offline`.
However, dedicated `offline` instances do not serve `replica` requests by default.
They serve only offline and analytical workloads.

If no dedicated offline instance is available, enable this parameter on a regular replica.
To restrict `dbrole_offline` to these instances, explicitly set `role: offline` on its HBA rule.









------------------------------

## `PG_BUSINESS`

Customize cluster templates: users, databases, services, and permission rules.

**Review these parameters carefully.**
They declare the database objects that your business needs.

* Business user definition: [`pg_users`](#pg_users)
* Business database definition: [`pg_databases`](#pg_databases)
* Cluster-specific service definition: [`pg_services`](#pg_services) (global definition: [`pg_default_services`](#pg_default_services))
* PostgreSQL cluster/instance-specific HBA rules: [`pg_hba_rules`](#pg_hba_rules)
* Pgbouncer connection pool-specific HBA rules: [`pgb_hba_rules`](#pgb_hba_rules)
* Cron job (crontab) definition: [`pg_crontab`](#pg_crontab)

[Default database users](/docs/concept/sec/ac#role-system) and their credentials. Their passwords must be changed in production.

* PG admin user: [`pg_admin_username`](#pg_admin_username) / [`pg_admin_password`](#pg_admin_password)
* PG replication user: [`pg_replication_username`](#pg_replication_username) / [`pg_replication_password`](#pg_replication_password)
* PG monitor user: [`pg_monitor_username`](#pg_monitor_username) / [`pg_monitor_password`](#pg_monitor_password)

```yaml
# postgres business object definition, overwrite in group vars
pg_users: []                      # postgres business users
pg_databases: []                  # postgres business databases
pg_services: []                   # postgres business services
pg_hba_rules: []                  # business hba rules for postgres
pgb_hba_rules: []                 # business hba rules for pgbouncer
pg_crontab: []                    # crontab entries for postgres dbsu
# global credentials, overwrite in global vars
pg_dbsu_password: ''              # dbsu password, empty string means no dbsu password by default
pg_replication_username: replicator
pg_replication_password: DBUser.Replicator
pg_admin_username: dbuser_dba
pg_admin_password: DBUser.DBA
pg_monitor_username: dbuser_monitor
pg_monitor_password: DBUser.Monitor
```




### `pg_users`

Parameter Name: `pg_users`, Type: `user[]`, Level: `C`

This list defines PostgreSQL business users at cluster level.
The default is the empty list `[]`.

Each array element is a [user/role](/docs/pgsql/config/user) definition, for example:

```yaml
- name: dbuser_meta               # required, `name` is the only required field for user definition
  password: DBUser.Meta           # optional, password, can be scram-sha-256 hash string or plaintext
  login: true                     # optional, can login by default
  superuser: false                # optional, default false, is superuser?
  createdb: false                 # optional, default false, can create database?
  createrole: false               # optional, default false, can create role?
  inherit: true                   # optional, by default, can this role use inherited privileges?
  replication: false              # optional, default false, can this role do replication?
  bypassrls: false                # optional, default false, can this role bypass row-level security?
  pgbouncer: true                 # optional, default false, add this user to pgbouncer user list? (production users using connection pool should explicitly set to true)
  connlimit: -1                   # optional, user connection limit, default -1 disables limit
  expire_in: 3650                 # optional, this role expires: calculated from creation + n days (higher priority than expire_at)
  expire_at: '2030-12-31'         # optional, when this role expires, use YYYY-MM-DD format string to specify a specific date (lower priority than expire_in)
  comment: pigsty admin user      # optional, description and comment string for this user/role
  roles: [dbrole_admin]           # optional, default roles are: dbrole_{admin,readonly,readwrite,offline}
  parameters: {}                  # optional, use `ALTER ROLE SET` for this role, configure role-level database parameters
  pool_mode: transaction          # optional, pgbouncer pool mode at user level, default transaction
  pool_connlimit: 100             # optional, user-level pool connection limit; omitted values inherit Pigsty's global default of 100
  search_path: public             # optional, key-value config parameter per postgresql docs (e.g., use pigsty as default search_path)
```

> User-level pool quota is consistently defined by `pool_connlimit` (mapped to Pgbouncer `max_user_connections`).





### `pg_databases`

Parameter Name: `pg_databases`, Type: `database[]`, Level: `C`

This list defines PostgreSQL business databases at cluster level.
The default is the empty list `[]`.

Each array element is a [business database](/docs/pgsql/config/db) definition, for example:

```yaml
- name: meta                      # required, `name` is the only required field for database definition
  baseline: cmdb.sql              # optional, database sql baseline file path (relative path in ansible search path, e.g., files/)
  pgbouncer: true                 # optional, add this database to pgbouncer database list? default true
  schemas: [pigsty]               # optional, additional schemas to create, array of schema name strings
  extensions:                     # optional, additional extensions to install: array of extension objects
    - { name: postgis , schema: public }  # can specify which schema to install extension into, or not (if not specified, installs to first schema in search_path)
    - { name: timescaledb }               # some extensions create and use fixed schemas, so no need to specify schema
  comment: pigsty meta database   # optional, description and comment for the database
  owner: postgres                 # optional, database owner, default is postgres
  template: template1             # optional, template to use, default is template1, target must be a template database
  encoding: UTF8                  # optional, database encoding, default UTF8 (must match template database)
  locale: C                       # optional, database locale setting, default C (must match template database)
  lc_collate: C                   # optional, database collate rule, default C (must match template database), no reason to change
  lc_ctype: C                     # optional, database ctype character set, default C (must match template database)
  tablespace: pg_default          # optional, default tablespace, default is 'pg_default'
  allowconn: true                 # optional, allow connections, default true. Explicitly set false to completely forbid connections
  revokeconn: false               # optional, revoke public connect privileges. default false, when true, CONNECT privilege revoked from users other than owner and admin
  register_datasource: true       # optional, register this database to grafana datasource? default true, explicitly false skips registration
  connlimit: -1                   # optional, database connection limit, default -1 means no limit, positive integer limits connections
  pool_auth_user: dbuser_meta     # optional, all connections to this pgbouncer database will authenticate using this user (useful when pgbouncer_auth_query enabled)
  pool_mode: transaction          # optional, database-level pgbouncer pooling mode, default transaction
  pool_size: 50                   # optional, database-level pgbouncer default pool size, default 50
  pool_reserve: 30                # optional, database-level pgbouncer pool reserve, default 30, max additional burst connections when default pool insufficient
  pool_size_min: 0                # optional, database-level pgbouncer pool minimum size, default 0
  pool_connlimit: 100             # optional, database-level max database connections, default 100
```

> Since Pigsty `v4.1.0`, use `pool_reserve` and `pool_connlimit` for database pool fields.
> These names replace the legacy aliases `pool_size_reserve` and `pool_max_db_conn`.

In a database definition, only `name` is required.
All other fields are optional.







### `pg_services`

Parameter Name: `pg_services`, Type: `service[]`, Level: `C`

This list defines PostgreSQL services at cluster level.
The default is the empty list `[]`.

Use this parameter for additional cluster-level services.
Each array object defines one [service](/docs/pgsql/service/#define-service).
This example shows a complete definition:


```yaml
- name: standby                   # required, service name, final svc name will use `pg_cluster` as prefix, e.g., pg-meta-standby
  port: 5435                      # required, exposed service port (as kubernetes service node port mode)
  ip: "*"                         # optional, IP address to bind service, default is all IP addresses
  selector: "[]"                  # required, service member selector, use JMESPath to filter inventory
  backup: "[? pg_role == `primary`]"  # optional, service member selector (backup), service is handled by these instances when default selector instances are all down
  dest: default                   # optional, target port, default|postgres|pgbouncer|<port_number>, default is 'default', Default means use pg_default_service_dest value to decide
  check: /sync                    # optional, health check URL path, default is /, here uses Patroni API: /sync, only sync standby and primary return 200 health status
  maxconn: 5000                   # optional, max frontend connections allowed, default 5000
  balance: roundrobin             # optional, haproxy load balancing algorithm (default roundrobin, other option: leastconn)
  options: 'inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100'
```

This parameter adds cluster-level services.
For services that all PostgreSQL clusters must provide, use [`pg_default_services`](#pg_default_services).





### `pg_hba_rules`

Parameter Name: `pg_hba_rules`, Type: `hba[]`, Level: `C`

Client IP whitelist/blacklist rules for database cluster/instance. Default: `[]` empty list.

Array of objects, each object represents a rule. [HBA](/docs/pgsql/config/hba#define-hba) rule object definition:

```yaml
- title: allow intranet password access
  role: common
  rules:
    - host   all  all  10.0.0.0/8      md5
    - host   all  all  172.16.0.0/12   md5
    - host   all  all  192.168.0.0/16  md5
```

* `title`: Rule title name, rendered as comment in HBA file.
* `rules`: Rule array, each element is a standard HBA rule string.
* `role`: Rule application scope, which instance roles will enable this rule?
    * `common`: Applies to all instances
    * `primary`, `replica`, `offline`: Only applies to instances with specific [`pg_role`](#pg_role).
    * Special case: `role: 'offline'` rules apply to instances with `pg_role : offline`, and also to instances with [`pg_offline_query`](#pg_offline_query) flag.

In addition to the native HBA rule definition above, Pigsty also provides a more convenient alias form:

```yaml
- addr: 'intra'    # world|intra|infra|admin|local|localhost|cluster|<cidr>
  auth: 'pwd'      # trust|pwd|ssl|cert|deny|<official auth method>
  user: 'all'      # all|${dbsu}|${repl}|${admin}|${monitor}|<user>|<group>
  db: 'all'        # all|replication|....
  rules: []        # raw hba string precedence over above all
  title: allow intranet password access
```

[`pg_default_hba_rules`](#pg_default_hba_rules) defines global HBA rules.
Use this parameter for rules specific to a cluster or instance.







### `pgb_hba_rules`

Parameter Name: `pgb_hba_rules`, Type: `hba[]`, Level: `C`

Pgbouncer business HBA rules, default value: `[]`, empty array.

Like [`pg_hba_rules`](#pg_hba_rules), this parameter is an array of [HBA rule objects](/docs/pgsql/config/hba#define-hba).
It applies to Pgbouncer.

[`pgb_default_hba_rules`](#pgb_default_hba_rules) defines global pool HBA rules.
Use this parameter for rules specific to a pool cluster or instance.






### `pg_crontab`

Parameter Name: `pg_crontab`, Type: `string[]`, Level: `C`

This list defines cron jobs for the PostgreSQL database superuser (dbsu), which defaults to `postgres`.
The default list is empty: `[]`.

Each array element is one user crontab entry: `minute hour day month weekday command`.
**Do not include a username.**

```yaml
pg_crontab:
  - '00 01 * * * /pg/bin/pg-backup full'      # Full backup at 1 AM daily
  - '00 13 * * * /pg/bin/pg-backup'           # Incremental backup at 1 PM daily
```

This parameter writes cron jobs to the postgres user's personal crontab file:
- EL systems: `/var/spool/cron/postgres`
- Debian systems: `/var/spool/cron/crontabs/postgres`

> **Note**: This parameter replaces the former use of [`node_crontab`](/docs/node/param#node_crontab) for postgres user tasks.
> NODE initialization writes `node_crontab` to `/etc/crontab`.
> At that time, the `postgres` user may not exist, which causes cron errors.




### `pg_replication_username`

Parameter Name: `pg_replication_username`, Type: `username`, Level: `G`

PostgreSQL physical replication username, default is `replicator`, not recommended to change this parameter.






### `pg_replication_password`

Parameter Name: `pg_replication_password`, Type: `password`, Level: `G`

PostgreSQL physical replication user password, default value: `DBUser.Replicator`.

> Warning: Change this password in production environments.





### `pg_admin_username`

Parameter Name: `pg_admin_username`, Type: `username`, Level: `G`

PostgreSQL / Pgbouncer admin name, default: `dbuser_dba`.

This global database administrator has superuser privileges and permission to manage connection pool traffic.
Restrict where you use it.





### `pg_admin_password`

Parameter Name: `pg_admin_password`, Type: `password`, Level: `G`

PostgreSQL / Pgbouncer admin password, default: `DBUser.DBA`.

> Warning: Change this password in production environments.





### `pg_monitor_username`

Parameter Name: `pg_monitor_username`, Type: `username`, Level: `G`

PostgreSQL/Pgbouncer monitor username, default: `dbuser_monitor`.

This user monitors databases and connection pools.
Changing the username is not recommended.

If an existing database has a different monitoring user, set this parameter when you define the monitoring target.






### `pg_monitor_password`

Parameter Name: `pg_monitor_password`, Type: `password`, Level: `G`

Password used by PostgreSQL/Pgbouncer monitor user, default: `DBUser.Monitor`.

Avoid password characters such as `@:/` that can be confused with URL delimiters.

> Warning: Change this password in production environments.




### `pg_dbsu_password`

Parameter Name: `pg_dbsu_password`, Type: `password`, Level: `G/C`

PostgreSQL [`pg_dbsu`](#pg_dbsu) superuser password, default is empty string, meaning no password is set.

Password login for dbsu is not recommended because it increases the attack surface.
The exception is [`pg_mode`](#pg_mode) = `citus`.
Citus requires a dbsu password for each shard cluster to allow connections within the shard cluster.







------------------------------

## `PG_INSTALL`

These parameters control PostgreSQL and extension installation.
Change [`pg_version`](#pg_version) and [`pg_extensions`](#pg_extensions) to select major versions and extensions.
Some extensions are unavailable for some major versions.


```yaml
pg_dbsu: postgres                 # os dbsu name, default is postgres, better not change it
pg_dbsu_uid: 26                   # os dbsu uid and gid, default is 26, for default postgres user and group
pg_dbsu_sudo: limit               # dbsu sudo privilege, none,limit,all,nopass. default is limit
pg_dbsu_home: /var/lib/pgsql      # postgresql home directory, default is `/var/lib/pgsql`
pg_dbsu_ssh_exchange: true        # exchange postgres dbsu ssh key among same pgsql cluster
pg_version: 18                    # postgres major version to be installed, default is 18
pg_bin_dir: /usr/pgsql/bin        # postgres binary dir, default is `/usr/pgsql/bin`
pg_log_dir: /pg/log/postgres      # postgres log dir, default is `/pg/log/postgres`
pg_packages:                      # pg packages to be installed, alias can be used
  - pgsql-main pgsql-common
pg_extensions: []                 # pg extensions to be installed, alias can be used
```



### `pg_dbsu`

Parameter Name: `pg_dbsu`, Type: `username`, Level: `C`

OS dbsu username used by PostgreSQL, default is `postgres`, changing this username is not recommended.

Some deployments require a dbsu name other than `postgres`.
For Greenplum, use `gpadmin`.
For MatrixDB, use `mxadmin`.





### `pg_dbsu_uid`

Parameter Name: `pg_dbsu_uid`, Type: `int`, Level: `C`

OS database superuser uid and gid, `26` is the default postgres user UID/GID from PGDG RPM.

Debian and Ubuntu have no default UID/GID, and `26` is often already in use.
If Pigsty detects a Debian-based system and UID `26`, it substitutes `pg_dbsu_uid = 543` automatically.







### `pg_dbsu_sudo`

Parameter Name: `pg_dbsu_sudo`, Type: `enum`, Level: `C`

Database superuser sudo privilege, can be `none`, `limit`, `all`, or `nopass`. Default is `limit`

- `none`: No sudo privilege
- `limit`: Limited sudo privilege for executing `systemctl` commands for database-related components (default option).
- `all`: Full `sudo` privilege, requires password.
- `nopass`: Full `sudo` privilege without password (not recommended).

- Default value is `limit`, only allows executing `sudo systemctl <start|stop|reload> <postgres|patroni|pgbouncer|...>`.




### `pg_dbsu_home`

Parameter Name: `pg_dbsu_home`, Type: `path`, Level: `C`

PostgreSQL home directory, default is `/var/lib/pgsql`, consistent with official pgdg RPM.






### `pg_dbsu_ssh_exchange`

Parameter Name: `pg_dbsu_ssh_exchange`, Type: `bool`, Level: `C`

Whether to exchange OS dbsu ssh keys within the same PostgreSQL cluster?

Default is `true`, meaning database superusers in the same cluster can ssh to each other.

`pg_cluster_members` selects hosts with the same `pg_cluster` across the current inventory for key exchange.
It does not require an Ansible group with the cluster name.
The runtime `-l` limit still restricts playbook targets.
Include every member that needs configuration.






### `pg_version`

Parameter Name: `pg_version`, Type: `enum`, Level: `C`

PostgreSQL major version to install, default is `18`.

Physical streaming replication cannot cross PostgreSQL major versions.
Thus, avoid setting this parameter at instance level.

You can use parameters in [`pg_packages`](#pg_packages) and [`pg_extensions`](#pg_extensions) to install different packages and extensions for specific PG major versions.





### `pg_bin_dir`

Parameter Name: `pg_bin_dir`, Type: `path`, Level: `C`

PostgreSQL binary directory, default is `/usr/pgsql/bin`.

Installation creates this symlink manually.
It points to the directory for the installed PostgreSQL version.

For example `/usr/pgsql -> /usr/pgsql-15`. On Ubuntu/Debian it points to `/usr/lib/postgresql/15/bin`.

For more details, see [PGSQL File Structure](/docs/ref/fhs/#postgresql-fhs).





### `pg_log_dir`

Parameter Name: `pg_log_dir`, Type: `path`, Level: `C`

PostgreSQL log directory, default: `/pg/log/postgres`. The Vector log agent uses this variable to collect PostgreSQL logs.

If [`pg_log_dir`](#pg_log_dir) is under [`pg_data`](#pg_data), Pigsty does not create it separately.
Data directory initialization creates it automatically.






### `pg_packages`

Parameter Name: `pg_packages`, Type: `string[]`, Level: `C`

This array specifies PostgreSQL RPM or DEB packages to install.
Each element can contain package aliases separated by spaces or commas.

Pigsty v4 converges the default value to two aliases:

```yaml
pg_packages:
  - pgsql-main pgsql-common
```

- `pgsql-main`: Maps to PostgreSQL kernel, client, PL languages, and core extensions like `pg_repack`, `wal2json`, `pgvector` on the current platform.
- `pgsql-common`: Maps to companion components required for running the database, such as Patroni, Pgbouncer, pgBackRest, pg_exporter, vip-manager, and other daemons.

Find aliases in `pg_package_map` under [`roles/node_id/vars/`](https://github.com/pgsty/pigsty/tree/main/roles/node_id/vars).
Pigsty first resolves aliases for the operating system and architecture.
It then replaces `$v` or `${pg_version}` with [`pg_version`](#pg_version) and installs the packages.
This hides package-name differences between distributions.

For additional packages, such as FDWs or extensions, append aliases or package names to `pg_packages`.
Keep `pgsql-main pgsql-common` to ensure that core components remain installed.






### `pg_extensions`

Parameter Name: `pg_extensions`, Type: `string[]`, Level: `G/C`

This array specifies PostgreSQL extension RPM or DEB packages to install.
Use package names or aliases.

Since v4, the default is an empty list, `[]`.
Pigsty no longer installs large extensions automatically.
Select the extensions you need to avoid unnecessary disk use and dependencies.

To install extensions, fill in like this:

```yaml
pg_extensions:
  - postgis timescaledb pgvector
  - pgsql-fdw     # use alias to install common FDWs at once
```

`pg_package_map` aliases hide package-name differences between distributions.
These examples use extension aliases and category groups from the current v4.5 EL9 map.
Availability can differ by platform and PostgreSQL major version:

```bash
pg_extensions: # extensions to be installed on this cluster
  - timescaledb postgis pgvector pg_search pg_duckdb pg_repack wal2json
  # You can also select current category groups; install only the groups you need
  # - pgsql-time pgsql-gis pgsql-rag pgsql-fts pgsql-olap
  # - pgsql-feat pgsql-lang pgsql-type pgsql-util pgsql-func
  # - pgsql-admin pgsql-stat pgsql-sec pgsql-fdw pgsql-sim pgsql-etl
```

For exact mappings, check the target platform in [`roles/node_id/vars/<os>.<arch>.yml`](https://github.com/pgsty/pigsty/tree/main/roles/node_id/vars) and the current [**extension catalog**](/ext/list/).
The v4.5 catalog and current mainstream-platform maps removed `pg_analytics` and `spat`.
Do not copy them from older examples.





------------------------------

## `PG_BOOTSTRAP`


Initialize the PostgreSQL cluster with Patroni and configure one Pgbouncer connection pool per instance.

It also initializes the database cluster with default roles, users, privileges, schemas, and extensions defined in [`PG_PROVISION`](#pg_provision).

These parameters configure PGSQL initialization.
The internal variable [`pg_data`](#pg_data) always refers to the `/pg/data` symlink.
Do not override it in the inventory.
To change the physical data directory location, set [`pg_fs_main`](#pg_fs_main).


```yaml
pg_fs_main: /data/postgres        # postgres main data directory, `/data/postgres` by default
pg_fs_backup: /data/backups       # postgres backup data directory, `/data/backups` by default
pg_storage_type: SSD              # storage type for pg main data, SSD,HDD, SSD by default
pg_dummy_filesize: 64MiB          # size of `/pg/dummy`, hold 64MB disk space for emergency use
pg_listen: '0.0.0.0'              # postgres/pgbouncer listen addresses, comma separated list
pg_port: 5432                     # postgres listen port, 5432 by default
pg_localhost: /var/run/postgresql # postgres unix socket dir for localhost connection
patroni_enabled: true             # if disabled, no postgres cluster will be created during init
patroni_mode: default             # patroni working mode: default,pause,remove
pg_namespace: /pg                 # top level key namespace in etcd, used by patroni & vip
patroni_port: 8008                # patroni listen port, 8008 by default
patroni_log_dir: /pg/log/patroni  # patroni log dir, `/pg/log/patroni` by default
patroni_ssl_enabled: false        # secure patroni RestAPI communications with SSL?
patroni_watchdog_mode: off        # patroni watchdog mode: automatic,required,off. off by default
patroni_username: postgres        # patroni restapi username, `postgres` by default
patroni_password: Patroni.API     # patroni restapi password, `Patroni.API` by default
pg_etcd_password: ''              # etcd password for this pg cluster, '' to use pg_cluster
pg_primary_db: postgres           # primary database name, used by citus,etc... ,postgres by default
pg_parameters: {}                 # extra parameters in postgresql.auto.conf
pg_files: []                      # extra files to be copied to postgres data directory (e.g. license)
pg_conf: oltp.yml                 # config template: oltp,olap,crit,tiny. `oltp.yml` by default
pg_max_conn: auto                 # postgres max connections, `auto` will use recommended value
pg_shared_buffer_ratio: 0.25      # postgres shared buffers ratio, 0.25 by default, 0.1~0.4
pg_io_method: worker              # io method for postgres, auto,sync,worker,io_uring, worker by default
pg_rto: norm                      # shared RTO mode: fast,norm,safe,wide
pg_rpo: 1048576                   # sampled failover-candidate lag threshold in bytes, `1MiB` by default
pg_libs: 'pg_stat_statements, auto_explain'  # preloaded libraries, `pg_stat_statements,auto_explain` by default
pg_delay: 0                       # replication apply delay for standby cluster leader
pg_checksum: true                 # enable data checksum for postgres cluster?
pg_pwd_enc: scram-sha-256         # passwords encryption algorithm: fixed to scram-sha-256
pg_encoding: UTF8                 # database cluster encoding, `UTF8` by default
pg_locale: C                      # database cluster local, `C` by default
pg_lc_collate: C                  # database cluster collate, `C` by default
pg_lc_ctype: C                    # database character type, `C` by default
#pgsodium_key: ""                 # pgsodium key, 64 hex digit, default to sha256(pg_cluster)
#pgsodium_getkey_script: ""       # pgsodium getkey script path, pgsodium_getkey by default
```



### `pg_data`

Internal Variable: `pg_data`, Type: `path`

`pg_data` is an internal Pigsty variable.
It always refers to the PostgreSQL data directory symlink, `/pg/data`.
It is not a user configuration parameter.

Patroni templates, maintenance scripts, and cleanup procedures depend on this symlink.
Do not override or change it in `pigsty.yml`.
Set [`pg_fs_main`](#pg_fs_main) to change the physical data location.
See [PGSQL File Structure](/docs/ref/fhs).





### `pg_fs_main`

Parameter Name: `pg_fs_main`, Type: `path`, Level: `C`

Mount point/file system path for PostgreSQL main data disk, default is `/data/postgres`.

Default value: `/data/postgres`, which will be used directly as the parent directory of PostgreSQL main data directory.

NVMe SSD storage is recommended for PostgreSQL main data.
Pigsty optimizes for SSDs by default and also supports HDDs.

You can change [`pg_storage_type`](#pg_storage_type) to `HDD` for HDD storage optimization.





### `pg_fs_backup`

Parameter Name: `pg_fs_backup`, Type: `path`, Level: `C`

Mount point/file system path for PostgreSQL backup data disk, default is `/data/backups`.

If you're using the default [`pgbackrest_method`](#pgbackrest_method) = `local`, it's recommended to use a separate disk for backup storage.

The backup disk must hold all required backups.
It should hold at least 3 base backups and 2 days of WAL archives.
Large, inexpensive HDDs usually provide sufficient capacity.

Use a separate backup disk when possible.
Otherwise, Pigsty uses the main data disk and consumes its capacity and I/O.





### `pg_storage_type`

Parameter Name: `pg_storage_type`, Type: `enum`, Level: `C`

Type of PostgreSQL data storage media: `SSD` or `HDD`, default is `SSD`.

Default value: `SSD`, which affects some tuning parameters like `random_page_cost` and `effective_io_concurrency`.




### `pg_dummy_filesize`

Parameter Name: `pg_dummy_filesize`, Type: `size`, Level: `C`

Size of `/pg/dummy`, default is `64MiB`, 64MB disk space for emergency use.

If the disk is full, delete the placeholder file to release emergency space.
For production, use at least `8GiB`.





### `pg_listen`

Parameter Name: `pg_listen`, Type: `ip`, Level: `C`

PostgreSQL / Pgbouncer listen address, default is `0.0.0.0` (all ipv4 addresses).

You can use placeholders in this variable, for example: `'${ip},${lo}'` or `'${ip},${vip},${lo}'`:

- `${ip}`: Translates to `inventory_hostname`, which is the primary internal IP address defined in the inventory.
- `${vip}`: If [`pg_vip_enabled`](#pg_vip_enabled) is enabled, will use the host part of [`pg_vip_address`](#pg_vip_address).
- `${lo}`: Will be replaced with `127.0.0.1`

For production environments with high security requirements, restrict the listen IP addresses.




### `pg_port`

Parameter Name: `pg_port`, Type: `port`, Level: `C`

Port that PostgreSQL server listens on, default is `5432`.





### `pg_localhost`

Parameter Name: `pg_localhost`, Type: `path`, Level: `C`

Unix socket directory for localhost PostgreSQL connection, default is `/var/run/postgresql`.

This directory holds Unix sockets for local PostgreSQL and Pgbouncer connections.
[`pg_exporter`](/docs/pgsql/param/#pg_monitor) and Patroni prefer Unix sockets for PostgreSQL access.




### `pg_namespace`

Parameter Name: `pg_namespace`, Type: `path`, Level: `C`

Top-level namespace used in [etcd](/docs/etcd/param/#etcd), used by patroni and vip-manager, default is: `/pg`, not recommended to change.





### `patroni_enabled`

Parameter Name: `patroni_enabled`, Type: `bool`, Level: `C`

Enable Patroni? Default is: `true`.

If disabled, Pigsty does not create a PostgreSQL cluster during initialization.
It skips Patroni startup.
Use this setting when adding components to an existing PostgreSQL instance.




### `patroni_mode`

Parameter Name: `patroni_mode`, Type: `enum`, Level: `C`

Patroni working mode: `default`, `pause`, `remove`. Default: `default`.

- `default`: Normal use of Patroni to bootstrap PostgreSQL cluster
- `pause`: Similar to `default`, but enters maintenance mode after bootstrap
- `remove`: Use Patroni to initialize cluster, then remove Patroni and use raw PostgreSQL.




### `patroni_port`

Parameter Name: `patroni_port`, Type: `port`, Level: `C`

Patroni listen port, default is `8008`, not recommended to change.

Patroni API server listens on this port for health checks and API requests.




### `patroni_log_dir`

Parameter Name: `patroni_log_dir`, Type: `path`, Level: `C`

Patroni log directory, default is `/pg/log/patroni`, collected by Vector log agent.







### `patroni_ssl_enabled`

Parameter Name: `patroni_ssl_enabled`, Type: `bool`, Level: `G`

Secure patroni RestAPI communications with SSL? Default is `false`.

Set this global flag only before deployment.
When Patroni SSL is enabled, health checks, metric collection, and API calls must use HTTPS instead of HTTP.





### `patroni_watchdog_mode`

Parameter Name: `patroni_watchdog_mode`, Type: `string`, Level: `C`

Patroni watchdog mode: `automatic`, `required`, `off`, default is `off`.

If the primary fails, Patroni can use a [watchdog](https://patroni.readthedocs.io/en/latest/watchdog.html) to force the old primary node to stop.
This prevents split brain.

- `off`: Don't use `watchdog`. No fencing at all (default behavior)
- `automatic`: Enable `watchdog` if kernel has `softdog` module enabled and watchdog belongs to dbsu.
- `required`: Force enable `watchdog`, refuse to start Patroni/PostgreSQL if `softdog` unavailable.

The default is `off`.
Do not enable the watchdog on infrastructure nodes.
Consider it for critical systems where data consistency takes priority over availability, especially financial applications.

Normally, split brain is not a risk when all traffic uses HAProxy health-check [service access](/docs/pgsql/service/#access-service).





### `patroni_username`

Parameter Name: `patroni_username`, Type: `username`, Level: `C`

Patroni REST API username, default is `postgres`, used with [`patroni_password`](#patroni_password).

Patroni protects dangerous REST API operations, such as cluster restart, with an additional username and password.
See [Configure Cluster](/docs/pgsql/admin/cluster/#config-cluster) and [Patroni REST API](https://patroni.readthedocs.io/en/latest/rest_api.html).





### `patroni_password`

Parameter Name: `patroni_password`, Type: `password`, Level: `C`

Patroni REST API password, default is `Patroni.API`.

> Warning: Must change this parameter in production environments!





### `pg_primary_db`

Parameter Name: `pg_primary_db`, Type: `string`, Level: `C`

This parameter selects the primary database for Citus and other business databases.
The default is `postgres`.

For example, when using Patroni to manage HA Citus clusters, you must choose a "primary database".

The connection string printed after PGSQL installation also uses this database name.






### `pg_parameters`

Parameter Name: `pg_parameters`, Type: `dict`, Level: `G/C/I`

Used to specify and manage configuration parameters in `postgresql.auto.conf`.

After all instances initialize, `pg_param` writes this dictionary's key-value pairs in order to `/pg/data/postgresql.auto.conf`.

> Do not edit this file manually or change cluster parameters with `ALTER SYSTEM`.
> The next configuration synchronization overwrites those changes.

This variable takes priority over cluster configuration in Patroni and DCS, including changes made with Patroni `edit-config`.
Use it to override cluster defaults for an instance.

Cluster members with different hardware specifications are not recommended.
If you use them, this parameter provides detailed configuration for each instance.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary , pg_parameters: { shared_buffers: '5GB' } }
    10.10.10.12: { pg_seq: 2, pg_role: replica , pg_parameters: { shared_buffers: '4GB' } }
    10.10.10.13: { pg_seq: 3, pg_role: replica , pg_parameters: { shared_buffers: '3GB' } }
```

Patroni sets some [important cluster parameters](https://patroni.readthedocs.io/en/latest/patroni_configuration.html#important-rules) through command-line arguments.
These have requirements for primary and replica values and take the highest priority.
You cannot override them with this parameter.
Manage them with Patroni `edit-config`.

These PostgreSQL parameters must be consistent on the primary and replicas.
Inconsistent values cause replica startup failure:

- `wal_level`
- `max_connections`
- `max_locks_per_transaction`
- `max_worker_processes`
- `max_prepared_transactions`
- `track_commit_timestamp`

For failover, these parameters should also be consistent on the primary and replicas:

- `listen_addresses`
- `port`
- `cluster_name`
- `hot_standby`
- `wal_log_hints`
- `max_wal_senders`
- `max_replication_slots`
- `wal_keep_segments`
- `wal_keep_size`

You can set parameters that do not yet exist, such as extension GUCs that `ALTER SYSTEM` cannot change.
However, invalid values for existing parameters can prevent PostgreSQL startup.
Configure them carefully.






### `pg_files`

Parameter Name: `pg_files`, Type: `path[]`, Level: `C`

Used to specify a list of files to be copied to the PGDATA directory, default is empty array: `[]`

Pigsty copies these files to `{{ pg_data }}`.
This is mainly used for license files required by commercial PostgreSQL kernels.

Currently, only the Oracle-compatible PolarDB kernel requires license files.
For example, put `license.lic` in `files/` and list it in `pg_files`:

```yaml
pg_files: [ license.lic ]
```






### `pg_conf`

Parameter Name: `pg_conf`, Type: `enum`, Level: `C`

Configuration template: `{oltp,olap,crit,tiny}.yml`, default is `oltp.yml`.

- `tiny.yml`: Optimized for small nodes, VMs, small demos (1-8 cores, 1-16GB)
- `oltp.yml`: Optimized for OLTP workloads and latency-sensitive applications (4C8GB+) (default template)
- `olap.yml`: Optimized for OLAP workloads and throughput (4C8G+)
- `crit.yml`: Optimized for data consistency and critical applications (4C8G+)

The default is `oltp.yml`.
On a small node, the [configure](/docs/setup/install#configure) script selects `tiny.yml`.

For a custom template, put it in `templates/<mode>.yml`.
Set this parameter to the template name.




### `pg_max_conn`

Parameter Name: `pg_max_conn`, Type: `int`, Level: `C`

This parameter sets the maximum PostgreSQL connections.
Select a value from 50 to 5000, or use `auto` for the recommended value.

Default is `auto`, which sets max connections based on [`pg_conf`](#pg_conf) and [`pg_default_service_dest`](#pg_default_service_dest).

- tiny: 100
- olap: 200
- oltp: 200 (pgbouncer) / 1000 (postgres)
    - pg_default_service_dest = pgbouncer : 200
    - pg_default_service_dest = postgres : 1000
- crit: 200 (pgbouncer) / 1000 (postgres)
    - pg_default_service_dest = pgbouncer : 200
    - pg_default_service_dest = postgres : 1000

Values above 5000 are not recommended.
For larger values, manually increase the HAProxy service connection limits.

Pgbouncer transaction pooling reduces problems from excessive OLTP connections.
Thus, a large connection count is not recommended by default.

For OLAP scenarios, change [`pg_default_service_dest`](#pg_default_service_dest) to `postgres` to bypass connection pooling.





### `pg_shared_buffer_ratio`

Parameter Name: `pg_shared_buffer_ratio`, Type: `float`, Level: `C`

Postgres shared buffer memory ratio, default is `0.25`, normal range is `0.1`~`0.4`.

The default, `0.25`, assigns 25% of node memory to PostgreSQL shared buffers.
For huge pages, keep this value sufficiently below [`node_hugepage_ratio`](/docs/node/param/#node_hugepage_ratio).

Values above 0.4 (40%) are usually not recommended, but may help in extreme cases.

Shared buffers are only part of PostgreSQL shared memory.
Use `show shared_memory_size_in_huge_pages;` to calculate the total shared memory.





### `pg_rto`

Parameter Name: `pg_rto`, Type: `enum`, Level: `C`

Recovery Time Objective (RTO) mode controlling Patroni and HAProxy timeout parameters. The default is `norm`.

Pigsty provides four presets tuned for different network conditions and deployment scenarios:

| Mode   | Scenario               | Network conditions       | Source target RTO | Patroni TTL | False-failover risk |
|:-------|:-----------------------|:-------------------------|:------------------|:------------|:--------------------|
| `fast` | Same rack or switch    | < 1 ms, highly stable    | **< 30s**         | 20s         | Higher              |
| `norm` | Same datacenter        | 1-5 ms, normal           | **< 45s**         | 30s         | Medium              |
| `safe` | Cross-datacenter       | 10-50 ms                 | **< 90s**         | 60s         | Lower               |
| `wide` | Cross-region/continent | 100-200 ms, public WAN   | **< 150s**        | 120s        | Lowest              |

A shorter RTO speeds recovery but increases false-failure detection from network jitter.
Select a mode for your network conditions.
See [RTO Trade-offs](/docs/concept/ha/rto/).

The current template recognizes only these four string keys.
Other values, including numbers, select `norm`; they do not specify seconds.
For another timeout combination, add a key to [`pg_rto_plan`](#pg_rto_plan) and use it as `pg_rto`.

```yaml
pg_rto: norm   # default, suitable for a single datacenter
pg_rto: safe   # recommended for cross-datacenter deployments
# pg_rto: 30   # invalid key; current templates fall back to norm
```




### `pg_rto_plan`

Parameter Name: `pg_rto_plan`, Type: `dict`, Level: `G`

Dictionary of RTO presets defining Patroni HA and HAProxy health-check timeouts. The defaults contain four modes:

```yaml
pg_rto_plan:  # [ttl, loop, retry, start, margin, inter, fastinter, downinter, rise, fall]
  fast: [ 20  ,5  ,5  ,15 ,5  ,'1s' ,'500ms'  ,'1s' ,3 ,3 ]  # rto < 30s
  norm: [ 30  ,5  ,10 ,25 ,5  ,'2s' ,'1s'     ,'2s' ,3 ,3 ]  # rto < 45s
  safe: [ 60  ,10 ,20 ,45 ,10 ,'3s' ,'1500ms' ,'3s' ,3 ,3 ]  # rto < 90s
  wide: [ 120 ,20 ,30 ,95 ,15 ,'4s' ,'2s'     ,'4s' ,3 ,3 ]  # rto < 150s
```

Each mode is an array of ten values controlling Patroni and HAProxy together:

| Index | Name                    | Component | Description                              |
|:-----:|:------------------------|:----------|:-----------------------------------------|
| 0     | `ttl`                   | Patroni   | Primary-lock TTL in seconds              |
| 1     | `loop_wait`             | Patroni   | Main-loop sleep interval                 |
| 2     | `retry_timeout`         | Patroni   | DCS/PostgreSQL retry timeout             |
| 3     | `primary_start_timeout` | Patroni   | Time allowed for primary recovery        |
| 4     | `safety_margin`         | Patroni   | Watchdog safety margin                   |
| 5     | `inter`                 | HAProxy   | Health-check interval                    |
| 6     | `fastinter`             | HAProxy   | Fast interval during state transitions   |
| 7     | `downinter`             | HAProxy   | Check interval while a server is down    |
| 8     | `rise`                  | HAProxy   | Consecutive successes required for UP    |
| 9     | `fall`                  | HAProxy   | Consecutive failures required for DOWN   |

Override this dictionary to customize an existing mode or add a new one:

```yaml
pg_rto_plan:
  ultra: [ 10, 2, 3, 8, 2, '500ms', '250ms', '500ms', 2, 2 ]  # aggressive; low-latency networks only
```

> **Caution**: inappropriate timeout combinations can make the cluster unstable or cause frequent false failovers.




### `pg_rpo`

Parameter Name: `pg_rpo`, Type: `int`, Level: `C`

This parameter sets the failover-candidate lag threshold in bytes.
The default is `1048576` (1 MiB).
Pigsty writes it to Patroni `maximum_lag_on_failover` to determine replica eligibility for failover.
It does not set an absolute limit on data loss.
With asynchronous replication, maximum loss also depends on write rate and when Patroni sampled the primary WAL position.

If the primary fails while all replicas lag, choose between **availability and consistency**:

- Promote a lagging replica and restore service as soon as possible, accepting possible data loss.
- Wait for primary to come back online (may never happen), or manual intervention to avoid any data loss.

You can use the `crit.yml` [conf](#pg_conf) template to ensure no data loss during failover, but this sacrifices some performance.





### `pg_libs`

Parameter Name: `pg_libs`, Type: `string`, Level: `C`

This parameter lists preloaded dynamic shared libraries.
The default is `pg_stat_statements,auto_explain`.
Enabling these two built-in PostgreSQL extensions is strongly recommended.

For existing clusters, you can directly [configure cluster](/docs/pgsql/admin/cluster/#config-cluster) `shared_preload_libraries` parameter and apply.

For TimescaleDB or Citus, add `timescaledb` or `citus` at the start of this list.
For example:

```text
citus,timescaledb,pg_stat_statements,auto_explain
```

Add other extensions that require dynamic loading, such as `pg_cron` and `pgml`, to this list.
Usually, `citus` and `timescaledb` take highest priority and must come first.






### `pg_delay`

Parameter Name: `pg_delay`, Type: `interval`, Level: `I`

Delayed standby replication delay, default: `0`.

With a positive value, the standby cluster leader waits that interval before applying WAL changes.
For example, `1h` keeps cluster data one hour behind the original cluster.

See [Delayed Standby Cluster](/docs/pgsql/config/cluster/#delayed-cluster) for details.





### `pg_checksum`

Parameter Name: `pg_checksum`, Type: `bool`, Level: `C`

Enable data checksum for PostgreSQL cluster? Default is `true`, enabled.

Set this parameter only before PGSQL deployment.
You can still enable checksums manually later.

Data checksums detect disk corruption and hardware failures.
Pigsty has enabled them by default since v3.5 to protect data integrity.





### `pg_pwd_enc`

Parameter Name: `pg_pwd_enc`, Type: `enum`, Level: `C`

Password encryption algorithm, fixed to `scram-sha-256` since Pigsty v4.

All new users use SCRAM credentials.
`md5` is deprecated.
For older clients, upgrade business connection pools or client drivers to support SCRAM.




### `pg_encoding`

Parameter Name: `pg_encoding`, Type: `enum`, Level: `C`

Database cluster encoding, default is `UTF8`.

Using other non-`UTF8` encodings is not recommended.




### `pg_locale`

Parameter Name: `pg_locale`, Type: `enum`, Level: `C`

Database cluster locale, default is `C`.

This parameter controls the default database locale, including collation and character classification.
`C` and `POSIX` give the best performance and predictable sorting.

For language-specific behavior, select a locale such as `en_US.UTF-8` or `zh_CN.UTF-8`.
Locale affects index sort order.
You cannot change it after cluster initialization.




### `pg_lc_collate`

Parameter Name: `pg_lc_collate`, Type: `enum`, Level: `C`

Database cluster collation, default is `C`.

Change cluster-level collation only if you understand its effects.





### `pg_lc_ctype`

Parameter Name: `pg_lc_ctype`, Type: `enum`, Level: `C`

Database character set CTYPE, default is `C`.

Starting from Pigsty v3.5, to be consistent with `pg_lc_collate`, the default value changed to `C`.






### `pg_io_method`

Parameter Name: `pg_io_method`, Type: `enum`, Level: `C`

PostgreSQL IO method, default is `worker`. Available options include:

- `auto`: Automatically select based on operating system, uses `io_uring` on Debian-based systems or EL 10+, otherwise uses `worker`
- `sync`: Use traditional synchronous IO method
- `worker`: Use background worker processes to handle IO (default option)
- `io_uring`: Use Linux's io_uring asynchronous IO interface

Current tuning templates write this parameter only for PostgreSQL 18 and later, where it controls the asynchronous I/O execution method.

- PostgreSQL 18's actual GUC values are `worker`, `io_uring`, and `sync`; `auto` is Pigsty template-selection logic, not a PostgreSQL enum value.
- PostgreSQL 18 defaults to `worker`, which uses background processes for asynchronous I/O.
- If you're using Debian 12/Ubuntu 22+ or EL 10+ systems and want optimal IO performance, consider setting this to `io_uring`.

If the system does not support `io_uring`, selecting it can prevent PostgreSQL startup.
`auto` and `worker` are safer choices.




### `pg_etcd_password`

Parameter Name: `pg_etcd_password`, Type: `password`, Level: `C`

The password used by this PostgreSQL cluster in etcd, default is empty string `''`.

With an empty string, Pigsty uses [`pg_cluster`](#pg_cluster) as the password.
For Citus clusters, it uses [`pg_shard`](#pg_shard).

This password is used for authentication when Patroni connects to etcd and when vip-manager accesses etcd.




### `pgsodium_key`

Parameter Name: `pgsodium_key`, Type: `string`, Level: `C`

The encryption master key for the pgsodium extension, consisting of 64 hexadecimal digits.

This parameter has no default value.
If you omit it, Pigsty generates a deterministic key from `sha256(pg_cluster)`.

[pgsodium](https://github.com/michelp/pgsodium) uses libsodium to provide PostgreSQL encryption functions and transparent column encryption.
For encryption, explicitly set a secure random key and store it safely.

Example command to generate a random key:

```bash
openssl rand -hex 32   # Generate 64-digit hexadecimal key
```



### `pgsodium_getkey_script`

Parameter Name: `pgsodium_getkey_script`, Type: `path`, Level: `C`

Path to the pgsodium key retrieval script, default uses the `pgsodium_getkey` script from Pigsty templates.

PostgreSQL runs this script at startup to get the pgsodium master key.
The default script reads the key from environment variables or configuration files.

For custom key management, such as HashiCorp Vault or AWS KMS, provide a custom script path.


## `PG_PROVISION`


[`PG_BOOTSTRAP`](#pg_bootstrap) creates the cluster.
PG_PROVISION creates default objects within it:

* [Default Roles](/docs/concept/sec/ac#role-system)
* [Default Users](/docs/concept/sec/ac#role-system)
* [Default Privileges](/docs/concept/sec/ac#default-privileges)
* [Default HBA Rules](/docs/pgsql/config/hba#pg_default_hba_rules)
* Default Schemas
* Default Extensions



```yaml
pg_provision: true                # provision postgres cluster after bootstrap
pg_init: pg-init                  # init script for cluster template, default is `pg-init`
pg_default_roles:                 # default roles and users in postgres cluster
  - { name: dbrole_readonly  ,login: false ,comment: role for global read-only access     }
  - { name: dbrole_offline   ,login: false ,comment: role for restricted read-only access }
  - { name: dbrole_readwrite ,login: false ,roles: [dbrole_readonly] ,comment: role for global read-write access }
  - { name: dbrole_admin     ,login: false ,roles: [pg_monitor, dbrole_readwrite] ,comment: role for object creation }
  - { name: postgres     ,superuser: true  ,comment: system superuser }
  - { name: replicator ,replication: true  ,roles: [pg_monitor, dbrole_readonly] ,comment: system replicator }
  - { name: dbuser_dba   ,superuser: true  ,roles: [dbrole_admin]  ,pgbouncer: true ,pool_mode: session, pool_connlimit: 16 ,comment: pgsql admin user }
  - { name: dbuser_monitor ,roles: [pg_monitor, dbrole_readonly] ,pgbouncer: true ,parameters: {log_min_duration_statement: 1000 } ,pool_mode: session ,pool_connlimit: 8 ,comment: pgsql monitor user }
pg_default_privileges:            # default privileges when admin user creates objects
  - GRANT USAGE      ON SCHEMAS   TO dbrole_readonly
  - GRANT SELECT     ON TABLES    TO dbrole_readonly
  - GRANT SELECT     ON SEQUENCES TO dbrole_readonly
  - GRANT EXECUTE    ON FUNCTIONS TO dbrole_readonly
  - GRANT USAGE      ON SCHEMAS   TO dbrole_offline
  - GRANT SELECT     ON TABLES    TO dbrole_offline
  - GRANT SELECT     ON SEQUENCES TO dbrole_offline
  - GRANT EXECUTE    ON FUNCTIONS TO dbrole_offline
  - GRANT INSERT     ON TABLES    TO dbrole_readwrite
  - GRANT UPDATE     ON TABLES    TO dbrole_readwrite
  - GRANT DELETE     ON TABLES    TO dbrole_readwrite
  - GRANT USAGE      ON SEQUENCES TO dbrole_readwrite
  - GRANT UPDATE     ON SEQUENCES TO dbrole_readwrite
  - GRANT TRUNCATE   ON TABLES    TO dbrole_admin
  - GRANT REFERENCES ON TABLES    TO dbrole_admin
  - GRANT TRIGGER    ON TABLES    TO dbrole_admin
  - GRANT CREATE     ON SCHEMAS   TO dbrole_admin
pg_default_schemas: [ monitor ]   # default schemas
pg_default_extensions:            # default extensions
  - { name: pg_stat_statements ,schema: monitor }
  - { name: pgstattuple        ,schema: monitor }
  - { name: pg_buffercache     ,schema: monitor }
  - { name: pageinspect        ,schema: monitor }
  - { name: pg_prewarm         ,schema: monitor }
  - { name: pg_visibility      ,schema: monitor }
  - { name: pg_freespacemap    ,schema: monitor }
  - { name: postgres_fdw       ,schema: public  }
  - { name: file_fdw           ,schema: public  }
  - { name: btree_gist         ,schema: public  }
  - { name: btree_gin          ,schema: public  }
  - { name: pg_trgm            ,schema: public  }
  - { name: intagg             ,schema: public  }
  - { name: intarray           ,schema: public  }
  - { name: pg_repack }
pg_reload: true                   # reload config after HBA changes?
pg_default_hba_rules:             # postgres default HBA rules, ordered by `order`
  - {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu access via local os user ident'  ,order: 100}
  - {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu replication from local os ident' ,order: 150}
  - {user: '${repl}'    ,db: replication ,addr: localhost ,auth: pwd   ,title: 'replicator replication from localhost',order: 200}
  - {user: '${repl}'    ,db: replication ,addr: intra     ,auth: pwd   ,title: 'replicator replication from intranet' ,order: 250}
  - {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: pwd   ,title: 'replicator postgres db from intranet' ,order: 300}
  - {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor from localhost with password' ,order: 350}
  - {user: '${monitor}' ,db: all         ,addr: infra     ,auth: pwd   ,title: 'monitor from infra host with password',order: 400}
  - {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin @ infra nodes with pwd & ssl'   ,order: 450}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: ssl   ,title: 'admin @ everywhere with ssl & pwd'    ,order: 500}
  - {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: pwd   ,title: 'pgbouncer read/write via local socket',order: 550}
  - {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: pwd   ,title: 'read/write biz user via password'     ,order: 600}
  - {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: pwd   ,title: 'allow etl offline tasks from intranet',order: 650}
pgb_default_hba_rules:            # pgbouncer default HBA rules, ordered by `order`
  - {user: '${dbsu}'    ,db: pgbouncer   ,addr: local     ,auth: peer  ,title: 'dbsu local admin access with os ident',order: 100}
  - {user: 'all'        ,db: all         ,addr: localhost ,auth: pwd   ,title: 'allow all user local access with pwd' ,order: 150}
  - {user: '${monitor}' ,db: pgbouncer   ,addr: intra     ,auth: pwd   ,title: 'monitor access via intranet with pwd' ,order: 200}
  - {user: '${monitor}' ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other monitor access addr' ,order: 250}
  - {user: '${admin}'   ,db: all         ,addr: intra     ,auth: pwd   ,title: 'admin access via intranet with pwd'   ,order: 300}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other admin access addr'   ,order: 350}
  - {user: 'all'        ,db: all         ,addr: intra     ,auth: pwd   ,title: 'allow all user intra access with pwd' ,order: 400}
```


### `pg_provision`

Parameter Name: `pg_provision`, Type: `bool`, Level: `C`

This parameter enables the provisioning described in this section after cluster initialization.
The default is `true`.

If disabled, Pigsty skips cluster provisioning.
Use this for special PostgreSQL variants, such as Greenplum.




### `pg_init`

Parameter Name: `pg_init`, Type: `string`, Level: `G/C`

This parameter selects the shell script for database template initialization.
The default is `pg-init`.
Pigsty copies it to `/pg/bin/pg-init`, then runs it.

This script is located at [`roles/pgsql/templates/pg-init`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init)

Add your own logic to this script, or place a new script in `templates/` and set `pg_init` to its name.
Keep the existing initialization logic in a custom script.








### `pg_default_roles`

Parameter Name: `pg_default_roles`, Type: `role[]`, Level: `G/C`

Default roles and users in Postgres cluster.

Pigsty has a built-in role system. See [PGSQL Access Control: Role System](/docs/concept/sec/ac#role-system) for details.

```yaml
pg_default_roles:                 # default roles and users in postgres cluster
  - { name: dbrole_readonly  ,login: false ,comment: role for global read-only access     }
  - { name: dbrole_offline   ,login: false ,comment: role for restricted read-only access }
  - { name: dbrole_readwrite ,login: false ,roles: [dbrole_readonly]               ,comment: role for global read-write access }
  - { name: dbrole_admin     ,login: false ,roles: [pg_monitor, dbrole_readwrite]  ,comment: role for object creation }
  - { name: postgres     ,superuser: true                                          ,comment: system superuser }
  - { name: replicator ,replication: true  ,roles: [pg_monitor, dbrole_readonly]   ,comment: system replicator }
  - { name: dbuser_dba   ,superuser: true  ,roles: [dbrole_admin]  ,pgbouncer: true ,pool_mode: session, pool_connlimit: 16 , comment: pgsql admin user }
  - { name: dbuser_monitor   ,roles: [pg_monitor, dbrole_readonly] ,pgbouncer: true ,parameters: {log_min_duration_statement: 1000 } ,pool_mode: session ,pool_connlimit: 8 ,comment: pgsql monitor user }
```




### `pg_default_privileges`

Parameter Name: `pg_default_privileges`, Type: `string[]`, Level: `G/C`

Default privileges (`DEFAULT PRIVILEGE`) settings in each database:

```yaml
pg_default_privileges:            # default privileges when admin user creates objects
  - GRANT USAGE      ON SCHEMAS   TO dbrole_readonly
  - GRANT SELECT     ON TABLES    TO dbrole_readonly
  - GRANT SELECT     ON SEQUENCES TO dbrole_readonly
  - GRANT EXECUTE    ON FUNCTIONS TO dbrole_readonly
  - GRANT USAGE      ON SCHEMAS   TO dbrole_offline
  - GRANT SELECT     ON TABLES    TO dbrole_offline
  - GRANT SELECT     ON SEQUENCES TO dbrole_offline
  - GRANT EXECUTE    ON FUNCTIONS TO dbrole_offline
  - GRANT INSERT     ON TABLES    TO dbrole_readwrite
  - GRANT UPDATE     ON TABLES    TO dbrole_readwrite
  - GRANT DELETE     ON TABLES    TO dbrole_readwrite
  - GRANT USAGE      ON SEQUENCES TO dbrole_readwrite
  - GRANT UPDATE     ON SEQUENCES TO dbrole_readwrite
  - GRANT TRUNCATE   ON TABLES    TO dbrole_admin
  - GRANT REFERENCES ON TABLES    TO dbrole_admin
  - GRANT TRIGGER    ON TABLES    TO dbrole_admin
  - GRANT CREATE     ON SCHEMAS   TO dbrole_admin
```

Pigsty provides matching default privileges for the built-in role system. See [PGSQL Access Control: Default Privileges](/docs/concept/sec/ac#default-privileges) for details.






### `pg_default_schemas`

Parameter Name: `pg_default_schemas`, Type: `string[]`, Level: `G/C`

This parameter lists schemas to create.
The default, `[ monitor ]`, creates `monitor` in all databases for monitoring extensions, tables, views, and functions.






### `pg_default_extensions`

Parameter Name: `pg_default_extensions`, Type: `extension[]`, Level: `G/C`

List of extensions to be created and enabled by default in all databases, default value:

```yaml
pg_default_extensions: # default extensions to be created
  - { name: pg_stat_statements ,schema: monitor }
  - { name: pgstattuple        ,schema: monitor }
  - { name: pg_buffercache     ,schema: monitor }
  - { name: pageinspect        ,schema: monitor }
  - { name: pg_prewarm         ,schema: monitor }
  - { name: pg_visibility      ,schema: monitor }
  - { name: pg_freespacemap    ,schema: monitor }
  - { name: postgres_fdw       ,schema: public  }
  - { name: file_fdw           ,schema: public  }
  - { name: btree_gist         ,schema: public  }
  - { name: btree_gin          ,schema: public  }
  - { name: pg_trgm            ,schema: public  }
  - { name: intagg             ,schema: public  }
  - { name: intarray           ,schema: public  }
  - { name: pg_repack }
```

`pg_repack` is the only third-party extension in this list.
It supports important database maintenance tasks.
All other entries are PostgreSQL Contrib extensions.

By default, Pigsty installs monitoring extensions in `monitor`.
[`pg_default_schemas`](#pg_default_schemas) creates this schema.





### `pg_reload`

Parameter Name: `pg_reload`, Type: `bool`, Level: `A`

Reload PostgreSQL after HBA changes, default value is `true`.

To inspect HBA changes before applying them, set this parameter to `false`.
This disables automatic configuration reload.





### `pg_default_hba_rules`

Parameter Name: `pg_default_hba_rules`, Type: `hba[]`, Level: `G/C`

PostgreSQL host-based authentication rules, global default rules definition. Default value is:


```yaml
pg_default_hba_rules:             # postgres default host-based authentication rules, ordered by `order`
  - {user: '${dbsu}'    ,db: all         ,addr: local     ,auth: ident ,title: 'dbsu access via local os user ident'  ,order: 100}
  - {user: '${dbsu}'    ,db: replication ,addr: local     ,auth: ident ,title: 'dbsu replication from local os ident' ,order: 150}
  - {user: '${repl}'    ,db: replication ,addr: localhost ,auth: pwd   ,title: 'replicator replication from localhost',order: 200}
  - {user: '${repl}'    ,db: replication ,addr: intra     ,auth: pwd   ,title: 'replicator replication from intranet' ,order: 250}
  - {user: '${repl}'    ,db: postgres    ,addr: intra     ,auth: pwd   ,title: 'replicator postgres db from intranet' ,order: 300}
  - {user: '${monitor}' ,db: all         ,addr: localhost ,auth: pwd   ,title: 'monitor from localhost with password' ,order: 350}
  - {user: '${monitor}' ,db: all         ,addr: infra     ,auth: pwd   ,title: 'monitor from infra host with password',order: 400}
  - {user: '${admin}'   ,db: all         ,addr: infra     ,auth: ssl   ,title: 'admin @ infra nodes with pwd & ssl'   ,order: 450}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: ssl   ,title: 'admin @ everywhere with ssl & pwd'    ,order: 500}
  - {user: '+dbrole_readonly',db: all    ,addr: localhost ,auth: pwd   ,title: 'pgbouncer read/write via local socket',order: 550}
  - {user: '+dbrole_readonly',db: all    ,addr: intra     ,auth: pwd   ,title: 'read/write biz user via password'     ,order: 600}
  - {user: '+dbrole_offline' ,db: all    ,addr: intra     ,auth: pwd   ,title: 'allow etl offline tasks from intranet',order: 650}
```

The defaults apply to ordinary deployments on a trusted intranet.
They are not a hardened baseline for public or regulated environments.
The default `+dbrole_offline` rule has no `role` field, so it applies to every instance.
For instance isolation, copy the complete default list and set this rule to `role: offline`.
See [**Authentication**](/docs/concept/sec/auth) and [**Offline Role and Instance Isolation**](/docs/concept/sec/ac#offline-role-and-instance-isolation).

This parameter is an array of [HBA rule objects](/docs/pgsql/config/hba#define-hba), with the same format as [`pg_hba_rules`](#pg_hba_rules).
Set common [`pg_default_hba_rules`](#pg_default_hba_rules) globally.
Use [`pg_hba_rules`](#pg_hba_rules) for cluster-specific additions.
Pigsty applies both sets in order, with the latter taking higher priority.




### `pgb_default_hba_rules`

Parameter Name: `pgb_default_hba_rules`, Type: `hba[]`, Level: `G/C`

Pgbouncer default host-based authentication rules, array of [HBA](/docs/pgsql/config/hba#define-hba) rule objects.

Default value provides a fair security level for common scenarios. Check [PGSQL Authentication](/docs/pgsql/config/hba) for details.

```yaml
pgb_default_hba_rules:            # pgbouncer default host-based authentication rules, ordered by `order`
  - {user: '${dbsu}'    ,db: pgbouncer   ,addr: local     ,auth: peer  ,title: 'dbsu local admin access with os ident',order: 100}
  - {user: 'all'        ,db: all         ,addr: localhost ,auth: pwd   ,title: 'allow all user local access with pwd' ,order: 150}
  - {user: '${monitor}' ,db: pgbouncer   ,addr: intra     ,auth: pwd   ,title: 'monitor access via intranet with pwd' ,order: 200}
  - {user: '${monitor}' ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other monitor access addr' ,order: 250}
  - {user: '${admin}'   ,db: all         ,addr: intra     ,auth: pwd   ,title: 'admin access via intranet with pwd'   ,order: 300}
  - {user: '${admin}'   ,db: all         ,addr: world     ,auth: deny  ,title: 'reject all other admin access addr'   ,order: 350}
  - {user: 'all'        ,db: all         ,addr: intra     ,auth: pwd   ,title: 'allow all user intra access with pwd' ,order: 400}
```

The default Pgbouncer HBA rules are simple:

1. Allow login from **localhost** with password
2. Allow login from intranet with password

Users can customize according to their own needs.

This parameter uses the same format as [`pgb_hba_rules`](#pgb_hba_rules).
Set common [`pgb_default_hba_rules`](#pgb_default_hba_rules) globally.
Use [`pgb_hba_rules`](#pgb_hba_rules) for cluster-specific additions.
Pigsty applies both sets in order, with the latter taking higher priority.






------------------------------

## `PG_BACKUP`

This section defines variables for [pgBackRest](https://pgbackrest.org/), which is used for PGSQL Point-in-Time Recovery (PITR).

Check [PGSQL Backup & PITR](/docs/pgsql/backup) for detailed information.


```yaml
pgbackrest_enabled: true          # enable pgBackRest on pgsql host?
pgbackrest_log_dir: /pg/log/pgbackrest # pgbackrest log dir, default is `/pg/log/pgbackrest`
pgbackrest_method: local          # pgbackrest repo method: local, minio, [user defined...]
pgbackrest_init_backup: true      # perform a full backup immediately after pgbackrest init?
pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
  local:                          # default pgbackrest repo with local posix filesystem
    path: /pg/backup              # local backup directory, default is `/pg/backup`
    retention_full_type: count    # retain full backup by count
    retention_full: 2             # keep at most 3 full backups when using local filesystem repo, at least 2
  minio:                          # optional minio repo for pgbackrest
    type: s3                      # minio is s3-compatible, so use s3
    s3_endpoint: sss.pigsty       # minio endpoint domain, default is `sss.pigsty`
    s3_region: us-east-1          # minio region, default is us-east-1, not effective for minio
    s3_bucket: pgsql              # minio bucket name, default is `pgsql`
    s3_key: pgbackrest            # minio user access key for pgbackrest
    s3_key_secret: S3User.Backup  # minio user secret key for pgbackrest
    s3_uri_style: path            # use path style uri for minio, instead of host style
    path: /pgbackrest             # minio backup path, default is `/pgbackrest`
    storage_port: 9000            # minio port, default is 9000
    storage_ca_file: /etc/pki/ca.crt  # minio ca file path, default is `/etc/pki/ca.crt`
    block: y                      # enable block-level incremental backup (pgBackRest 2.46+)
    bundle: y                     # bundle small files into one file
    bundle_limit: 20MiB           # object storage file bundling threshold, default 20MiB
    bundle_size: 128MiB           # object storage file bundling target size, default 128MiB
    cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
    cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
    retention_full_type: time     # retain full backup by time on minio repo
    retention_full: 14            # keep full backups from the past 14 days
```



### `pgbackrest_enabled`

Parameter Name: `pgbackrest_enabled`, Type: `bool`, Level: `C`

Enable pgBackRest on PGSQL nodes? Default value is: `true`

When enabled, Pigsty configures pgBackRest on every node.
With the `local` filesystem repository, each member creates its own local stanza.
Initial and scheduled backups run only on the current primary.
On a replica, `pg-backup` exits after checking its role.
Pigsty initializes a non-local shared stanza only on a primary without [`pg_upstream`](#pg_upstream).





### `pgbackrest_log_dir`

Parameter Name: `pgbackrest_log_dir`, Type: `path`, Level: `C`

pgBackRest log directory, default is `/pg/log/pgbackrest`. The Vector log agent references this parameter for log collection.





### `pgbackrest_method`

Parameter Name: `pgbackrest_method`, Type: `enum`, Level: `C`

pgBackRest repository method: default options are `local`, `minio`, or other user-defined methods, default is `local`.

This parameter determines which repository to use for pgBackRest. All available repository methods are defined in [`pgbackrest_repo`](#pgbackrest_repo).

By default, Pigsty creates a `local` backup repository at `/pg/backup` on the primary instance.
[`pg_fs_backup`](#pg_fs_backup) sets its physical storage path.






### `pgbackrest_init_backup`

Parameter Name: `pgbackrest_init_backup`, Type: `bool`, Level: `C`

Perform a full backup immediately after pgBackRest initialization completes? Default is `true`.

The task runs only on the primary and only when [`pg_upstream`](#pg_upstream) is undefined.
It uses `ignore_errors`, so enabling it does not guarantee that a base backup exists.
It writes `/etc/pgbackrest/initial.done` only after a successful backup.
Afterward, verify the repository with `pig pb info` or `pb info`.




### `pgbackrest_repo`

Parameter Name: `pgbackrest_repo`, Type: `dict`, Level: `G/C`

pgBackRest repository documentation: https://pgbackrest.org/configuration.html#section-repository

The default dictionary contains `local` and `minio` candidates.
`pgbackrest_method` selects one.
The v4.5.0 template renders only the selected entry as `repo1`.
Listing both keys does not configure backups to two repositories:

```yaml
pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
  local:                          # default pgbackrest repo with local posix filesystem
    path: /pg/backup              # local backup directory, default is `/pg/backup`
    retention_full_type: count    # retain full backup by count
    retention_full: 2             # keep at most 3 full backups when using local filesystem repo, at least 2
  minio:                          # optional minio repo for pgbackrest
    type: s3                      # minio is s3-compatible, so use s3
    s3_endpoint: sss.pigsty       # minio endpoint domain, default is `sss.pigsty`
    s3_region: us-east-1          # minio region, default is us-east-1, not effective for minio
    s3_bucket: pgsql              # minio bucket name, default is `pgsql`
    s3_key: pgbackrest            # minio user access key for pgbackrest
    s3_key_secret: S3User.Backup  # minio user secret key for pgbackrest
    s3_uri_style: path            # use path style uri for minio, instead of host style
    path: /pgbackrest             # minio backup path, default is `/pgbackrest`
    storage_port: 9000            # minio port, default is 9000
    storage_ca_file: /etc/pki/ca.crt  # minio ca file path, default is `/etc/pki/ca.crt`
    block: y                      # enable block-level incremental backup (pgBackRest 2.46+)
    bundle: y                     # bundle small files into one file
    bundle_limit: 20MiB           # object storage file bundling threshold, default 20MiB
    bundle_size: 128MiB           # object storage file bundling target size, default 128MiB
    cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
    cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
    retention_full_type: time     # retain full backup by time on minio repo
    retention_full: 14            # keep full backups from the past 14 days
```

You can define new backup repositories, such as using AWS S3, GCP, or other cloud providers' S3-compatible storage services.

**Block Incremental Backup**: Since pgBackRest 2.46, `block: y` enables incremental backups at block level.
An incremental backup then copies changed blocks, rather than complete changed files.
This substantially reduces backup size and duration, especially for large databases.
Enable it for object storage repositories when possible.





------------------------------

## `PG_ACCESS`

This section handles database access paths, including:

- Deploy Pgbouncer connection pooler on each PGSQL node and set default behavior
- Publish service ports through local or dedicated haproxy nodes
- Bind optional L2 VIP and register DNS records

```yaml
pgbouncer_enabled: true           # if disabled, pgbouncer will not be launched on pgsql host
pgbouncer_port: 6432              # pgbouncer listen port, 6432 by default
pgbouncer_log_dir: /pg/log/pgbouncer  # pgbouncer log dir, `/pg/log/pgbouncer` by default
pgbouncer_auth_query: false       # query postgres to retrieve unlisted business users?
pgbouncer_poolmode: transaction   # pooling mode: transaction,session,statement, transaction by default
pgbouncer_sslmode: disable        # pgbouncer client ssl mode, disable by default
pgbouncer_ignore_param: [ extra_float_digits, application_name, TimeZone, DateStyle, IntervalStyle, search_path ]
pg_weight: 100          #INSTANCE # relative load balance weight in service, 100 by default, 0-255
pg_service_provider: ''           # dedicate haproxy node group name, or empty string for local nodes by default
pg_default_service_dest: pgbouncer # default service destination if svc.dest='default'
pg_default_services:              # postgres default service definitions
  - { name: primary ,port: 5433 ,dest: default  ,check: /primary   ,selector: "[]" }
  - { name: replica ,port: 5434 ,dest: default  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
  - { name: default ,port: 5436 ,dest: postgres ,check: /primary   ,selector: "[]" }
  - { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]"}
pg_vip_enabled: false             # enable a l2 vip for pgsql primary? false by default
pg_vip_address: 127.0.0.1/24      # vip address in `<ipv4>/<mask>` format, require if vip is enabled
pg_vip_interface: auto            # vip network interface to listen, auto by default
pg_dns_suffix: ''                 # pgsql dns suffix, '' by default
pg_dns_target: auto               # auto, primary, vip, none, or ad hoc ip
```



### `pgbouncer_enabled`

Parameter Name: `pgbouncer_enabled`, Type: `bool`, Level: `C`

Default value is `true`. If disabled, the Pgbouncer connection pooler will not be configured on PGSQL nodes.






### `pgbouncer_port`

Parameter Name: `pgbouncer_port`, Type: `port`, Level: `C`

Pgbouncer listen port, default is `6432`.






### `pgbouncer_log_dir`

Parameter Name: `pgbouncer_log_dir`, Type: `path`, Level: `C`

Pgbouncer log directory, default is `/pg/log/pgbouncer`. The Vector log agent collects Pgbouncer logs based on this parameter.






### `pgbouncer_auth_query`

Parameter Name: `pgbouncer_auth_query`, Type: `bool`, Level: `C`

This parameter lets Pgbouncer query PostgreSQL to authenticate users that are not explicitly listed for pool access.
The default is `false`.

If enabled, Pgbouncer authenticates users through PostgreSQL with `SELECT username, password FROM monitor.pgbouncer_auth($1)`.
Otherwise, only business users with `pgbouncer: true` can connect through the pool.






### `pgbouncer_poolmode`

Parameter Name: `pgbouncer_poolmode`, Type: `enum`, Level: `C`

Pgbouncer connection pool pooling mode: `transaction`, `session`, `statement`, default is `transaction`.

- `session`: Session-level pooling with best feature compatibility.
- `transaction`: Transaction-level pooling with better performance (many small connections), may break some session-level features like `NOTIFY/LISTEN`, etc.
- `statements`: Statement-level pooling for simple read-only queries.

If your application has feature compatibility issues, consider changing this parameter to `session`.




### `pgbouncer_sslmode`

Parameter Name: `pgbouncer_sslmode`, Type: `enum`, Level: `C`

Pgbouncer client SSL mode, default is `disable`.

SSL can significantly affect Pgbouncer performance.

- `disable`: Ignore if client requests TLS (default)
- `allow`: Use TLS if client requests it. Use plain TCP if not. Does not verify client certificate.
- `prefer`: Same as allow.
- `require`: Client must use TLS. Reject client connection if not. Does not verify client certificate.
- `verify-ca`: Client must use TLS with a valid client certificate.
- `verify-full`: Same as verify-ca.




### `pgbouncer_ignore_param`

Parameter Name: `pgbouncer_ignore_param`, Type: `string[]`, Level: `C`

List of startup parameters ignored by PgBouncer, default value is:

```yaml
[ extra_float_digits, application_name, TimeZone, DateStyle, IntervalStyle, search_path ]
```

Pigsty writes this list to PgBouncer `ignore_startup_parameters`.
If clients set these parameters at connection time, PgBouncer does not create connections to resolve differences in their values.

Thus, clients can share a pool even with different values for these parameters.
Pigsty v3.5 added this parameter.







------------------------------

### `pg_weight`

Parameter Name: `pg_weight`, Type: `int`, Level: `I`

Relative load balancing weight in service, default is 100, range 0-255.

The default is `100`.
Set it in instance variables, then [reload services](/docs/pgsql/admin/cluster/#reload-service) to apply the value.





### `pg_service_provider`

Parameter Name: `pg_service_provider`, Type: `string`, Level: `G/C`

Dedicated haproxy node group name, or empty string for local nodes by default.

If specified, Pigsty registers PostgreSQL services on the dedicated HAProxy group.
Otherwise, it uses the current PGSQL cluster nodes.

Assign a **unique** port to each service on the dedicated HAProxy nodes.

For example, if we define the following parameters on a 3-node `pg-test` cluster:

```yaml
pg_service_provider: infra       # use load balancer on group `infra`
pg_default_services:             # alloc port 10001 and 10002 for pg-test primary/replica service
  - { name: primary ,port: 10001 ,dest: postgres  ,check: /primary   ,selector: "[]" }
  - { name: replica ,port: 10002 ,dest: postgres  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
```




### `pg_default_service_dest`

Parameter Name: `pg_default_service_dest`, Type: `enum`, Level: `G/C`

If a [service definition](/docs/pgsql/service/#define-service) uses `svc.dest='default'`, this parameter selects its destination.

The default is `pgbouncer`.
Thus, the primary service on port 5433 and the replica service on port 5434 route traffic to Pgbouncer.

To bypass Pgbouncer, set this parameter to `postgres`.
Traffic then goes directly to PostgreSQL.






### `pg_default_services`

Parameter Name: `pg_default_services`, Type: `service[]`, Level: `G/C`

Postgres default service definitions.

Default value is four default service definitions, as described in [PGSQL Service](/docs/pgsql/service/#service-overview).

```yaml
pg_default_services:               # postgres default service definitions
  - { name: primary ,port: 5433 ,dest: default  ,check: /primary   ,selector: "[]" }
  - { name: replica ,port: 5434 ,dest: default  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
  - { name: default ,port: 5436 ,dest: postgres ,check: /primary   ,selector: "[]" }
  - { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]"}
```






### `pg_vip_enabled`

Parameter Name: `pg_vip_enabled`, Type: `bool`, Level: `C`

This parameter enables an L2 VIP for the PGSQL cluster.
The default is `false`, which creates no VIP.

When enabled, `vip-manager` uses `etcd` data to bind the VIP to the current primary node.

An L2 VIP works only within one L2 network.
This can impose additional network topology requirements.





### `pg_vip_address`

Parameter Name: `pg_vip_address`, Type: `cidr4`, Level: `C`

VIP address in `<ipv4>/<mask>` format is required if VIP is enabled.

Default value: `127.0.0.1/24`. This value consists of two parts: `ipv4` and `mask`, separated by `/`.





### `pg_vip_interface`

Parameter Name: `pg_vip_interface`, Type: `string`, Level: `C/I`

This parameter selects the VIP network interface.
The default, `auto`, detects the interface associated with the inventory instance IP.

For unusual networks where automatic detection is unsuitable, set the interface explicitly in instance variables.
Examples include non-standard and policy routing:

```yaml
pg-test:
    hosts:
        10.10.10.11: {pg_seq: 1, pg_role: replica ,pg_vip_interface: eth0 }
        10.10.10.12: {pg_seq: 2, pg_role: primary ,pg_vip_interface: eth1 }
        10.10.10.13: {pg_seq: 3, pg_role: replica ,pg_vip_interface: eth2 }
    vars:
      pg_vip_enabled: true          # enable L2 VIP for this cluster, binds to primary by default
      pg_vip_address: 10.10.10.3/24 # L2 network CIDR: 10.10.10.0/24, vip address: 10.10.10.3
      # pg_vip_interface: eth1      # if your nodes have a unified interface, you can define it here
```




### `pg_dns_suffix`

Parameter Name: `pg_dns_suffix`, Type: `string`, Level: `C`

PostgreSQL DNS name suffix, default is empty string.

By default, the PostgreSQL cluster name is registered as a DNS domain in `dnsmasq` on Infra nodes for external resolution.

Set this parameter to add a domain suffix.
The cluster DNS name becomes `{{ pg_cluster }}{{ pg_dns_suffix }}`.

For example, if you set `pg_dns_suffix` to `.db.vip.company.tld`, the `pg-test` cluster DNS name will be `pg-test.db.vip.company.tld`.





### `pg_dns_target`

Parameter Name: `pg_dns_target`, Type: `enum`, Level: `C`

This parameter selects the target IP for the cluster DNS record.
Use `auto`, `primary`, `vip`, `none`, or a specific IP address.

The default is `auto`.
If `pg_vip_enabled` is enabled, it selects `pg_vip_address`.
Otherwise, it selects the primary instance IP.

* `vip`: bind to `pg_vip_address`
* `primary`: resolve to cluster primary instance IP address
* `auto`: resolve to `pg_vip_address` if `pg_vip_enabled`, or fallback to cluster primary instance IP address
* `none`: do not bind to any IP address
* `<ipv4>`: bind to the given IP address






------------------------------

## `PG_MONITOR`

PG_MONITOR configures monitoring for PostgreSQL databases, Pgbouncer pools, and pgBackRest backups.

The group configures three exporters:
- `pg_exporter`: PostgreSQL monitoring.
- `pgbouncer_exporter`: Connection pool monitoring.
- `pgbackrest_exporter`: Backup status monitoring.

```yaml
pg_exporter_enabled: true              # enable pg_exporter on pgsql host?
pg_exporter_config: pg_exporter.yml    # pg_exporter config file name
pg_exporter_cache_ttls: '1,10,60,300'  # pg_exporter collector ttl stages (seconds), default is '1,10,60,300'
pg_exporter_port: 9630                 # pg_exporter listen port, default is 9630
pg_exporter_params: 'sslmode=disable'  # extra url parameters for pg_exporter dsn
pg_exporter_url: ''                    # if specified, will override auto-generated pg dsn
pg_exporter_auto_discovery: true       # enable auto database discovery? enabled by default
pg_exporter_exclude_database: 'template0,template1,postgres' # csv list of databases not monitored during auto-discovery
pg_exporter_include_database: ''       # csv list of databases monitored during auto-discovery
pg_exporter_connect_timeout: 200       # pg_exporter connection timeout (ms), default is 200
pg_exporter_options: ''                # extra options to override pg_exporter
pgbouncer_exporter_enabled: true       # enable pgbouncer_exporter on pgsql host?
pgbouncer_exporter_port: 9631          # pgbouncer_exporter listen port, default is 9631
pgbouncer_exporter_url: ''             # if specified, will override auto-generated pgbouncer dsn
pgbouncer_exporter_options: ''         # extra options to override pgbouncer_exporter
pgbackrest_exporter_enabled: true      # enable pgbackrest_exporter on pgsql host?
pgbackrest_exporter_port: 9854         # pgbackrest_exporter listen port, default is 9854
pgbackrest_exporter_options: >-        # extra options to override pgbackrest_exporter
  --collect.interval=120
  --log.level=info
```



### `pg_exporter_enabled`

Parameter Name: `pg_exporter_enabled`, Type: `bool`, Level: `C`

Enable pg_exporter on PGSQL nodes? Default value is: `true`.

PG Exporter monitors PostgreSQL instances.
Set this parameter to `false` to skip its installation.






### `pg_exporter_config`

Parameter Name: `pg_exporter_config`, Type: `string`, Level: `C`

This parameter selects the pg_exporter collector template.
The default is `pg_exporter.yml`.
It does not affect Pgbouncer Exporter, which uses the fixed `pgbouncer_exporter.yml` template.

The default template is `roles/pg_monitor/templates/pg_exporter.yml`.
To use a custom file, put it on the Ansible template search path and set its template name here.





### `pg_exporter_cache_ttls`

Parameter Name: `pg_exporter_cache_ttls`, Type: `string`, Level: `C`

pg_exporter collector TTL stages (seconds), default is '1,10,60,300'.

The default, `1,10,60,300`, assigns collector TTLs of 1s, 10s, 60s, and 300s.

PG Exporter caches results to reduce database load from repeated Prometheus scrapes.
Collectors use four TTL categories:

```yaml
ttl_fast: "{{ pg_exporter_cache_ttls.split(',')[0]|int }}"         # critical queries
ttl_norm: "{{ pg_exporter_cache_ttls.split(',')[1]|int }}"         # common queries
ttl_slow: "{{ pg_exporter_cache_ttls.split(',')[2]|int }}"         # slow queries (e.g table size)
ttl_slowest: "{{ pg_exporter_cache_ttls.split(',')[3]|int }}"      # ver slow queries (e.g bloat)
```

With the default configuration, liveness metrics remain cached for at most `1s`.
Most common metrics have a `10s` TTL, which should match [`victoria_scrape_interval`](/docs/infra/param/#vmetrics_scrape_interval).
A few queries with slowly changing results have a `60s` TTL.
A small number of expensive monitoring queries have a `300s` TTL.






### `pg_exporter_port`

Parameter Name: `pg_exporter_port`, Type: `port`, Level: `C`

pg_exporter listen port, default value is: `9630`





### `pg_exporter_params`

Parameter Name: `pg_exporter_params`, Type: `string`, Level: `C`

Extra URL path parameters in the DSN used by pg_exporter.

Default value: `sslmode=disable`, which disables SSL for monitoring connections (since local unix sockets are used by default).





### `pg_exporter_url`

Parameter Name: `pg_exporter_url`, Type: `pgurl`, Level: `C`

This parameter overrides the generated PostgreSQL DSN.
PG Exporter then uses the specified DSN to connect.
The default is an empty string.

If not specified, PG Exporter will use the following connection string to access PostgreSQL by default:

```text
postgres://{{ pg_monitor_username }}:{{ pg_monitor_password }}@{{ pg_host }}:{{ pg_port }}/postgres{% if pg_exporter_params != '' %}?{{ pg_exporter_params }}{% endif %}
```

Use this parameter for a remote PostgreSQL instance, different monitoring credentials, or different connection options.




### `pg_exporter_auto_discovery`

Parameter Name: `pg_exporter_auto_discovery`, Type: `bool`, Level: `C`

Enable auto database discovery? Enabled by default: `true`.

By default, PG Exporter collects global metrics from the DSN database, normally the `postgres` administration database.
Enable this option to collect metrics from all business databases.
PG Exporter then discovers databases in the instance and collects their **database-level metrics**.




### `pg_exporter_exclude_database`

Parameter Name: `pg_exporter_exclude_database`, Type: `string`, Level: `C`

When automatic discovery is enabled, PG Exporter excludes databases in this list.
Automatic discovery is enabled by default.
The default list, `template0,template1,postgres`, excludes the template databases and the `postgres` administration database.

The DSN database is an exception.
For example, if PG Exporter connects to `postgres`, it monitors that database even when `postgres` is in this list.





### `pg_exporter_include_database`

Parameter Name: `pg_exporter_include_database`, Type: `string`, Level: `C`

When automatic discovery is enabled, PG Exporter monitors only databases in this list.
Automatic discovery is enabled by default.
The default is an empty string, which disables this restriction.

The parameter format is a comma-separated list of database names, e.g., `db1,db2,db3`.

This parameter takes priority over [`pg_exporter_exclude_database`](#pg_exporter_exclude_database).
Use it to allow monitoring only for specific databases.





### `pg_exporter_connect_timeout`

Parameter Name: `pg_exporter_connect_timeout`, Type: `int`, Level: `C`

pg_exporter connection timeout (milliseconds), default is `200` (in milliseconds).

This value limits how long PG Exporter waits to connect to PostgreSQL.
When the timeout expires, it stops the connection attempt and reports an error.

The default 200ms is sufficient for most uses, such as monitoring within one availability zone.
For a remote instance on another continent, increase it if necessary to avoid connection timeouts.






### `pg_exporter_options`

Parameter Name: `pg_exporter_options`, Type: `arg`, Level: `C`

Command line arguments passed to PG Exporter, default value is: `""` empty string.

When using empty string, the default command arguments will be used:

```jinja2
{% if pg_exporter_options != '' %}
PG_EXPORTER_OPTS='--web.listen-address=:{{ pg_exporter_port }} {{ pg_exporter_options }}'
{% else %}
PG_EXPORTER_OPTS='--web.listen-address=:{{ pg_exporter_port }} --log.level=info'
{% endif %}
```

Note: Do not override the [`pg_exporter_port`](#pg_exporter_port) port configuration in this parameter.





### `pgbouncer_exporter_enabled`

Parameter Name: `pgbouncer_exporter_enabled`, Type: `bool`, Level: `C`

Enable pgbouncer_exporter on PGSQL nodes? Default value is: `true`.





### `pgbouncer_exporter_port`

Parameter Name: `pgbouncer_exporter_port`, Type: `port`, Level: `C`

pgbouncer_exporter listen port, default value is: `9631`





### `pgbouncer_exporter_url`

Parameter Name: `pgbouncer_exporter_url`, Type: `pgurl`, Level: `C`

This parameter overrides the generated Pgbouncer DSN.
Pgbouncer Exporter then uses the specified DSN to connect.
The default is an empty string.

If not specified, Pgbouncer Exporter will use the following connection string to access Pgbouncer by default:

```text
postgres://{{ pg_monitor_username }}:{{ pg_monitor_password }}@:{{ pgbouncer_port }}/pgbouncer?host={{ pg_localhost }}&sslmode=disable
```

Use this parameter for a remote Pgbouncer instance, different monitoring credentials, or different connection options.






### `pgbouncer_exporter_options`

Parameter Name: `pgbouncer_exporter_options`, Type: `arg`, Level: `C`

Command line arguments passed to Pgbouncer Exporter, default value is: `""` empty string.

When using empty string, the default command arguments will be used:

```bash
{% if pgbouncer_exporter_options != '' %}
PG_EXPORTER_OPTS='--web.listen-address=:{{ pgbouncer_exporter_port }} {{ pgbouncer_exporter_options }}'
{% else %}
PG_EXPORTER_OPTS='--web.listen-address=:{{ pgbouncer_exporter_port }} --log.level=info'
{% endif %}
```

Note: Do not override the [`pgbouncer_exporter_port`](#pgbouncer_exporter_port) port configuration in this parameter.




### `pgbackrest_exporter_enabled`

Parameter Name: `pgbackrest_exporter_enabled`, Type: `bool`, Level: `C`

Enable pgbackrest_exporter on PGSQL nodes? Default value is: `true`.

pgbackrest_exporter monitors the pgBackRest backup system.
Key metrics include backup size, time, type, and duration.




### `pgbackrest_exporter_port`

Parameter Name: `pgbackrest_exporter_port`, Type: `port`, Level: `C`

pgbackrest_exporter listen port, default value is: `9854`.

This port is registered in the VictoriaMetrics-compatible scrape targets for backup-related metrics.




### `pgbackrest_exporter_options`

Parameter Name: `pgbackrest_exporter_options`, Type: `arg`, Level: `C`

Command-line arguments passed to pgbackrest_exporter. The default is:

```yaml
pgbackrest_exporter_options: >-
  --collect.interval=120
  --log.level=info
```

The default collects metrics every 120 seconds with `info` logging.
A custom value replaces the complete default argument set.



------------------------------

## `PG_REMOVE`

[`pgsql-rm.yml`](/docs/pgsql/playbook#pgsql-rmyml) uses the `pg_remove` role to remove PostgreSQL instances safely.
These parameters control cleanup and help prevent accidental deletion.

```yaml
pg_rm_data: true                  # remove postgres data during remove? true by default
pg_rm_backup: true                # remove pgbackrest backup during primary remove? true by default
pg_rm_pkg: true                   # uninstall postgres packages during remove? true by default
pg_safeguard: false               # stop pg_remove running if pg_safeguard is enabled, false by default
```




### `pg_rm_data`

Parameter Name: `pg_rm_data`, Type: `bool`, Level: `G/C/A`

Whether to clean up [`pg_data`](#pg_data) and symlinks when removing PGSQL instances, default is `true`.

This switch applies to `pgsql-rm.yml` and other operations that call `pg_remove`.
Set it to `false` to keep the data directory for manual inspection or remounting.




### `pg_rm_backup`

Parameter Name: `pg_rm_backup`, Type: `bool`, Level: `G/C/A`

Whether to also clean up the pgBackRest repository and configuration when removing the primary, default is `true`.

This parameter applies only to instances with `pg_role=primary`.
`pg_remove` first stops pgBackRest, then deletes the current cluster stanza.
If `pgbackrest_method == 'local'`, it also removes data in [`pg_fs_backup`](#pg_fs_backup).
It does not affect standby clusters or upstream backups.




### `pg_rm_pkg`

Parameter Name: `pg_rm_pkg`, Type: `bool`, Level: `G/C/A`

Whether to uninstall all packages installed by [`pg_packages`](#pg_packages) when cleaning up PGSQL instances, default is `true`.

To stop temporarily and keep the binaries, set this parameter to `false`.
Otherwise, `pg_remove` uses the system package manager to uninstall PostgreSQL components completely.




### `pg_safeguard`

Parameter Name: `pg_safeguard`, Type: `bool`, Level: `G/C/A`

This parameter protects against accidental deletion.
The default is `false`.
When it is `true`, `pg_remove` stops immediately and shows a message.
To continue, use `-e pg_safeguard=false` or disable it in the variables.

Before batch cleanup in production, enable this switch.
Verify the commands and target nodes, then disable it for removal.
This helps prevent accidental instance deletion.
