---
title: Playbook
weight: 2010
description: How to manage PostgreSQL clusters with Ansible playbooks
icon: fa-solid fa-scroll
module: [PGSQL]
categories: [Task]
tags: []
---


> Pigsty provides a series of playbooks for cluster provisioning, scaling, user/database management, monitoring, backup & recovery, and migration.

| Playbook                                     | Function                                                      |
|----------------------------------------------|---------------------------------------------------------------|
| [`pgsql.yml`](#pgsqlyml)                     | Initialize PostgreSQL cluster or add new replicas             |
| [`pgsql-rm.yml`](#pgsql-rmyml)               | Remove PostgreSQL cluster or specific instances               |
| [`pgsql-user.yml`](#pgsql-useryml)           | Add new business user to existing PostgreSQL cluster          |
| [`pgsql-db.yml`](#pgsql-dbyml)               | Add new business database to existing PostgreSQL cluster      |
| [`pgsql-monitor.yml`](#pgsql-monitoryml)     | Monitor remote PostgreSQL instances                           |
| [`pgsql-migration.yml`](#pgsql-migrationyml) | Generate migration manual and scripts for existing PostgreSQL |
| [`pgsql-pitr.yml`](#pgsql-pitryml)           | Perform Point-In-Time Recovery (PITR)                         |


----------------

## Safeguard

Be **extra cautious** when using [`PGSQL`](/docs/pgsql) playbooks. Misuse of [`pgsql.yml`](#pgsqlyml) and [`pgsql-rm.yml`](#pgsql-rmyml) can lead to accidental database deletion!

* Always add the `-l` parameter to limit the execution scope, and ensure you're executing the right tasks on the right targets.
* Limiting scope to a single cluster is recommended. Running `pgsql.yml` without parameters in production is a high-risk operation—think twice before proceeding.

To prevent accidental deletion, Pigsty's PGSQL module provides a safeguard mechanism controlled by the [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) parameter.
When `pg_safeguard` is set to `true`, the [`pgsql-rm.yml`](#pgsql-rmyml) playbook will abort immediately, protecting your database cluster.

```bash
# Will abort execution, protecting data
./pgsql-rm.yml -l pg-test

# Force override the safeguard via command line parameter
./pgsql-rm.yml -l pg-test -e pg_safeguard=false
```

In addition to `pg_safeguard`, [`pgsql-rm.yml`](#pgsql-rmyml) provides finer-grained control parameters:

| Parameter | Default | Description |
|-----------|---------|-------------|
| [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) | `false` | Safeguard switch; when `true`, playbook aborts |
| `pg_rm_data` | `true` | Whether to remove PostgreSQL data directory |
| `pg_rm_backup` | `true` | Whether to remove pgBackRest backup data (only when removing primary) |
| `pg_rm_pkg` | `false` | Whether to uninstall PostgreSQL packages |

These parameters allow precise control over removal behavior:

```bash
# Remove cluster but keep data directory (only stop services)
./pgsql-rm.yml -l pg-test -e pg_rm_data=false

# Remove cluster but keep backup data
./pgsql-rm.yml -l pg-test -e pg_rm_backup=false

# Remove cluster and uninstall packages
./pgsql-rm.yml -l pg-test -e pg_rm_pkg=true
```


----------------

## `pgsql.yml`

The [`pgsql.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql.yml) playbook is used to initialize PostgreSQL clusters or add new replicas.

Here's a demo of initializing a PostgreSQL cluster in the sandbox environment:

[![asciicast](https://asciinema.org/a/566417.svg)](https://asciinema.org/a/566417)


**Basic Usage**

```bash
./pgsql.yml -l pg-meta            # Initialize cluster pg-meta
./pgsql.yml -l 10.10.10.13        # Initialize/add instance 10.10.10.13
./pgsql.yml -l pg-test -t pg_service  # Refresh services for cluster pg-test
./pgsql.yml -l pg-test -t pg_hba,pgbouncer_hba,pgbouncer_reload -e pg_reload=true  # Reload HBA rules
```

**Wrapper Scripts**

Pigsty provides convenient wrapper scripts to simplify common operations:

```bash
bin/pgsql-add pg-meta             # Initialize pgsql cluster pg-meta
bin/pgsql-add 10.10.10.10         # Initialize pgsql instance 10.10.10.10
bin/pgsql-add pg-test 10.10.10.13 # Add 10.10.10.13 to cluster pg-test (auto refresh services)
bin/pgsql-svc pg-test             # Refresh haproxy services for pg-test (use after membership changes)
bin/pgsql-hba pg-test             # Reload pg/pgb HBA rules for pg-test
```


**Subtasks**

This playbook contains the following subtasks:

```yaml
# pg_install              : install postgres packages & extensions
#   - pg_dbsu             : setup postgres superuser
#     - pg_dbsu_create    : create dbsu user
#     - pg_dbsu_sudo      : configure dbsu sudo privileges
#     - pg_ssh            : exchange dbsu SSH keys
#   - pg_pkg              : install postgres packages
#     - pg_pre            : pre-installation tasks
#     - pg_ext            : install postgres extension packages
#     - pg_post           : post-installation tasks
#   - pg_link             : link pgsql version bin to /usr/pgsql
#   - pg_path             : add pgsql bin to system path
#   - pg_dir              : create postgres directories and setup FHS
#   - pg_bin              : sync /pg/bin scripts
#   - pg_alias            : configure pgsql/psql aliases
#   - pg_dummy            : create dummy placeholder file
#
# pg_bootstrap            : bootstrap postgres cluster
#   - pg_config           : generate postgres config
#     - pg_conf           : generate patroni config
#     - pg_key            : generate pgsodium key
#   - pg_cert             : issue certificates for postgres
#     - pg_cert_private   : check pg private key existence
#     - pg_cert_issue     : sign pg server certificate
#     - pg_cert_copy      : copy key & certs to pg node
#   - pg_launch           : launch patroni primary & replicas
#     - pg_watchdog       : grant watchdog permission to postgres
#     - pg_primary        : launch patroni/postgres primary
#     - pg_init           : init pg cluster with roles/templates
#     - pg_pass           : write .pgpass file to pg home
#     - pg_replica        : launch patroni/postgres replicas
#     - pg_hba            : generate pg HBA rules
#     - patroni_reload    : reload patroni config
#     - pg_patroni        : pause or remove patroni if necessary
#
# pg_provision            : provision postgres business users & databases
#   - pg_user             : provision postgres business users
#     - pg_user_config    : render create user SQL
#     - pg_user_create    : create user on postgres
#   - pg_db               : provision postgres business databases
#     - pg_db_drop        : drop database on postgres (state=absent/recreate)
#     - pg_db_config      : render create database SQL
#     - pg_db_create      : create database on postgres
#
# pg_backup               : init postgres PITR backup
#   - pgbackrest          : setup pgbackrest for backup
#     - pgbackrest_config : generate pgbackrest config
#     - pgbackrest_init   : init pgbackrest repo
#     - pgbackrest_backup : make initial backup after bootstrap
#
# pg_access               : init postgres service access layer
#   - pgbouncer           : deploy pgbouncer connection pooler
#     - pgbouncer_dir     : create pgbouncer directories
#     - pgbouncer_config  : generate pgbouncer config
#       - pgbouncer_hba   : generate pgbouncer HBA config
#       - pgbouncer_user  : generate pgbouncer userlist
#     - pgbouncer_launch  : launch pgbouncer service
#     - pgbouncer_reload  : reload pgbouncer config
#   - pg_vip              : bind VIP to primary with vip-manager
#     - pg_vip_config     : generate vip-manager config
#     - pg_vip_launch     : launch vip-manager to bind VIP
#   - pg_dns              : register DNS name to infra dnsmasq
#     - pg_dns_ins        : register pg instance name
#     - pg_dns_cls        : register pg cluster name
#   - pg_service          : expose pgsql service with haproxy
#     - pg_service_config : generate local haproxy config for pg services
#     - pg_service_reload : expose postgres services with haproxy
#
# pg_monitor              : setup pgsql monitoring and register to infra
#   - pg_exporter         : configure and launch pg_exporter
#   - pgbouncer_exporter  : configure and launch pgbouncer_exporter
#   - pgbackrest_exporter : configure and launch pgbackrest_exporter
#   - pg_register         : register pgsql to monitoring/logging/datasource
#     - add_metrics       : register pg as VictoriaMetrics monitoring target
#     - add_logs          : register pg as Vector log source
#     - add_ds            : register pg database as Grafana datasource
```

**Related Administration Tasks**

- [Create Cluster](/docs/pgsql/admin#create-cluster)
- [Add Instance](/docs/pgsql/admin#add-instance)
- [Reload Service](/docs/pgsql/admin#reload-service)
- [Reload HBA](/docs/pgsql/admin#reload-hba)

**Notes**

* When running this playbook on a single replica, ensure the **cluster primary is already initialized!**
* After scaling out, you need to [Reload Service](/docs/pgsql/admin#reload-service) and [Reload HBA](/docs/pgsql/admin#reload-hba). The wrapper script `bin/pgsql-add` handles these tasks automatically.

When scaling a cluster, if Patroni takes too long to bring up a replica, the Ansible playbook may abort due to timeout:
* Typical error message: `wait for postgres/patroni replica` task runs for a long time before aborting
* However, the replica creation process continues. For scenarios where replica creation takes more than a day, see [FAQ](/docs/pgsql/faq): Replica creation failed.



----------------

## `pgsql-rm.yml`

The [`pgsql-rm.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-rm.yml) playbook is used to remove PostgreSQL clusters or specific instances.

Here's a demo of removing a PostgreSQL cluster in the sandbox environment:

[![asciicast](https://asciinema.org/a/566418.svg)](https://asciinema.org/a/566418)


**Basic Usage**

```bash
./pgsql-rm.yml -l pg-test          # Remove cluster pg-test
./pgsql-rm.yml -l 10.10.10.13      # Remove instance 10.10.10.13
```

**Command Line Arguments**

This playbook supports the following command line arguments:

```bash
./pgsql-rm.yml -l pg-test          # Remove cluster pg-test
    -e pg_safeguard=false          # Safeguard switch, disabled by default; override when enabled
    -e pg_rm_data=true             # Whether to remove PostgreSQL data directory, default: remove
    -e pg_rm_backup=true           # Whether to remove pgBackRest backup (primary only), default: remove
    -e pg_rm_pkg=false             # Whether to uninstall PostgreSQL packages, default: keep
```

**Wrapper Scripts**

```bash
bin/pgsql-rm pg-meta               # Remove pgsql cluster pg-meta
bin/pgsql-rm pg-test 10.10.10.13   # Remove instance 10.10.10.13 from cluster pg-test
```

**Subtasks**

This playbook contains the following subtasks:

```yaml
# pg_safeguard           : abort if pg_safeguard is enabled
#
# pg_monitor             : remove registration from monitoring system
#   - pg_deregister      : remove pg monitoring targets from infra
#     - rm_metrics       : remove monitoring targets from prometheus
#     - rm_ds            : remove datasource from grafana
#     - rm_logs          : remove log targets from vector
#   - pg_exporter        : remove pg_exporter
#   - pgbouncer_exporter : remove pgbouncer_exporter
#   - pgbackrest_exporter: remove pgbackrest_exporter
#
# pg_access              : remove pg service access layer
#   - dns                : remove pg DNS records
#   - vip                : remove vip-manager
#   - pg_service         : remove pg service from haproxy
#   - pgbouncer          : remove pgbouncer connection middleware
#
# postgres               : remove postgres instances
#   - pg_replica         : remove all replicas
#   - pg_primary         : remove primary
#   - pg_meta            : remove metadata from etcd
#
# pg_backup              : remove backup repo (disable with pg_rm_backup=false)
# pg_data                : remove postgres data (disable with pg_rm_data=false)
# pg_pkg                 : uninstall pg packages (enable with pg_rm_pkg=true)
#   - pg_ext             : uninstall postgres extensions alone
```

**Related Administration Tasks**

- [Remove Instance](/docs/pgsql/admin#remove-instance)
- [Remove Cluster](/docs/pgsql/admin#remove-cluster)

**Notes**

* **Do not run this playbook on a primary that still has replicas**—otherwise, remaining replicas will trigger automatic failover. Always remove all replicas first, then remove the primary. This is not a concern when removing the entire cluster at once.
* **Refresh cluster services after removing instances**. When you remove a replica from a cluster, it remains in the load balancer configuration file. Since health checks will fail, the removed instance won't affect cluster services. However, you should [Reload Service](/docs/pgsql/admin#reload-service) at an appropriate time to ensure consistency between the production environment and configuration inventory.



----------------

## `pgsql-user.yml`

The [`pgsql-user.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-user.yml) playbook is used to add new business users to existing PostgreSQL clusters.

**Basic Usage**

```bash
./pgsql-user.yml -l pg-meta -e username=dbuser_meta
```

**Wrapper Scripts**

```bash
bin/pgsql-user pg-meta dbuser_meta  # Create user dbuser_meta on cluster pg-meta
```

**Workflow**

1. Define user in the config inventory: `all.children.<pg_cluster>.vars.pg_users[i]`
2. Execute playbook specifying cluster and username: `pgsql-user.yml -l <pg_cluster> -e username=<name>`

The playbook will:
1. Generate user creation SQL at `/pg/tmp/pg-user-{{ user.name }}.sql`
2. Execute user creation/update SQL on the cluster primary
3. Update `/etc/pgbouncer/userlist.txt` and `useropts.txt`
4. Reload pgbouncer to apply configuration

**User Definition Example**

```yaml
pg_users:
  - name: dbuser_meta               # Required, username is the only mandatory field
    password: DBUser.Meta           # Optional, can be scram-sha-256 hash or plaintext
    login: true                     # Optional, can login, default: true
    superuser: false                # Optional, is superuser, default: false
    createdb: false                 # Optional, can create database, default: false
    createrole: false               # Optional, can create role, default: false
    inherit: true                   # Optional, inherit privileges, default: true
    replication: false              # Optional, can replicate, default: false
    bypassrls: false                # Optional, bypass RLS, default: false
    pgbouncer: true                 # Optional, add to pgbouncer userlist, default: false
    connlimit: -1                   # Optional, connection limit, -1 means unlimited
    expire_in: 3650                 # Optional, expire in N days (overrides expire_at)
    expire_at: '2030-12-31'         # Optional, specify expiration date
    comment: pigsty admin user      # Optional, user comment
    roles: [dbrole_admin]           # Optional, roles to grant
    parameters: {}                  # Optional, role-level parameters
    pool_mode: transaction          # Optional, pgbouncer user-level pool mode
    pool_connlimit: -1              # Optional, user-level max connections
```

For details, see: [Admin SOP: Create User](/docs/pgsql/admin#create-user)


----------------

## `pgsql-db.yml`

The [`pgsql-db.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-db.yml) playbook is used to add new business databases to existing PostgreSQL clusters.

**Basic Usage**

```bash
./pgsql-db.yml -l pg-meta -e dbname=meta
```

**Wrapper Scripts**

```bash
bin/pgsql-db pg-meta meta  # Create database meta on cluster pg-meta
```

**Workflow**

1. Define database in the config inventory: `all.children.<pg_cluster>.vars.pg_databases[i]`
2. Execute playbook specifying cluster and database name: `pgsql-db.yml -l <pg_cluster> -e dbname=<name>`

The playbook will:
1. Generate database creation SQL at `/pg/tmp/pg-db-{{ database.name }}.sql`
2. Execute database creation/update SQL on the cluster primary
3. If `db.register_datasource` is true, register database as Grafana datasource
4. Update `/etc/pgbouncer/database.txt` and reload pgbouncer

**Database Definition Example**

```yaml
pg_databases:
  - name: meta                      # Required, database name is the only mandatory field
    baseline: cmdb.sql              # Optional, database initialization SQL file path
    pgbouncer: true                 # Optional, add to pgbouncer, default: true
    schemas: [pigsty]               # Optional, additional schemas to create
    extensions:                     # Optional, extensions to install
      - { name: postgis, schema: public }
      - { name: timescaledb }
    comment: pigsty meta database   # Optional, database comment
    owner: postgres                 # Optional, database owner
    template: template1             # Optional, template database
    encoding: UTF8                  # Optional, character encoding
    locale: C                       # Optional, locale setting
    tablespace: pg_default          # Optional, default tablespace
    allowconn: true                 # Optional, allow connections
    revokeconn: false               # Optional, revoke public connect privilege
    register_datasource: true       # Optional, register as Grafana datasource
    connlimit: -1                   # Optional, connection limit
    pool_mode: transaction          # Optional, pgbouncer pool mode
    pool_size: 64                   # Optional, pgbouncer pool size
    pool_size_reserve: 32           # Optional, pgbouncer reserve pool size
```

For details, see: [Admin SOP: Create Database](/docs/pgsql/admin#create-database)


----------------

## `pgsql-monitor.yml`

The [`pgsql-monitor.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-monitor.yml) playbook is used to bring remote PostgreSQL instances into Pigsty's monitoring system.

**Basic Usage**

```bash
./pgsql-monitor.yml -e clsname=pg-foo  # Monitor remote cluster pg-foo
```

**Wrapper Scripts**

```bash
bin/pgmon-add pg-foo              # Monitor a remote pgsql cluster pg-foo
bin/pgmon-add pg-foo pg-bar       # Monitor multiple clusters simultaneously
```

**Configuration**

First, define `pg_exporters` in the `infra` group variables:

```yaml
infra:
  hosts:
    10.10.10.10:
      pg_exporters:  # List all remote instances, assign unique unused local ports
        20001: { pg_cluster: pg-foo, pg_seq: 1, pg_host: 10.10.10.10 }
        20002: { pg_cluster: pg-foo, pg_seq: 2, pg_host: 10.10.10.11 }
```

**Architecture Diagram**

```
     ------ infra ------
     |                 |
     |   prometheus    |            v---- pg-foo-1 ----v
     |       ^         |  metrics   |         ^        |
     |   pg_exporter <-|------------|----  postgres    |
     |   (port: 20001) |            | 10.10.10.10:5432 |
     |       ^         |            ^------------------^
     |       ^         |                      ^
     |       ^         |            v---- pg-foo-2 ----v
     |       ^         |  metrics   |         ^        |
     |   pg_exporter <-|------------|----  postgres    |
     |   (port: 20002) |            | 10.10.10.11:5433 |
     -------------------            ^------------------^
```

**Configurable Parameters**

```yaml
pg_exporter_config: pg_exporter.yml    # pg_exporter config file name
pg_exporter_cache_ttls: '1,10,60,300'  # pg_exporter collector TTL stages
pg_exporter_port: 9630                 # pg_exporter listen port
pg_exporter_params: 'sslmode=disable'  # DSN extra URL parameters
pg_exporter_url: ''                    # Directly override auto-generated DSN
pg_exporter_auto_discovery: true       # Enable auto database discovery
pg_exporter_exclude_database: 'template0,template1,postgres'  # Databases to exclude
pg_exporter_include_database: ''       # Databases to include only
pg_exporter_connect_timeout: 200       # Connection timeout (milliseconds)
pg_monitor_username: dbuser_monitor    # Monitor username
pg_monitor_password: DBUser.Monitor    # Monitor password
```

**Remote Database Setup**

Remote PostgreSQL instances need a monitoring user:

```sql
CREATE USER dbuser_monitor;
COMMENT ON ROLE dbuser_monitor IS 'system monitor user';
ALTER USER dbuser_monitor PASSWORD 'DBUser.Monitor';
GRANT pg_monitor TO dbuser_monitor;
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "monitor";
```

**Limitations**

* Only postgres metrics available
* node, pgbouncer, patroni, haproxy metrics not available

For details, see: [Admin SOP: Monitor RDS](/docs/pgsql/monitor#monitor-rds)


----------------

## `pgsql-migration.yml`

The [`pgsql-migration.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-migration.yml) playbook generates migration manuals and scripts for zero-downtime logical replication-based migration of existing PostgreSQL clusters.

**Basic Usage**

```bash
./pgsql-migration.yml -e@files/migration/pg-meta.yml
```

**Workflow**

1. Define migration task configuration file (e.g., `files/migration/pg-meta.yml`)
2. Execute playbook to generate migration manual and scripts
3. Follow the manual to execute scripts step by step for migration

**Migration Task Definition Example**

```yaml
# files/migration/pg-meta.yml
context_dir: ~/migration           # Migration manual and scripts output directory
src_cls: pg-meta                   # Source cluster name (required)
src_db: meta                       # Source database name (required)
src_ip: 10.10.10.10                # Source cluster primary IP (required)
dst_cls: pg-test                   # Target cluster name (required)
dst_db: test                       # Target database name (required)
dst_ip: 10.10.10.11                # Target cluster primary IP (required)

# Optional parameters
pg_dbsu: postgres
pg_replication_username: replicator
pg_replication_password: DBUser.Replicator
pg_admin_username: dbuser_dba
pg_admin_password: DBUser.DBA
pg_monitor_username: dbuser_monitor
pg_monitor_password: DBUser.Monitor
```

For details, see: [Admin SOP: Migrate Cluster](/docs/pgsql/migration/)


----------------

## `pgsql-pitr.yml`

The [`pgsql-pitr.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-pitr.yml) playbook performs PostgreSQL Point-In-Time Recovery (PITR).

**Basic Usage**

```bash
# Recover to latest state (end of WAL archive stream)
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": {}}'

# Recover to specific point in time
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": {"time": "2025-07-13 10:00:00+00"}}'

# Recover to specific LSN
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": {"lsn": "0/4001C80"}}'

# Recover to specific transaction ID
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": {"xid": "250000"}}'

# Recover to named restore point
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": {"name": "some_restore_point"}}'

# Recover from another cluster's backup
./pgsql-pitr.yml -l pg-test -e '{"pg_pitr": {"cluster": "pg-meta"}}'
```

**PITR Task Parameters**

```yaml
pg_pitr:                           # Define PITR task
  cluster: "pg-meta"               # Source cluster name (for restoring from another cluster's backup)
  type: latest                     # Recovery target type: time, xid, name, lsn, immediate, latest
  time: "2025-01-01 10:00:00+00"   # Recovery target: point in time
  name: "some_restore_point"       # Recovery target: named restore point
  xid: "100000"                    # Recovery target: transaction ID
  lsn: "0/3000000"                 # Recovery target: log sequence number
  set: latest                      # Backup set to restore from, default: latest
  timeline: latest                 # Target timeline, can be integer, default: latest
  exclusive: false                 # Exclude target point, default: false
  action: pause                    # Post-recovery action: pause, promote, shutdown
  archive: false                   # Keep archive settings, default: false
  backup: false                    # Backup existing data to /pg/data-backup before restore? default: false
  db_include: []                   # Include only these databases
  db_exclude: []                   # Exclude these databases
  link_map: {}                     # Tablespace link mapping
  process: 4                       # Parallel recovery processes
  repo: {}                         # Recovery source repo configuration
  data: /pg/data                   # Recovery data directory
  port: 5432                       # Recovery instance listen port
```

**Subtasks**

This playbook contains the following subtasks:

```yaml
# down                 : stop HA and shutdown patroni and postgres
#   - pause            : pause patroni auto failover
#   - stop             : stop patroni and postgres services
#     - stop_patroni   : stop patroni service
#     - stop_postgres  : stop postgres service
#
# pitr                 : execute PITR recovery process
#   - config           : generate pgbackrest config and recovery script
#   - backup           : perform optional backup to original data
#   - restore          : run pgbackrest restore command
#   - recovery         : start postgres and complete recovery
#   - verify           : verify recovered cluster control data
#
# up                   : start postgres/patroni and restore HA
#   - etcd             : clean etcd metadata before startup
#   - start            : start patroni and postgres services
#     - start_postgres : start postgres service
#     - start_patroni  : start patroni service
#   - resume           : resume patroni auto failover
```

**Recovery Target Types**

| Type | Description | Example |
|------|-------------|---------|
| `latest` | Recover to end of WAL archive stream (latest state) | `{"pg_pitr": {}}` |
| `time` | Recover to specific point in time | `{"pg_pitr": {"time": "2025-07-13 10:00:00"}}` |
| `xid` | Recover to specific transaction ID | `{"pg_pitr": {"xid": "250000"}}` |
| `name` | Recover to named restore point | `{"pg_pitr": {"name": "before_ddl"}}` |
| `lsn` | Recover to specific LSN | `{"pg_pitr": {"lsn": "0/4001C80"}}` |
| `immediate` | Stop immediately after reaching consistent state | `{"pg_pitr": {"type": "immediate"}}` |

For details, see: [Backup & Recovery Tutorial](/docs/pgsql/backup/restore/)
