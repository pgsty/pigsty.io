---
title: Parameters
description: Customize PostgreSQL clusters with 120 parameters in the PGSQL module
weight: 2000
icon: fa-solid fa-sliders
categories: [Reference]
---


The [`PGSQL`](/docs/pgsql) module needs to be installed on nodes managed by Pigsty (i.e., nodes that have the [`NODE`](/docs/node) module configured), and also requires an available [`ETCD`](/docs/etcd) cluster in your deployment to store cluster metadata.

Installing the `PGSQL` module on a single node will create a standalone PGSQL server/instance, i.e., a [primary](/docs/pgsql/config#primary) instance.
Installing on additional nodes will create [read replicas](/docs/pgsql/config#replica), which can serve as standby instances and handle read-only requests.
You can also create [offline](/docs/pgsql/config#offline) instances for ETL/OLAP/interactive queries, use [sync standby](/docs/pgsql/config#sync-standby) and [quorum commit](/docs/pgsql/config#quorum-commit) to improve data consistency,
or even set up [standby clusters](/docs/pgsql/config#standby-cluster) and [delayed clusters](/docs/pgsql/config#delayed-cluster) to quickly respond to data loss caused by human errors and software defects.

You can define multiple PGSQL clusters and further organize them into a horizontal sharding cluster: Pigsty natively supports [Citus cluster groups](/docs/pgsql/config#citus-cluster), allowing you to upgrade your standard PGSQL cluster in-place to a distributed database cluster.

> Pigsty v4.0 uses PostgreSQL 18 by default and introduces new parameters such as `pg_io_method` and `pgbackrest_exporter`.


------------------------------


| Section                         | Description                                                            |
|:--------------------------------|:-----------------------------------------------------------------------|
| [`PG_ID`](#pg_id)               | PostgreSQL cluster and instance identity parameters                    |
| [`PG_BUSINESS`](#pg_business)   | Business users, databases, services and access control rule definition |
| [`PG_INSTALL`](#pg_install)     | PostgreSQL installation: version, paths, packages                      |
| [`PG_BOOTSTRAP`](#pg_bootstrap) | PostgreSQL cluster initialization: Patroni high availability           |
| [`PG_PROVISION`](#pg_provision) | PostgreSQL cluster template provisioning: roles, privileges, extensions|
| [`PG_BACKUP`](#pg_backup)       | pgBackRest backup and recovery configuration                           |
| [`PG_ACCESS`](#pg_access)       | Service exposure, connection pooling, VIP, DNS client access config    |
| [`PG_MONITOR`](#pg_monitor)     | PostgreSQL monitoring exporter configuration                           |
| [`PG_REMOVE`](#pg_remove)       | PostgreSQL instance cleanup and uninstall configuration                |


----------------

## Parameter Overview

--------

[`PG_ID`](#pg_id) parameters are used to define PostgreSQL cluster and instance identity, including cluster name, instance sequence number, role, shard, and other core identity parameters.

| Parameter                               |   Type   | Level | Description                                                          |
|:----------------------------------------|:--------:|:-----:|:---------------------------------------------------------------------|
| [`pg_mode`](#pg_mode)                   |  `enum`  | `C`   | pgsql cluster mode: pgsql,citus,mssql,mysql,polar,ivory,oracle,gpsql |
| [`pg_cluster`](#pg_cluster)             | `string` | `C`   | pgsql cluster name, REQUIRED identity parameter                      |
| [`pg_seq`](#pg_seq)                     |  `int`   | `I`   | pgsql instance seq number, REQUIRED identity parameter               |
| [`pg_role`](#pg_role)                   |  `enum`  | `I`   | pgsql instance role, REQUIRED, could be primary, replica, offline    |
| [`pg_instances`](#pg_instances)         |  `dict`  | `I`   | define multiple pg instances on node in `{port:ins_vars}` format     |
| [`pg_upstream`](#pg_upstream)           |   `ip`   | `I`   | repl upstream ip addr for standby cluster or cascade replica         |
| [`pg_shard`](#pg_shard)                 | `string` | `C`   | pgsql shard name, REQUIRED identity for sharding clusters like citus |
| [`pg_group`](#pg_group)                 |  `int`   | `C`   | pgsql shard index, REQUIRED identity for sharding clusters like citus|
| [`gp_role`](#gp_role)                   |  `enum`  | `C`   | greenplum role of this cluster, could be master or segment           |
| [`pg_exporters`](#pg_exporters)         |  `dict`  | `C`   | additional pg_exporters to monitor remote postgres instances         |
| [`pg_offline_query`](#pg_offline_query) |  `bool`  | `I`   | set to true to mark this replica as offline instance for offline queries |

--------

[`PG_BUSINESS`](#pg_business) parameters are used to define business users, databases, services and access control rules, as well as default system user credentials.

| Parameter                                             |     Type      | Level | Description                                                       |
|:------------------------------------------------------|:-------------:|:-----:|:------------------------------------------------------------------|
| [`pg_users`](#pg_users)                               |   `user[]`    | `C`   | postgres business users                                           |
| [`pg_databases`](#pg_databases)                       | `database[]`  | `C`   | postgres business databases                                       |
| [`pg_services`](#pg_services)                         |  `service[]`  | `C`   | postgres business services                                        |
| [`pg_hba_rules`](#pg_hba_rules)                       |    `hba[]`    | `C`   | business hba rules for postgres                                   |
| [`pgb_hba_rules`](#pgb_hba_rules)                     |    `hba[]`    | `C`   | business hba rules for pgbouncer                                  |
| [`pg_replication_username`](#pg_replication_username) |  `username`   | `G`   | postgres replication username, `replicator` by default            |
| [`pg_replication_password`](#pg_replication_password) |  `password`   | `G`   | postgres replication password, `DBUser.Replicator` by default     |
| [`pg_admin_username`](#pg_admin_username)             |  `username`   | `G`   | postgres admin username, `dbuser_dba` by default                  |
| [`pg_admin_password`](#pg_admin_password)             |  `password`   | `G`   | postgres admin password in plain text, `DBUser.DBA` by default    |
| [`pg_monitor_username`](#pg_monitor_username)         |  `username`   | `G`   | postgres monitor username, `dbuser_monitor` by default            |
| [`pg_monitor_password`](#pg_monitor_password)         |  `password`   | `G`   | postgres monitor password, `DBUser.Monitor` by default            |
| [`pg_dbsu_password`](#pg_dbsu_password)               |  `password`   | `G/C` | dbsu password, empty string disables it by default, best not set  |

--------

[`PG_INSTALL`](#pg_install) parameters are used to configure PostgreSQL installation options, including version, paths, packages, and extensions.

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

[`PG_BOOTSTRAP`](#pg_bootstrap) parameters are used to configure PostgreSQL cluster initialization, including Patroni high availability, data directory, storage, networking, encoding, and other core settings.

| Parameter                                           |    Type    | Level | Description                                                          |
|:----------------------------------------------------|:----------:|:-----:|:---------------------------------------------------------------------|
| [`pg_data`](#pg_data)                               |   `path`   | `C`   | postgres data directory, `/pg/data` by default                       |
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
| [`pg_rto`](#pg_rto)                                 |   `int`    | `C`   | recovery time objective in seconds, `30s` by default                 |
| [`pg_rpo`](#pg_rpo)                                 |   `int`    | `C`   | recovery point objective in bytes, `1MiB` by default                 |
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

[`PG_PROVISION`](#pg_provision) parameters are used to configure PostgreSQL cluster template provisioning, including default roles, privileges, schemas, extensions, and HBA rules.

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

[`PG_BACKUP`](#pg_backup) parameters are used to configure pgBackRest backup and recovery, including repository type, paths, and retention policies.

| Parameter                                           |  Type  | Level | Description                                               |
|:----------------------------------------------------|:------:|:-----:|:----------------------------------------------------------|
| [`pgbackrest_enabled`](#pgbackrest_enabled)         | `bool` | `C`   | enable pgbackrest on pgsql host?                          |
| [`pgbackrest_clean`](#pgbackrest_clean)             | `bool` | `C`   | remove previous pg backup data during init?               |
| [`pgbackrest_log_dir`](#pgbackrest_log_dir)         | `path` | `C`   | pgbackrest log dir, `/pg/log/pgbackrest` by default       |
| [`pgbackrest_method`](#pgbackrest_method)           | `enum` | `C`   | pgbackrest repo method: local,minio,etc...                |
| [`pgbackrest_init_backup`](#pgbackrest_init_backup) | `bool` | `C`   | perform full backup after init? `true` by default         |
| [`pgbackrest_repo`](#pgbackrest_repo)               | `dict` | `G/C` | pgbackrest repo definition                                |

--------

[`PG_ACCESS`](#pg_access) parameters are used to configure service exposure, connection pooling, VIP, DNS, and other client access options.

| Parameter                                             |    Type     | Level | Description                                                     |
|:------------------------------------------------------|:-----------:|:-----:|:----------------------------------------------------------------|
| [`pgbouncer_enabled`](#pgbouncer_enabled)             |   `bool`    | `C`   | if disabled, pgbouncer will not be configured                   |
| [`pgbouncer_port`](#pgbouncer_port)                   |   `port`    | `C`   | pgbouncer listen port, 6432 by default                          |
| [`pgbouncer_log_dir`](#pgbouncer_log_dir)             |   `path`    | `C`   | pgbouncer log dir, `/pg/log/pgbouncer` by default               |
| [`pgbouncer_auth_query`](#pgbouncer_auth_query)       |   `bool`    | `C`   | use AuthQuery to get unlisted business users from postgres?     |
| [`pgbouncer_poolmode`](#pgbouncer_poolmode)           |   `enum`    | `C`   | pool mode: transaction,session,statement. transaction by default|
| [`pgbouncer_sslmode`](#pgbouncer_sslmode)             |   `enum`    | `C`   | pgbouncer client ssl mode, disabled by default                  |
| [`pgbouncer_ignore_param`](#pgbouncer_ignore_param)   | `string[]`  | `C`   | pgbouncer ignore startup parameters list                        |
| [`pg_weight`](#pg_weight)                             |    `int`    | `I`   | relative load balancing weight in service, 0-255, 100 by default|
| [`pg_service_provider`](#pg_service_provider)         |  `string`   | `G/C` | dedicated haproxy node group name, or use local haproxy         |
| [`pg_default_service_dest`](#pg_default_service_dest) |   `enum`    | `G/C` | default service dest if svc.dest='default': postgres or pgbouncer|
| [`pg_default_services`](#pg_default_services)         | `service[]` | `G/C` | postgres default service definition list, shared globally       |
| [`pg_vip_enabled`](#pg_vip_enabled)                   |   `bool`    | `C`   | enable L2 VIP for pgsql primary? disabled by default            |
| [`pg_vip_address`](#pg_vip_address)                   |   `cidr4`   | `C`   | vip address in `<ipv4>/<mask>` format, required if vip enabled  |
| [`pg_vip_interface`](#pg_vip_interface)               |  `string`   | `C/I` | vip network interface to bindg, eth0 by default                 |
| [`pg_dns_suffix`](#pg_dns_suffix)                     |  `string`   | `C`   | pgsql dns suffix, empty by default                              |
| [`pg_dns_target`](#pg_dns_target)                     |   `enum`    | `C`   | PG DNS resolves to: auto, primary, vip, none, or specific IP    |

--------

[`PG_MONITOR`](#pg_monitor) parameters are used to configure PostgreSQL monitoring exporters, including pg_exporter, pgbouncer_exporter, and pgbackrest_exporter.

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

[`PG_REMOVE`](#pg_remove) parameters are used to configure PostgreSQL instance cleanup and uninstall behavior, including data directory, backup, and package removal control.

| Parameter                       |  Type  |  Level  | Description                                              |
|:--------------------------------|:------:|:-------:|:---------------------------------------------------------|
| [`pg_rm_data`](#pg_rm_data)     | `bool` | `G/C/A` | remove postgres data directory when removing instance?   |
| [`pg_rm_backup`](#pg_rm_backup) | `bool` | `G/C/A` | remove pgbackrest backup when removing primary?          |
| [`pg_rm_pkg`](#pg_rm_pkg)       | `bool` | `G/C/A` | uninstall related packages when removing pgsql instance? |
| [`pg_safeguard`](#pg_safeguard) | `bool` | `G/C/A` | prevent accidental pgsql cleanup operations? false       |


------------------------------

## `PG_ID`

Here are commonly used parameters for identifying [entities](/docs/pgsql/config#er-diagram) in the PGSQL module: clusters, instances, services, etc...


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

You must explicitly specify these **identity parameters**, they have no default values:

|             Name              |   Type   | Level | Description               |
|:-----------------------------:|:--------:|:-----:|---------------------------|
| [`pg_cluster`](#pg_cluster)   | `string` | **C** | **PG cluster name**       |
|     [`pg_seq`](#pg_seq)       | `number` | **I** | **PG instance ID**        |
|    [`pg_role`](#pg_role)      |  `enum`  | **I** | **PG instance role**      |
|   [`pg_shard`](#pg_shard)     | `string` | **C** | **Shard name**            |
|   [`pg_group`](#pg_group)     | `number` | **C** | **Shard index**           |

- [`pg_cluster`](#pg_cluster): Identifies the cluster name, configured at cluster level.
- [`pg_role`](#pg_role): Configured at instance level, identifies the role of the instance. Only `primary` role is treated specially. If not specified, defaults to `replica` role, with special `delayed` and `offline` roles.
- [`pg_seq`](#pg_seq): Used to identify instances within a cluster, typically an integer starting from 0 or 1, once assigned it doesn't change.
- `{{ pg_cluster }}-{{ pg_seq }}` uniquely identifies an instance, i.e., `pg_instance`.
- `{{ pg_cluster }}-{{ pg_role }}` identifies services within the cluster, i.e., `pg_service`.
- [`pg_shard`](#pg_shard) and [`pg_group`](#pg_group) are used for horizontal sharding clusters, only for citus, greenplum, and matrixdb.

[`pg_cluster`](#pg_cluster), [`pg_role`](#pg_role), [`pg_seq`](#pg_seq) are core **identity parameters**, **required** for any Postgres cluster and must be explicitly specified. Here is an example:

```yaml
pg-test:
  hosts:
    10.10.10.11: {pg_seq: 1, pg_role: replica}
    10.10.10.12: {pg_seq: 2, pg_role: primary}
    10.10.10.13: {pg_seq: 3, pg_role: replica}
  vars:
    pg_cluster: pg-test
```

All other parameters can be inherited from global or default configuration, but identity parameters must be **explicitly specified** and **manually assigned**.



### `pg_mode`

Parameter Name: `pg_mode`, Type: `enum`, Level: `C`

PostgreSQL cluster mode, default value is `pgsql`, i.e., standard PostgreSQL cluster.

Available mode options include:

- `pgsql`: Standard PostgreSQL cluster
- `citus`: Citus distributed database cluster
- `mssql`: Babelfish MSSQL wire protocol compatible kernel
- `mysql`: OpenHalo/HaloDB MySQL wire protocol compatible kernel
- `ivory`: IvorySQL Oracle compatible kernel
- `polar`: PolarDB for PostgreSQL kernel
- `oracle`: PolarDB for Oracle kernel
- `gpsql`: Greenplum parallel database cluster (monitoring)

If `pg_mode` is set to `citus` or `gpsql`, two additional required identity parameters [`pg_shard`](#pg_shard) and [`pg_group`](#pg_group) are needed to define the horizontal sharding cluster identity.

In both cases, each PostgreSQL cluster is part of a larger business unit.




### `pg_cluster`

Parameter Name: `pg_cluster`, Type: `string`, Level: `C`

PostgreSQL cluster name, required identity parameter, no default value.

The cluster name is used as the namespace for resources.

Cluster naming must follow a specific pattern: `[a-z][a-z0-9-]*`, i.e., only numbers and lowercase letters, not starting with a number, to meet different identifier constraints.




### `pg_seq`

Parameter Name: `pg_seq`, Type: `int`, Level: `I`

PostgreSQL instance sequence number, required identity parameter, no default value.

The sequence number of this instance, uniquely assigned within its **cluster**, typically using natural numbers starting from 0 or 1, usually not recycled or reused.




### `pg_role`

Parameter Name: `pg_role`, Type: `enum`, Level: `I`

PostgreSQL instance role, required identity parameter, no default value. Values can be: `primary`, `replica`, `offline`

The role of a PGSQL instance can be: `primary`, `replica`, `standby`, or `offline`.

- `primary`: Primary instance, there is one and only one in a cluster.
- `replica`: Replica for serving online read-only traffic, may have slight replication delay under high load (10ms~100ms, 100KB).
- `offline`: Offline replica for handling offline read-only traffic, such as analytics/ETL/personal queries.





### `pg_instances`

Parameter Name: `pg_instances`, Type: `dict`, Level: `I`

Define multiple PostgreSQL instances on a single host using `{port:ins_vars}` format.

This parameter is reserved for multi-instance deployment on a single node. Pigsty has not yet implemented this feature and strongly recommends dedicated node deployment.





### `pg_upstream`

Parameter Name: `pg_upstream`, Type: `ip`, Level: `I`

Upstream instance IP address for [standby cluster](/docs/pgsql/config#standby-cluster) or cascade replica.

Setting `pg_upstream` on the `primary` instance of a cluster indicates this cluster is a [standby cluster](/docs/pgsql/config#standby-cluster), and this instance will act as a `standby leader`, receiving and applying changes from the upstream cluster.

Setting `pg_upstream` on a non-`primary` instance specifies a specific instance as the upstream for physical replication. If different from the primary instance IP address, this instance becomes a **cascade replica**. It is the user's responsibility to ensure the upstream IP address is another instance in the same cluster.





### `pg_shard`

Parameter Name: `pg_shard`, Type: `string`, Level: `C`

PostgreSQL horizontal shard name, required identity parameter for sharding clusters (e.g., citus clusters).

When multiple standard PostgreSQL clusters serve the same business together in a horizontal sharding manner, Pigsty marks this group of clusters as a **horizontal sharding cluster**.

[`pg_shard`](#pg_shard) is the shard group name. It is typically a prefix of [`pg_cluster`](#pg_cluster).

For example, if we have a shard group `pg-citus` with 4 clusters, their identity parameters would be:

```
cls pg_shard: pg-citus
cls pg_group = 0:   pg-citus0
cls pg_group = 1:   pg-citus1
cls pg_group = 2:   pg-citus2
cls pg_group = 3:   pg-citus3
```





### `pg_group`

Parameter Name: `pg_group`, Type: `int`, Level: `C`

PostgreSQL horizontal sharding cluster shard index number, required identity parameter for sharding clusters (e.g., citus clusters).

This parameter is used in conjunction with [pg_shard](#pg_shard), typically using non-negative integers as index numbers.







### `gp_role`

Parameter Name: `gp_role`, Type: `enum`, Level: `C`

Greenplum/Matrixdb role of the PostgreSQL cluster, can be `master` or `segment`.

- `master`: Marks the postgres cluster as a greenplum master instance (coordinator node), this is the default value.
- `segment`: Marks the postgres cluster as a greenplum segment cluster (data node).

This parameter is only used for Greenplum/MatrixDB databases ([`pg_mode`](#pg_mode) is `gpsql`) and has no meaning for regular PostgreSQL clusters.






### `pg_exporters`

Parameter Name: `pg_exporters`, Type: `dict`, Level: `C`

Additional exporter definitions for [monitoring](/docs/pgsql/monitor) remote PostgreSQL instances, default value: `{}`

If you want to monitor remote PostgreSQL instances, define them in the `pg_exporters` parameter on the cluster where the monitoring system resides (Infra node), and use the [`pgsql-monitor.yml`](/docs/pgsql/playbook#pgsql-monitoryml) playbook to complete the deployment.

```yaml
pg_exporters: # list all remote instances here, alloc a unique unused local port as k
    20001: { pg_cluster: pg-foo, pg_seq: 1, pg_host: 10.10.10.10 }
    20004: { pg_cluster: pg-foo, pg_seq: 2, pg_host: 10.10.10.11 }
    20002: { pg_cluster: pg-bar, pg_seq: 1, pg_host: 10.10.10.12 }
    20003: { pg_cluster: pg-bar, pg_seq: 1, pg_host: 10.10.10.13 }
```






### `pg_offline_query`

Parameter Name: `pg_offline_query`, Type: `bool`, Level: `I`

Set to `true` to enable offline queries on this instance, default is `false`.

When this parameter is enabled on a PostgreSQL instance, users belonging to the `dbrole_offline` group can directly connect to this PostgreSQL instance to execute offline queries (slow queries, interactive queries, ETL/analytics queries).

Instances with this flag have an effect similar to setting `pg_role` = `offline` for the instance, with the only difference being that `offline` instances by default do not serve `replica` service requests and exist as dedicated offline/analytics replica instances.

If you don't have spare instances available for this purpose, you can select a regular replica and enable this parameter at the instance level to handle offline queries when needed.









------------------------------

## `PG_BUSINESS`

Customize cluster templates: users, databases, services, and permission rules.

Users should **pay close attention** to this section of parameters, as this is where business declares its required database objects.

* Business user definition: [`pg_users`](#pg_users)
* Business database definition: [`pg_databases`](#pg_databases)
* Cluster-specific service definition: [`pg_services`](#pg_services) (global definition: [`pg_default_services`](#pg_default_services))
* PostgreSQL cluster/instance-specific HBA rules: [`pg_hba_rules`](#pg_hba_rules)
* Pgbouncer connection pool-specific HBA rules: [`pgb_hba_rules`](#pgb_hba_rules)

[Default](/docs/concept/sec/ac/#default-users) database users and their credentials. It is strongly recommended to change these user passwords in production environments.

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

PostgreSQL business user list, needs to be defined at the PG cluster level. Default value: `[]` empty list.

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
  pool_connlimit: -1              # optional, user-level max database connections, default -1 disables limit
  search_path: public             # optional, key-value config parameter per postgresql docs (e.g., use pigsty as default search_path)
```





### `pg_databases`

Parameter Name: `pg_databases`, Type: `database[]`, Level: `C`

PostgreSQL business database list, needs to be defined at the PG cluster level. Default value: `[]` empty list.

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
  pool_size: 64                   # optional, database-level pgbouncer default pool size, default 64
  pool_size_reserve: 32           # optional, database-level pgbouncer pool reserve, default 32, max additional burst connections when default pool insufficient
  pool_size_min: 0                # optional, database-level pgbouncer pool minimum size, default 0
  pool_max_db_conn: 100           # optional, database-level max database connections, default 100
```

In each database definition object, only `name` is a required field, all other fields are optional.







### `pg_services`

Parameter Name: `pg_services`, Type: `service[]`, Level: `C`

PostgreSQL service list, needs to be defined at the PG cluster level. Default value: `[]`, empty list.

Used to define additional services at the database cluster level. Each object in the array defines a [service](/docs/pgsql/service/#define-service). A complete service definition example:


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

Note that this parameter is used to add additional services at the cluster level. If you want to globally define services that all PostgreSQL databases should provide, use the [`pg_default_services`](#pg_default_services) parameter.





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

[`pg_default_hba_rules`](#pg_default_hba_rules) is similar to this parameter, but it's used to define global HBA rules, while this parameter is typically used to customize HBA rules for specific clusters/instances.







### `pgb_hba_rules`

Parameter Name: `pgb_hba_rules`, Type: `hba[]`, Level: `C`

Pgbouncer business HBA rules, default value: `[]`, empty array.

This parameter is similar to [`pg_hba_rules`](#pg_hba_rules), both are arrays of [hba](/docs/pgsql/config/hba#define-hba) rule objects, the difference is that this parameter is for Pgbouncer.

[`pgb_default_hba_rules`](#pgb_default_hba_rules) is similar to this parameter, but it's used to define global connection pool HBA rules, while this parameter is typically used to customize HBA rules for specific connection pool clusters/instances.






### `pg_replication_username`

Parameter Name: `pg_replication_username`, Type: `username`, Level: `G`

PostgreSQL physical replication username, default is `replicator`, not recommended to change this parameter.






### `pg_replication_password`

Parameter Name: `pg_replication_password`, Type: `password`, Level: `G`

PostgreSQL physical replication user password, default value: `DBUser.Replicator`.

> Warning: Please change this password in production environments!





### `pg_admin_username`

Parameter Name: `pg_admin_username`, Type: `username`, Level: `G`

PostgreSQL / Pgbouncer admin name, default: `dbuser_dba`.

This is the globally used database administrator with database Superuser privileges and connection pool traffic management permissions. Please control its usage scope.





### `pg_admin_password`

Parameter Name: `pg_admin_password`, Type: `password`, Level: `G`

PostgreSQL / Pgbouncer admin password, default: `DBUser.DBA`.

> Warning: Please change this password in production environments!





### `pg_monitor_username`

Parameter Name: `pg_monitor_username`, Type: `username`, Level: `G`

PostgreSQL/Pgbouncer monitor username, default: `dbuser_monitor`.

This is a database/connection pool user for monitoring, not recommended to change this username.

However, if your existing database uses a different monitor user, you can use this parameter to specify the monitor username when defining monitoring targets.






### `pg_monitor_password`

Parameter Name: `pg_monitor_password`, Type: `password`, Level: `G`

Password used by PostgreSQL/Pgbouncer monitor user, default: `DBUser.Monitor`.

Try to avoid using characters like `@:/` that can be confused with URL delimiters in passwords to reduce unnecessary trouble.

> Warning: Please change this password in production environments!




### `pg_dbsu_password`

Parameter Name: `pg_dbsu_password`, Type: `password`, Level: `G/C`

PostgreSQL [`pg_dbsu`](#pg_dbsu) superuser password, default is empty string, meaning no password is set.

We don't recommend configuring password login for dbsu as it increases the attack surface. The exception is: [`pg_mode`](#pg_mode) = `citus`, in which case you need to configure a password for each shard cluster's dbsu to allow connections within the shard cluster.







------------------------------

## `PG_INSTALL`

This section is responsible for installing PostgreSQL and its extensions. If you want to install different major versions and extension plugins, just modify [`pg_version`](#pg_version) and [`pg_extensions`](#pg_extensions). Note that not all extensions are available for all major versions.


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

However, in certain situations, you may need a username different from `postgres`, for example, when installing and configuring Greenplum / MatrixDB, you need to use `gpadmin` / `mxadmin` as the corresponding OS superuser.





### `pg_dbsu_uid`

Parameter Name: `pg_dbsu_uid`, Type: `int`, Level: `C`

OS database superuser uid and gid, `26` is the default postgres user UID/GID from PGDG RPM.

For Debian/Ubuntu systems, there is no default value, and user `26` is often taken. Therefore, when Pigsty detects the installation environment is Debian-based and uid is `26`, it will automatically use the replacement `pg_dbsu_uid = 543`.







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






### `pg_version`

Parameter Name: `pg_version`, Type: `enum`, Level: `C`

PostgreSQL major version to install, default is `18`.

Note that PostgreSQL physical streaming replication cannot cross major versions, so it's best not to configure this at the instance level.

You can use parameters in [`pg_packages`](#pg_packages) and [`pg_extensions`](#pg_extensions) to install different packages and extensions for specific PG major versions.





### `pg_bin_dir`

Parameter Name: `pg_bin_dir`, Type: `path`, Level: `C`

PostgreSQL binary directory, default is `/usr/pgsql/bin`.

The default value is a symlink manually created during installation, pointing to the specific installed Postgres version directory.

For example `/usr/pgsql -> /usr/pgsql-15`. On Ubuntu/Debian it points to `/usr/lib/postgresql/15/bin`.

For more details, see [PGSQL File Structure](/docs/ref/fhs#postgres-fhs).





### `pg_log_dir`

Parameter Name: `pg_log_dir`, Type: `path`, Level: `C`

PostgreSQL log directory, default: `/pg/log/postgres`. The Vector log agent uses this variable to collect PostgreSQL logs.

Note that if the log directory [`pg_log_dir`](#pg_log_dir) is prefixed with the data directory [`pg_data`](#pg_data), it won't be explicitly created (created automatically during data directory initialization).






### `pg_packages`

Parameter Name: `pg_packages`, Type: `string[]`, Level: `C`

PostgreSQL packages to install (RPM/DEB), this is an array of package names where elements can be space or comma-separated package aliases.

Pigsty v4 converges the default value to two aliases:

```yaml
pg_packages:
  - pgsql-main pgsql-common
```

- `pgsql-main`: Maps to PostgreSQL kernel, client, PL languages, and core extensions like `pg_repack`, `wal2json`, `pgvector` on the current platform.
- `pgsql-common`: Maps to companion components required for running the database, such as Patroni, Pgbouncer, pgBackRest, pg_exporter, vip-manager, and other daemons.

Alias definitions can be found in `pg_package_map` under [`roles/node_id/vars/`](https://github.com/pgsty/pigsty/tree/main/roles/node_id/vars). Pigsty first resolves aliases based on OS and architecture, then replaces `$v`/`${pg_version}` with the actual major version [`pg_version`](#pg_version), and finally installs the real packages. This shields package name differences between distributions.

If additional packages are needed (e.g., specific FDW or extensions), you can append aliases or real package names directly to `pg_packages`. But remember to keep `pgsql-main pgsql-common`, otherwise core components will be missing.






### `pg_extensions`

Parameter Name: `pg_extensions`, Type: `string[]`, Level: `G/C`

PostgreSQL extension packages to install (RPM/DEB), this is an array of extension package names or aliases.

Starting from v4, the default value is an empty list `[]`. Pigsty no longer forces installation of large extensions, users can choose as needed to avoid extra disk and dependency usage.

To install extensions, fill in like this:

```yaml
pg_extensions:
  - postgis timescaledb pgvector
  - pgsql-fdw     # use alias to install common FDWs at once
```

`pg_package_map` provides many aliases to shield package name differences between distributions. Here are available extension combinations for EL9 platform for reference (pick as needed):

```bash
pg_extensions: # extensions to be installed on this cluster
  - timescaledb periods temporal_tables emaj table_version pg_cron pg_later pg_background pg_timetable
  - postgis pgrouting pointcloud pg_h3 q3c ogr_fdw geoip #pg_geohash #mobilitydb
  - pgvector pgvectorscale pg_vectorize pg_similarity pg_tiktoken pgml #smlar
  - pg_search pg_bigm zhparser hunspell
  - hydra pg_analytics pg_lakehouse pg_duckdb duckdb_fdw pg_fkpart pg_partman plproxy #pg_strom citus
  - pg_hint_plan age hll rum pg_graphql pg_jsonschema jsquery index_advisor hypopg imgsmlr pg_ivm pgmq pgq #rdkit
  - pg_tle plv8 pllua plprql pldebugger plpgsql_check plprofiler plsh #pljava plr pgtap faker dbt2
  - prefix semver pgunit md5hash asn1oid roaringbitmap pgfaceting pgsphere pg_country pg_currency pgmp numeral pg_rational pguint ip4r timestamp9 chkpass #pg_uri #pgemailaddr #acl #debversion #pg_rrule
  - topn pg_gzip pg_http pg_net pg_html5_email_address pgsql_tweaks pg_extra_time pg_timeit count_distinct extra_window_functions first_last_agg tdigest aggs_for_arrays pg_arraymath pg_idkit pg_uuidv7 permuteseq pg_hashids
  - sequential_uuids pg_math pg_random pg_base36 pg_base62 floatvec pg_financial pgjwt pg_hashlib shacrypt cryptint pg_ecdsa pgpcre icu_ext envvar url_encode #pg_zstd #aggs_for_vecs #quantile #lower_quantile #pgqr #pg_protobuf
  - pg_repack pg_squeeze pg_dirtyread pgfincore pgdd ddlx pg_prioritize pg_checksums pg_readonly safeupdate pg_permissions pgautofailover pg_catcheck preprepare pgcozy pg_orphaned pg_crash pg_cheat_funcs pg_savior table_log pg_fio #pgpool pgagent
  - pg_profile pg_show_plans pg_stat_kcache pg_stat_monitor pg_qualstats pg_store_plans pg_track_settings pg_wait_sampling system_stats pg_meta pgnodemx pg_sqlog bgw_replstatus pgmeminfo toastinfo pagevis powa pg_top #pg_statviz #pgexporter_ext #pg_mon
  - passwordcheck supautils pgsodium pg_vault anonymizer pg_tde pgsmcrypto pgaudit pgauditlogtofile pg_auth_mon credcheck pgcryptokey pg_jobmon logerrors login_hook set_user pg_snakeoil pgextwlist pg_auditor noset #sslutils
  - wrappers multicorn odbc_fdw mysql_fdw tds_fdw sqlite_fdw pgbouncer_fdw mongo_fdw redis_fdw pg_redis_pubsub kafka_fdw hdfs_fdw firebird_fdw aws_s3 log_fdw #oracle_fdw #db2_fdw #jdbc_fdw
  - orafce pgtt session_variable pg_statement_rollback pg_dbms_metadata pg_dbms_lock pgmemcache #pg_dbms_job #wiltondb
  - pglogical pgl_ddl_deploy pg_failover_slots wal2json wal2mongo decoderbufs decoder_raw mimeo pgcopydb pgloader pg_fact_loader pg_bulkload pg_comparator pgimportdoc pgexportdoc #repmgr #slony
  - gis-stack rag-stack fdw-stack fts-stack etl-stack feat-stack olap-stack supa-stack stat-stack json-stack
```

For complete list, see: [`roles/node_id/vars`](https://github.com/pgsty/pigsty/blob/main/roles/node_id/vars/)





------------------------------

## `PG_BOOTSTRAP`


Bootstrap PostgreSQL cluster with Patroni and set up 1:1 corresponding Pgbouncer connection pool.

It also initializes the database cluster with default roles, users, privileges, schemas, and extensions defined in [`PG_PROVISION`](#pg_provision).


```yaml
pg_data: /pg/data                 # postgres data directory, `/pg/data` by default
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
pg_io_method: worker              # io method for postgres, auto,fsync,worker,io_uring, worker by default
pg_rto: 30                        # recovery time objective in seconds,  `30s` by default
pg_rpo: 1048576                   # recovery point objective in bytes, `1MiB` at most by default
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

Parameter Name: `pg_data`, Type: `path`, Level: `C`

Postgres data directory, default is `/pg/data`.

This is a symlink to the underlying actual data directory, used in multiple places, please don't modify it. See [PGSQL File Structure](/docs/ref/fhs) for details.





### `pg_fs_main`

Parameter Name: `pg_fs_main`, Type: `path`, Level: `C`

Mount point/file system path for PostgreSQL main data disk, default is `/data/postgres`.

Default value: `/data/postgres`, which will be used directly as the parent directory of PostgreSQL main data directory.

NVME SSD is recommended for PostgreSQL main data storage. Pigsty is optimized for SSD storage by default, but also supports HDD.

You can change [`pg_storage_type`](#pg_storage_type) to `HDD` for HDD storage optimization.





### `pg_fs_backup`

Parameter Name: `pg_fs_backup`, Type: `path`, Level: `C`

Mount point/file system path for PostgreSQL backup data disk, default is `/data/backups`.

If you're using the default [`pgbackrest_method`](#pgbackrest_method) = `local`, it's recommended to use a separate disk for backup storage.

The backup disk should be large enough to hold all backups, at least sufficient for 3 base backups + 2 days of WAL archives. Usually capacity isn't a big issue since you can use cheap large HDDs as backup disks.

It's recommended to use a separate disk for backup storage, otherwise Pigsty will fall back to the main data disk and consume main data disk capacity and IO.





### `pg_storage_type`

Parameter Name: `pg_storage_type`, Type: `enum`, Level: `C`

Type of PostgreSQL data storage media: `SSD` or `HDD`, default is `SSD`.

Default value: `SSD`, which affects some tuning parameters like `random_page_cost` and `effective_io_concurrency`.




### `pg_dummy_filesize`

Parameter Name: `pg_dummy_filesize`, Type: `size`, Level: `C`

Size of `/pg/dummy`, default is `64MiB`, 64MB disk space for emergency use.

When disk is full, deleting the placeholder file can free some space for emergency use. Recommend at least `8GiB` for production.





### `pg_listen`

Parameter Name: `pg_listen`, Type: `ip`, Level: `C`

PostgreSQL / Pgbouncer listen address, default is `0.0.0.0` (all ipv4 addresses).

You can use placeholders in this variable, for example: `'${ip},${lo}'` or `'${ip},${vip},${lo}'`:

- `${ip}`: Translates to `inventory_hostname`, which is the primary internal IP address defined in the inventory.
- `${vip}`: If [`pg_vip_enabled`](#pg_vip_enabled) is enabled, will use the host part of [`pg_vip_address`](#pg_vip_address).
- `${lo}`: Will be replaced with `127.0.0.1`

For production environments with high security requirements, it's recommended to restrict listen IP addresses.




### `pg_port`

Parameter Name: `pg_port`, Type: `port`, Level: `C`

Port that PostgreSQL server listens on, default is `5432`.





### `pg_localhost`

Parameter Name: `pg_localhost`, Type: `path`, Level: `C`

Unix socket directory for localhost PostgreSQL connection, default is `/var/run/postgresql`.

Unix socket directory for PostgreSQL and Pgbouncer local connections. [`pg_exporter`](#pg_exporter) and patroni will preferentially use Unix sockets to access PostgreSQL.




### `pg_namespace`

Parameter Name: `pg_namespace`, Type: `path`, Level: `C`

Top-level namespace used in [etcd](#etcd), used by patroni and vip-manager, default is: `/pg`, not recommended to change.





### `patroni_enabled`

Parameter Name: `patroni_enabled`, Type: `bool`, Level: `C`

Enable Patroni? Default is: `true`.

If disabled, no Postgres cluster will be created during initialization. Pigsty will skip the task of starting patroni, which can be used when trying to add some components to existing postgres instances.




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

This parameter is a global flag that can only be set before deployment. Because if SSL is enabled for patroni, you will have to use HTTPS instead of HTTP for health checks, fetching metrics, and calling APIs.





### `patroni_watchdog_mode`

Parameter Name: `patroni_watchdog_mode`, Type: `string`, Level: `C`

Patroni watchdog mode: `automatic`, `required`, `off`, default is `off`.

In case of primary failure, Patroni can use [watchdog](https://patroni.readthedocs.io/en/latest/watchdog.html) to force shutdown old primary node to avoid split-brain.

- `off`: Don't use `watchdog`. No fencing at all (default behavior)
- `automatic`: Enable `watchdog` if kernel has `softdog` module enabled and watchdog belongs to dbsu.
- `required`: Force enable `watchdog`, refuse to start Patroni/PostgreSQL if `softdog` unavailable.

Default is `off`. You should not enable watchdog on Infra nodes. Critical systems where data consistency takes priority over availability, especially business clusters involving money, can consider enabling this option.

Note that if all your access traffic uses HAproxy health check [service access](/docs/pgsql/service/#access-service), there is normally no split-brain risk.





### `patroni_username`

Parameter Name: `patroni_username`, Type: `username`, Level: `C`

Patroni REST API username, default is `postgres`, used with [`patroni_password`](#patroni_password).

Patroni's dangerous REST APIs (like restarting cluster) are protected by additional username/password. See [Configure Cluster](/docs/pgsql/admin#configure-cluster) and [Patroni RESTAPI](https://patroni.readthedocs.io/en/latest/rest_api.html) for details.





### `patroni_password`

Parameter Name: `patroni_password`, Type: `password`, Level: `C`

Patroni REST API password, default is `Patroni.API`.

> Warning: Must change this parameter in production environments!





### `pg_primary_db`

Parameter Name: `pg_primary_db`, Type: `string`, Level: `C`

Specify the primary database name in the cluster, used for citus and other business databases, default is `postgres`.

For example, when using Patroni to manage HA Citus clusters, you must choose a "primary database".

Additionally, the database name specified here will be displayed in the printed connection string after PGSQL module installation is complete.






### `pg_parameters`

Parameter Name: `pg_parameters`, Type: `dict`, Level: `G/C/I`

Used to specify and manage configuration parameters in `postgresql.auto.conf`.

After all cluster instances are initialized, the `pg_param` task will write the key/value pairs from this dictionary sequentially to `/pg/data/postgresql.auto.conf`.

> Note: Do not manually modify this configuration file, or modify cluster configuration parameters via `ALTER SYSTEM`, changes will be overwritten on the next configuration sync.

This variable has higher priority than cluster configuration in Patroni / DCS (i.e., higher priority than cluster configuration edited by Patroni `edit-config`), so it can typically be used to override cluster default parameters at instance level.

When your cluster members have different specifications (not recommended!), you can use this parameter for fine-grained configuration management of each instance.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary , pg_parameters: { shared_buffers: '5GB' } }
    10.10.10.12: { pg_seq: 2, pg_role: replica , pg_parameters: { shared_buffers: '4GB' } }
    10.10.10.13: { pg_seq: 3, pg_role: replica , pg_parameters: { shared_buffers: '3GB' } }
```

Note that some [important cluster parameters](https://patroni.readthedocs.io/en/latest/patroni_configuration.html#important-rules) (with requirements on primary/replica parameter values) are managed directly by Patroni via command line arguments, have highest priority, and cannot be overridden this way. For these parameters, you must use Patroni `edit-config` for management and configuration.

PostgreSQL parameters that must be consistent on primary and replicas (inconsistency will cause replica to fail to start!):

- `wal_level`
- `max_connections`
- `max_locks_per_transaction`
- `max_worker_processes`
- `max_prepared_transactions`
- `track_commit_timestamp`

Parameters that should preferably be consistent on primary and replicas (considering possibility of failover):

- `listen_addresses`
- `port`
- `cluster_name`
- `hot_standby`
- `wal_log_hints`
- `max_wal_senders`
- `max_replication_slots`
- `wal_keep_segments`
- `wal_keep_size`

You can set non-existent parameters (e.g., GUCs from extensions, thus configuring "not yet existing" parameters that `ALTER SYSTEM` cannot modify), but modifying existing configuration to illegal values may cause PostgreSQL to fail to start, configure with caution!






### `pg_files`

Parameter Name: `pg_files`, Type: `path[]`, Level: `C`

Used to specify a list of files to be copied to the PGDATA directory, default is empty array: `[]`

Files specified in this parameter will be copied to the `{{ pg_data }}` directory, mainly used to distribute license files required by special commercial PostgreSQL kernels.

Currently only PolarDB (Oracle compatible) kernel requires license files. For example, you can place the `license.lic` file in the `files/` directory and specify in `pg_files`:

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

Default is `oltp.yml`, but the [configure](/docs/setup/install#configure) script will set this to `tiny.yml` when current node is a small node.

You can have your own templates, just place them under `templates/<mode>.yml` and set this value to the template name to use.




### `pg_max_conn`

Parameter Name: `pg_max_conn`, Type: `int`, Level: `C`

PostgreSQL server max connections. You can choose a value between 50 and 5000, or use `auto` for recommended value.

Default is `auto`, which sets max connections based on [`pg_conf`](#pg_conf) and [`pg_default_service_dest`](#pg_default_service_dest).

- tiny: 100
- olap: 200
- oltp: 200 (pgbouncer) / 1000 (postgres)
    - pg_default_service_dest = pgbouncer : 200
    - pg_default_service_dest = postgres : 1000
- crit: 200 (pgbouncer) / 1000 (postgres)
    - pg_default_service_dest = pgbouncer : 200
    - pg_default_service_dest = postgres : 1000

Not recommended to set this value above 5000, otherwise you'll need to manually increase haproxy service connection limits.

Pgbouncer's transaction pool can mitigate excessive OLTP connection issues, so setting a large connection count is not recommended by default.

For OLAP scenarios, change [`pg_default_service_dest`](#pg_default_service_dest) to `postgres` to bypass connection pooling.





### `pg_shared_buffer_ratio`

Parameter Name: `pg_shared_buffer_ratio`, Type: `float`, Level: `C`

Postgres shared buffer memory ratio, default is `0.25`, normal range is `0.1`~`0.4`.

Default: `0.25`, meaning 25% of node memory will be used as PostgreSQL's shared buffer. If you want to enable huge pages for PostgreSQL, this value should be appropriately smaller than [`node_hugepage_ratio`](#node_hugepage_ratio).

Setting this value above 0.4 (40%) is usually not a good idea, but may be useful in extreme cases.

Note that shared buffers are only part of PostgreSQL's shared memory. To calculate total shared memory, use `show shared_memory_size_in_huge_pages;`.





### `pg_rto`

Parameter Name: `pg_rto`, Type: `int`, Level: `C`

Recovery Time Objective (RTO) in seconds. This is used to calculate Patroni's TTL value, default is `30` seconds.

If the primary instance is missing for this long, a new leader election will be triggered. This value is not the lower the better, it involves trade-offs:

Reducing this value can reduce unavailable time (unable to write) during cluster failover, but makes the cluster more sensitive to short-term network jitter, thus increasing the chance of false positives triggering failover.

You need to configure this value based on network conditions and business constraints, making a **trade-off** between failure probability and failure impact. Default is `30s`, which affects the following Patroni parameters:

```yaml
# TTL for acquiring leader lease (in seconds). Think of it as the time before starting automatic failover. Default: 30
ttl: {{ pg_rto }}

# Seconds the loop will sleep. Default: 10, this is patroni check loop interval
loop_wait: {{ (pg_rto / 3)|round(0, 'ceil')|int }}

# Timeout for DCS and PostgreSQL operation retries (in seconds). DCS or network issues shorter than this won't cause Patroni to demote leader. Default: 10
retry_timeout: {{ (pg_rto / 3)|round(0, 'ceil')|int }}

# Time (in seconds) allowed for primary to recover from failure before triggering failover, max RTO: 2x loop_wait + primary_start_timeout
primary_start_timeout: {{ (pg_rto / 3)|round(0, 'ceil')|int }}
```




### `pg_rpo`

Parameter Name: `pg_rpo`, Type: `int`, Level: `C`

Recovery Point Objective (RPO) in bytes, default: `1048576`.

Default is 1MiB, meaning up to 1MiB of data loss can be tolerated during failover.

When the primary goes down and all replicas are lagging, you must make a difficult choice, **trade-off between availability and consistency**:

- Promote a replica to become new primary and restore service ASAP, but at the cost of acceptable data loss (e.g., less than 1MB).
- Wait for primary to come back online (may never happen), or manual intervention to avoid any data loss.

You can use the `crit.yml` [conf](#pg_conf) template to ensure no data loss during failover, but this sacrifices some performance.





### `pg_libs`

Parameter Name: `pg_libs`, Type: `string`, Level: `C`

Preloaded dynamic shared libraries, default is `pg_stat_statements,auto_explain`, two PostgreSQL built-in extensions that are strongly recommended to enable.

For existing clusters, you can directly [configure cluster](/docs/pgsql/admin#configure-cluster) `shared_preload_libraries` parameter and apply.

If you want to use TimescaleDB or Citus extensions, you need to add `timescaledb` or `citus` to this list. `timescaledb` and `citus` should be placed at the front of this list, for example:

```
citus,timescaledb,pg_stat_statements,auto_explain
```

Other extensions requiring dynamic loading can also be added to this list, such as `pg_cron`, `pgml`, etc. Typically `citus` and `timescaledb` have highest priority and should be added to the front of the list.






### `pg_delay`

Parameter Name: `pg_delay`, Type: `interval`, Level: `I`

Delayed standby replication delay, default: `0`.

If this value is set to a positive value, the standby cluster leader will be delayed by this time before applying WAL changes. Setting to `1h` means data in this cluster will always lag the original cluster by one hour.

See [Delayed Standby Cluster](/docs/pgsql/config#delayed-cluster) for details.





### `pg_checksum`

Parameter Name: `pg_checksum`, Type: `bool`, Level: `C`

Enable data checksum for PostgreSQL cluster? Default is `true`, enabled.

This parameter can only be set before PGSQL deployment (but you can enable it manually later).

Data checksums help detect disk corruption and hardware failures. This feature is enabled by default since Pigsty v3.5 to ensure data integrity.





### `pg_pwd_enc`

Parameter Name: `pg_pwd_enc`, Type: `enum`, Level: `C`

Password encryption algorithm, fixed to `scram-sha-256` since Pigsty v4.

All new users will use SCRAM credentials. `md5` has been deprecated. For compatibility with old clients, upgrade to SCRAM in business connection pools or client drivers.




### `pg_encoding`

Parameter Name: `pg_encoding`, Type: `enum`, Level: `C`

Database cluster encoding, default is `UTF8`.

Using other non-`UTF8` encodings is not recommended.




### `pg_locale`

Parameter Name: `pg_locale`, Type: `enum`, Level: `C`

Database cluster locale, default is `C`.

This parameter controls the database's default Locale setting, affecting collation, character classification, and other behaviors. Using `C` or `POSIX` provides best performance and predictable sorting behavior.

If you need specific language localization support, you can set it to the corresponding Locale, such as `en_US.UTF-8` or `zh_CN.UTF-8`. Note that Locale settings affect index sort order, so they cannot be changed after cluster initialization.




### `pg_lc_collate`

Parameter Name: `pg_lc_collate`, Type: `enum`, Level: `C`

Database cluster collation, default is `C`.

Unless you know what you're doing, modifying cluster-level collation settings is not recommended.





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

This parameter only applies to PostgreSQL 17 and above, controlling PostgreSQL's data block layer IO strategy.

- In PostgreSQL 17, `io_uring` can provide higher IO performance, but requires operating system kernel support (Linux 5.1+) and the `liburing` library installed.
- In PostgreSQL 18, the default IO method changed from `sync` to `worker`, using background worker processes for asynchronous IO without additional dependencies.
- If you're using Debian 12/Ubuntu 22+ or EL 10+ systems and want optimal IO performance, consider setting this to `io_uring`.

Note that setting this value on systems that don't support `io_uring` may cause PostgreSQL startup to fail, so `auto` or `worker` are safer choices.




### `pg_etcd_password`

Parameter Name: `pg_etcd_password`, Type: `password`, Level: `C`

The password used by this PostgreSQL cluster in etcd, default is empty string `''`.

If set to empty string, the [`pg_cluster`](#pg_cluster) parameter value will be used as the password (for Citus clusters, the [`pg_shard`](#pg_shard) parameter value is used).

This password is used for authentication when Patroni connects to etcd and when vip-manager accesses etcd.




### `pgsodium_key`

Parameter Name: `pgsodium_key`, Type: `string`, Level: `C`

The encryption master key for the pgsodium extension, consisting of 64 hexadecimal digits.

This parameter is not set by default. If not specified, Pigsty will automatically generate a deterministic key using the value of `sha256(pg_cluster)`.

[pgsodium](https://github.com/michelp/pgsodium) is a PostgreSQL extension based on libsodium that provides encryption functions and transparent column encryption capabilities.
If you need to use pgsodium's encryption features, it's recommended to explicitly specify a secure random key and keep it safe.

Example command to generate a random key:

```bash
openssl rand -hex 32   # Generate 64-digit hexadecimal key
```



### `pgsodium_getkey_script`

Parameter Name: `pgsodium_getkey_script`, Type: `path`, Level: `C`

Path to the pgsodium key retrieval script, default uses the `pgsodium_getkey` script from Pigsty templates.

This script is used to retrieve pgsodium's master key when PostgreSQL starts. The default script reads the key from environment variables or configuration files.

If you have custom key management requirements (such as using HashiCorp Vault, AWS KMS, etc.), you can provide a custom script path.


## `PG_PROVISION`


If [`PG_BOOTSTRAP`](#pg_bootstrap) is about creating a new cluster, then PG_PROVISION is about creating default objects in the cluster, including:

* [Default Roles](/docs/concept/sec/ac/#default-roles)
* [Default Users](/docs/concept/sec/ac/#default-users)
* [Default Privileges](/docs/concept/sec/ac/#default-privileges)
* [Default HBA Rules](/docs/pgsql/config/hba#default-hba)
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

Complete the PostgreSQL cluster provisioning work defined in this section after the cluster is bootstrapped. Default value is `true`.

If disabled, the PostgreSQL cluster will not be provisioned. For some special "PostgreSQL" clusters, such as Greenplum, you can disable this option to skip the provisioning phase.




### `pg_init`

Parameter Name: `pg_init`, Type: `string`, Level: `G/C`

Location of the shell script for initializing database templates, default is `pg-init`. This script is copied to `/pg/bin/pg-init` and then executed.

This script is located at [`roles/pgsql/templates/pg-init`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init)

You can add your own logic to this script, or provide a new script in the `templates/` directory and set `pg_init` to the new script name. When using a custom script, please preserve the existing initialization logic.








### `pg_default_roles`

Parameter Name: `pg_default_roles`, Type: `role[]`, Level: `G/C`

Default roles and users in Postgres cluster.

Pigsty has a built-in role system. Please check [PGSQL Access Control: Role System](/docs/concept/sec/ac/#role-system) for details.

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

Pigsty provides corresponding default privilege settings based on the default role system. Please check [PGSQL Access Control: Privileges](/docs/concept/sec/ac/#default-privileges) for details.






### `pg_default_schemas`

Parameter Name: `pg_default_schemas`, Type: `string[]`, Level: `G/C`

Default schemas to create, default value is: `[ monitor ]`. This will create a `monitor` schema on all databases for placing various monitoring extensions, tables, views, and functions.






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

The only third-party extension is `pg_repack`, which is important for database maintenance. All other extensions are built-in PostgreSQL Contrib extensions.

Monitoring-related extensions are installed in the `monitor` schema by default, which is created by [`pg_default_schemas`](#pg_default_schemas).





### `pg_reload`

Parameter Name: `pg_reload`, Type: `bool`, Level: `A`

Reload PostgreSQL after HBA changes, default value is `true`.

Set it to `false` to disable automatic configuration reload when you want to check before applying HBA changes.





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

The default value provides a fair security level for common scenarios. Please check [PGSQL Authentication](/docs/pgsql/config/hba) for details.

This parameter is an array of [HBA](/docs/pgsql/config/hba#define-hba) rule objects, identical in format to [`pg_hba_rules`](#pg_hba_rules).
It's recommended to configure unified [`pg_default_hba_rules`](#pg_default_hba_rules) globally, and use [`pg_hba_rules`](#pg_hba_rules) for additional customization on specific clusters. Rules from both parameters are applied sequentially, with the latter having higher priority.




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

This parameter is identical in format to [`pgb_hba_rules`](#pgb_hba_rules). It's recommended to configure unified [`pgb_default_hba_rules`](#pgb_default_hba_rules) globally, and use [`pgb_hba_rules`](#pgb_hba_rules) for additional customization on specific clusters. Rules from both parameters are applied sequentially, with the latter having higher priority.






------------------------------

## `PG_BACKUP`

This section defines variables for [pgBackRest](https://pgbackrest.org/), which is used for PGSQL Point-in-Time Recovery (PITR).

Check [PGSQL Backup & PITR](/docs/pgsql/backup) for detailed information.


```yaml
pgbackrest_enabled: true          # enable pgBackRest on pgsql host?
pgbackrest_clean: true            # remove pg backup data during init?
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

When using local filesystem backup repository (`local`), only the cluster primary will actually enable `pgbackrest`. Other instances will only initialize an empty repository.





### `pgbackrest_clean`

Parameter Name: `pgbackrest_clean`, Type: `bool`, Level: `C`

Remove PostgreSQL backup data during initialization? Default value is `true`.




### `pgbackrest_log_dir`

Parameter Name: `pgbackrest_log_dir`, Type: `path`, Level: `C`

pgBackRest log directory, default is `/pg/log/pgbackrest`. The Vector log agent references this parameter for log collection.





### `pgbackrest_method`

Parameter Name: `pgbackrest_method`, Type: `enum`, Level: `C`

pgBackRest repository method: default options are `local`, `minio`, or other user-defined methods, default is `local`.

This parameter determines which repository to use for pgBackRest. All available repository methods are defined in [`pgbackrest_repo`](#pgbackrest_repo).

Pigsty uses the `local` backup repository by default, which creates a backup repository in the `/pg/backup` directory on the primary instance. The underlying storage path is specified by [`pg_fs_backup`](#pg_fs_backup).






### `pgbackrest_init_backup`

Parameter Name: `pgbackrest_init_backup`, Type: `bool`, Level: `C`

Perform a full backup immediately after pgBackRest initialization completes? Default is `true`.

This operation is only executed on cluster primary and non-cascading replicas (no [`pg_upstream`](#pg_upstream) defined). Enabling this parameter ensures you have a base backup immediately after cluster initialization for recovery when needed.




### `pgbackrest_repo`

Parameter Name: `pgbackrest_repo`, Type: `dict`, Level: `G/C`

pgBackRest repository documentation: https://pgbackrest.org/configuration.html#section-repository

Default value includes two repository methods: `local` and `minio`, defined as follows:

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

**Block Incremental Backup**: Starting from pgBackRest 2.46, the `block: y` option enables block-level incremental backup.
This means during incremental backups, pgBackRest only backs up changed data blocks instead of entire changed files, significantly reducing backup data volume and backup time.
This feature is particularly useful for large databases, and it's recommended to enable this option on object storage repositories.





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
pg_vip_interface: eth0            # vip network interface to listen, eth0 by default
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

Allow Pgbouncer to query PostgreSQL to allow users not explicitly listed to access PostgreSQL through the connection pool? Default value is `false`.

If enabled, pgbouncer users will authenticate against the postgres database using `SELECT username, password FROM monitor.pgbouncer_auth($1)`. Otherwise, only business users with `pgbouncer: true` are allowed to connect to the Pgbouncer connection pool.






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

Note that enabling SSL may have a significant performance impact on your pgbouncer.

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

These parameters are configured in the `ignore_startup_parameters` option in the PgBouncer configuration file. When clients set these parameters during connection, PgBouncer will not create new connections due to parameter mismatch in the connection pool.

This allows different clients to use the same connection pool even if they set different values for these parameters. This parameter was added in Pigsty v3.5.







------------------------------

### `pg_weight`

Parameter Name: `pg_weight`, Type: `int`, Level: `I`

Relative load balancing weight in service, default is 100, range 0-255.

Default value: `100`. You must define it in instance variables and [reload service](/docs/pgsql/admin#reload-service) for it to take effect.





### `pg_service_provider`

Parameter Name: `pg_service_provider`, Type: `string`, Level: `G/C`

Dedicated haproxy node group name, or empty string for local nodes by default.

If specified, PostgreSQL services will be registered to the dedicated haproxy node group instead of the current PGSQL cluster nodes.

Remember to allocate **unique** ports for each service on the dedicated haproxy nodes!

For example, if we define the following parameters on a 3-node `pg-test` cluster:

```yaml
pg_service_provider: infra       # use load balancer on group `infra`
pg_default_services:             # alloc port 10001 and 10002 for pg-test primary/replica service
  - { name: primary ,port: 10001 ,dest: postgres  ,check: /primary   ,selector: "[]" }
  - { name: replica ,port: 10002 ,dest: postgres  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
```




### `pg_default_service_dest`

Parameter Name: `pg_default_service_dest`, Type: `enum`, Level: `G/C`

When defining a [service](/docs/pgsql/service/#define-service), if `svc.dest='default'`, this parameter will be used as the default value.

Default value: `pgbouncer`, meaning the 5433 primary service and 5434 replica service will route traffic to pgbouncer by default.

If you don't want to use pgbouncer, set it to `postgres`. Traffic will be routed directly to postgres.






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

Enable L2 VIP for PGSQL cluster? Default value is `false`, meaning no L2 VIP will be created.

When L2 VIP is enabled, a VIP will be bound to the cluster primary instance node, managed by `vip-manager` based on data in `etcd`.

L2 VIP can only be used within the same L2 network, which may impose additional constraints on your network topology.





### `pg_vip_address`

Parameter Name: `pg_vip_address`, Type: `cidr4`, Level: `C`

VIP address in `<ipv4>/<mask>` format is required if VIP is enabled.

Default value: `127.0.0.1/24`. This value consists of two parts: `ipv4` and `mask`, separated by `/`.





### `pg_vip_interface`

Parameter Name: `pg_vip_interface`, Type: `string`, Level: `C/I`

VIP network interface to listen, `eth0` by default.

It should be your node's primary network interface name, i.e., the IP address used in your inventory.

If your nodes have multiple network interfaces with different names, you can override it in instance variables:

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

You can specify a domain suffix with this parameter, which will use `{{ pg_cluster }}{{ pg_dns_suffix }}` as the cluster DNS name.

For example, if you set `pg_dns_suffix` to `.db.vip.company.tld`, the `pg-test` cluster DNS name will be `pg-test.db.vip.company.tld`.





### `pg_dns_target`

Parameter Name: `pg_dns_target`, Type: `enum`, Level: `C`

Could be: `auto`, `primary`, `vip`, `none`, or an ad hoc IP address, which will be the target IP address of cluster DNS record.

Default value: `auto`, which will bind to `pg_vip_address` if `pg_vip_enabled`, or fallback to cluster primary instance IP address.

* `vip`: bind to `pg_vip_address`
* `primary`: resolve to cluster primary instance IP address
* `auto`: resolve to `pg_vip_address` if `pg_vip_enabled`, or fallback to cluster primary instance IP address
* `none`: do not bind to any IP address
* `<ipv4>`: bind to the given IP address






------------------------------

## `PG_MONITOR`

The PG_MONITOR group parameters are used to monitor the status of PostgreSQL databases, Pgbouncer connection pools, and pgBackRest backup systems.

This parameter group defines three Exporter configurations: `pg_exporter` for monitoring PostgreSQL, `pgbouncer_exporter` for monitoring connection pools, and `pgbackrest_exporter` for monitoring backup status.

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
pgbackrest_exporter_options: ''        # extra options to override pgbackrest_exporter
```



### `pg_exporter_enabled`

Parameter Name: `pg_exporter_enabled`, Type: `bool`, Level: `C`

Enable pg_exporter on PGSQL nodes? Default value is: `true`.

PG Exporter is used to monitor PostgreSQL database instances. Set to `false` if you don't want to install pg_exporter.






### `pg_exporter_config`

Parameter Name: `pg_exporter_config`, Type: `string`, Level: `C`

pg_exporter configuration file name, both PG Exporter and PGBouncer Exporter will use this configuration file. Default value: `pg_exporter.yml`.

If you want to use a custom configuration file, you can define it here. Your custom configuration file should be placed in `files/<name>.yml`.

For example, when you want to monitor a remote PolarDB database instance, you can use the sample configuration: `files/polar_exporter.yml`.





### `pg_exporter_cache_ttls`

Parameter Name: `pg_exporter_cache_ttls`, Type: `string`, Level: `C`

pg_exporter collector TTL stages (seconds), default is '1,10,60,300'.

Default value: `1,10,60,300`, which will use different TTL values for different metric collectors: 1s, 10s, 60s, 300s.

PG Exporter has a built-in caching mechanism to avoid the improper impact of multiple Prometheus scrapes on the database. All metric collectors are divided into four categories by TTL:

```yaml
ttl_fast: "{{ pg_exporter_cache_ttls.split(',')[0]|int }}"         # critical queries
ttl_norm: "{{ pg_exporter_cache_ttls.split(',')[1]|int }}"         # common queries
ttl_slow: "{{ pg_exporter_cache_ttls.split(',')[2]|int }}"         # slow queries (e.g table size)
ttl_slowest: "{{ pg_exporter_cache_ttls.split(',')[3]|int }}"      # ver slow queries (e.g bloat)
```

For example, with default configuration, liveness metrics are cached for at most `1s`, most common metrics are cached for `10s` (should match the monitoring scrape interval [`victoria_scrape_interval`](/docs/infra/param#victoria_scrape_interval)).
A few slow-changing queries have `60s` TTL, and very few high-overhead monitoring queries have `300s` TTL.






### `pg_exporter_port`

Parameter Name: `pg_exporter_port`, Type: `port`, Level: `C`

pg_exporter listen port, default value is: `9630`





### `pg_exporter_params`

Parameter Name: `pg_exporter_params`, Type: `string`, Level: `C`

Extra URL path parameters in the DSN used by pg_exporter.

Default value: `sslmode=disable`, which disables SSL for monitoring connections (since local unix sockets are used by default).





### `pg_exporter_url`

Parameter Name: `pg_exporter_url`, Type: `pgurl`, Level: `C`

If specified, will override the auto-generated PostgreSQL DSN and use the specified DSN to connect to PostgreSQL. Default value is empty string.

If not specified, PG Exporter will use the following connection string to access PostgreSQL by default:

```
postgres://{{ pg_monitor_username }}:{{ pg_monitor_password }}@{{ pg_host }}:{{ pg_port }}/postgres{% if pg_exporter_params != '' %}?{{ pg_exporter_params }}{% endif %}
```

Use this parameter when you want to monitor a remote PostgreSQL instance, or need to use different monitoring user/password or configuration options.




### `pg_exporter_auto_discovery`

Parameter Name: `pg_exporter_auto_discovery`, Type: `bool`, Level: `C`

Enable auto database discovery? Enabled by default: `true`.

By default, PG Exporter connects to the database specified in the DSN (default is the admin database `postgres`) to collect global metrics. If you want to collect metrics from all business databases, enable this option.
PG Exporter will automatically discover all databases in the target PostgreSQL instance and collect **database-level monitoring metrics** from these databases.




### `pg_exporter_exclude_database`

Parameter Name: `pg_exporter_exclude_database`, Type: `string`, Level: `C`

If database auto-discovery is enabled (enabled by default), databases in this parameter's list will not be monitored.
Default value is: `template0,template1,postgres`, meaning the admin database `postgres` and template databases are excluded from auto-monitoring.

As an exception, the database specified in the DSN is not affected by this parameter. For example, if PG Exporter connects to the `postgres` database, it will be monitored even if `postgres` is in this list.





### `pg_exporter_include_database`

Parameter Name: `pg_exporter_include_database`, Type: `string`, Level: `C`

If database auto-discovery is enabled (enabled by default), only databases in this parameter's list will be monitored. Default value is empty string, meaning this feature is not enabled.

The parameter format is a comma-separated list of database names, e.g., `db1,db2,db3`.

This parameter has higher priority than [`pg_exporter_exclude_database`](#pg_exporter_exclude_database), acting as a whitelist mode. Use this parameter if you only want to monitor specific databases.





### `pg_exporter_connect_timeout`

Parameter Name: `pg_exporter_connect_timeout`, Type: `int`, Level: `C`

pg_exporter connection timeout (milliseconds), default is `200` (in milliseconds).

How long will PG Exporter wait when trying to connect to a PostgreSQL database? Beyond this time, PG Exporter will give up the connection and report an error.

The default value of 200ms is sufficient for most scenarios (e.g., same availability zone monitoring), but if your monitored remote PostgreSQL is on another continent, you may need to increase this value to avoid connection timeouts.






### `pg_exporter_options`

Parameter Name: `pg_exporter_options`, Type: `arg`, Level: `C`

Command line arguments passed to PG Exporter, default value is: `""` empty string.

When using empty string, the default command arguments will be used:

```bash
{% if pg_exporter_port != '' %}
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

If specified, will override the auto-generated pgbouncer DSN and use the specified DSN to connect to pgbouncer. Default value is empty string.

If not specified, Pgbouncer Exporter will use the following connection string to access Pgbouncer by default:

```
postgres://{{ pg_monitor_username }}:{{ pg_monitor_password }}@:{{ pgbouncer_port }}/pgbouncer?host={{ pg_localhost }}&sslmode=disable
```

Use this parameter when you want to monitor a remote Pgbouncer instance, or need to use different monitoring user/password or configuration options.






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

pgbackrest_exporter is used to monitor the status of the pgBackRest backup system, including key metrics such as backup size, time, type, and duration.




### `pgbackrest_exporter_port`

Parameter Name: `pgbackrest_exporter_port`, Type: `port`, Level: `C`

pgbackrest_exporter listen port, default value is: `9854`.

This port needs to be referenced in the Prometheus service discovery configuration to scrape backup-related monitoring metrics.




### `pgbackrest_exporter_options`

Parameter Name: `pgbackrest_exporter_options`, Type: `arg`, Level: `C`

Command line arguments passed to pgbackrest_exporter, default value is: `""` empty string.

When using empty string, the default command argument configuration will be used. You can specify additional parameter options here to adjust the exporter's behavior.



------------------------------

## `PG_REMOVE`

[`pgsql-rm.yml`](/docs/pgsql/playbook#pgsql-rmyml) invokes the `pg_remove` role to safely remove PostgreSQL instances. This section's parameters control cleanup behavior to avoid accidental deletion.

```yaml
pg_rm_data: true                  # remove postgres data during remove? true by default
pg_rm_backup: true                # remove pgbackrest backup during primary remove? true by default
pg_rm_pkg: true                   # uninstall postgres packages during remove? true by default
pg_safeguard: false               # stop pg_remove running if pg_safeguard is enabled, false by default
```




### `pg_rm_data`

Parameter Name: `pg_rm_data`, Type: `bool`, Level: `G/C/A`

Whether to clean up [`pg_data`](#pg_data) and symlinks when removing PGSQL instances, default is `true`.

This switch affects both `pgsql-rm.yml` and other scenarios that trigger `pg_remove`. Set to `false` to preserve the data directory for manual inspection or remounting.




### `pg_rm_backup`

Parameter Name: `pg_rm_backup`, Type: `bool`, Level: `G/C/A`

Whether to also clean up the pgBackRest repository and configuration when removing the primary, default is `true`.

This parameter only applies to primary instances with `pg_role=primary`: `pg_remove` will first stop pgBackRest, delete the current cluster's stanza, and remove data in [`pg_fs_backup`](#pg_fs_backup) when `pgbackrest_method == 'local'`. Standby clusters or upstream backups are not affected.




### `pg_rm_pkg`

Parameter Name: `pg_rm_pkg`, Type: `bool`, Level: `G/C/A`

Whether to uninstall all packages installed by [`pg_packages`](#pg_packages) when cleaning up PGSQL instances, default is `true`.

If you only want to temporarily stop and preserve binaries, set it to `false`. Otherwise, `pg_remove` will call the system package manager to completely uninstall PostgreSQL-related components.




### `pg_safeguard`

Parameter Name: `pg_safeguard`, Type: `bool`, Level: `G/C/A`

Accidental deletion protection, default is `false`. When explicitly set to `true`, `pg_remove` will immediately terminate with a prompt, and will only continue after using `-e pg_safeguard=false` or disabling it in variables.

It's recommended to enable this switch before batch cleanup in production environments, verify the commands and target nodes are correct, then disable it to avoid accidental deletion of instances.
