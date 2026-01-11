---
title: Database
weight: 1602
description: Database refers to the logical object created using the SQL command `CREATE
  DATABASE` within a database cluster.
icon: fa-solid fa-coins
module: [PGSQL]
categories: [Reference]
tags: [Database]
---


> In this context, Database refers to the logical object created using the SQL command `CREATE DATABASE` within a database cluster.

A PostgreSQL server can serve multiple **databases** simultaneously. In Pigsty, you can [define](#define-database) the required databases in the cluster configuration.

Pigsty will modify and customize the default template database `template1`, creating default schemas, installing default extensions, and configuring default privileges. Newly created databases will inherit these settings from `template1` by default.

By default, all business databases will be added to the Pgbouncer connection pool in a 1:1 manner; `pg_exporter` will use an **auto-discovery** mechanism to find all business databases and monitor objects within them.


----------------

## Define Database

Business databases are defined in the database cluster parameter [`pg_databases`](/docs/pgsql/param#pg_databases), which is an array of database definition objects.
Databases in the array are created sequentially according to the **definition order**, so later defined databases can use previously defined databases as **templates**.

Below is the database definition for the default `pg-meta` cluster in the Pigsty demo environment:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases:
      - { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [{name: postgis, schema: public}, {name: timescaledb}]}
      - { name: grafana  ,owner: dbuser_grafana  ,revokeconn: true ,comment: grafana primary database }
      - { name: bytebase ,owner: dbuser_bytebase ,revokeconn: true ,comment: bytebase primary database }
      - { name: kong     ,owner: dbuser_kong     ,revokeconn: true ,comment: kong the api gateway database }
      - { name: gitea    ,owner: dbuser_gitea    ,revokeconn: true ,comment: gitea meta database }
      - { name: wiki     ,owner: dbuser_wiki     ,revokeconn: true ,comment: wiki meta database }
      - { name: noco     ,owner: dbuser_noco     ,revokeconn: true ,comment: nocodb database }
```

Each database definition is an object that may include the following fields, using the `meta` database as an example:

```yaml
- name: meta                      # REQUIRED, `name` is the only mandatory field of a database definition
  baseline: cmdb.sql              # optional, database sql baseline path (relative path among ansible search path, e.g. files/)
  pgbouncer: true                 # optional, add this database to pgbouncer database list? true by default
  schemas: [pigsty]               # optional, additional schemas to be created, array of schema names
  extensions:                     # optional, additional extensions to be installed: array of extension objects
    - { name: postgis , schema: public }  # can specify which schema to install the extension in, or leave it unspecified (will install in the first schema of search_path)
    - { name: timescaledb }               # for example, some extensions create and use fixed schemas, so no schema specification is needed.
  comment: pigsty meta database   # optional, comment string for this database
  owner: postgres                 # optional, database owner, postgres by default
  template: template1             # optional, which template to use, template1 by default, target must be a template database
  encoding: UTF8                  # optional, database encoding, UTF8 by default (MUST same as template database)
  locale: C                       # optional, database locale, C by default (MUST same as template database)
  lc_collate: C                   # optional, database collate, C by default (MUST same as template database), no reason not to recommend changing.
  lc_ctype: C                     # optional, database ctype, C by default (MUST same as template database)
  tablespace: pg_default          # optional, default tablespace, 'pg_default' by default
  allowconn: true                 # optional, allow connection, true by default. false will disable connect at all
  revokeconn: false               # optional, revoke public connection privilege. false by default, when set to true, CONNECT privilege will be revoked from users other than owner and admin
  register_datasource: true       # optional, register this database to grafana datasources? true by default, explicitly set to false to skip registration
  connlimit: -1                   # optional, database connection limit, default -1 disable limit, set to positive integer will limit connections
  pool_auth_user: dbuser_meta     # optional, all connections to this pgbouncer database will be authenticated using this user (only useful when pgbouncer_auth_query is enabled)
  pool_mode: transaction          # optional, pgbouncer pool mode at database level, default transaction
  pool_size: 64                   # optional, pgbouncer pool size at database level, default 64
  pool_size_reserve: 32           # optional, pgbouncer pool size reserve at database level, default 32, when default pool is insufficient, can request at most this many burst connections
  pool_size_min: 0                # optional, pgbouncer pool size min at database level, default 0
  pool_max_db_conn: 100           # optional, max database connections at database level, default 100
```

The only required field is `name`, which should be a valid and unique database name in the current PostgreSQL cluster, other parameters have reasonable defaults.

- `name`: Database name, **required**.
- `baseline`: SQL file path (Ansible search path, usually in `files`), used to initialize database content.
- `owner`: Database owner, default is `postgres`
- `template`: Template used when creating the database, default is `template1`
- `encoding`: Database default character encoding, default is `UTF8`, default is consistent with the instance. It is recommended not to configure and modify.
- `locale`: Database default locale, default is `C`, it is recommended not to configure, keep consistent with the instance.
- `lc_collate`: Database default locale string collation, default is same as instance setting, it is recommended not to modify, must be consistent with template database. It is strongly recommended not to configure, or configure to `C`.
- `lc_ctype`: Database default LOCALE, default is same as instance setting, it is recommended not to modify or set, must be consistent with template database. It is recommended to configure to C or `en_US.UTF8`.
- `allowconn`: Whether to allow connection to the database, default is `true`, not recommended to modify.
- `revokeconn`: Whether to revoke connection privilege to the database? Default is `false`. If `true`, `PUBLIC CONNECT` privilege on the database will be revoked. Only default users (`dbsu|monitor|admin|replicator|owner`) can connect. In addition, `admin|owner` will have GRANT OPTION, can grant connection privileges to other users.
- `tablespace`: Tablespace associated with the database, default is `pg_default`.
- `connlimit`: Database connection limit, default is `-1`, meaning no limit.
- `extensions`: Object array, each object defines an **extension** in the database, and the **schema** in which it is installed.
- `parameters`: KV object, each KV defines a parameter that needs to be modified for the database through `ALTER DATABASE`.
- `pgbouncer`: Boolean option, whether to add this database to Pgbouncer. All databases will be added to Pgbouncer list unless explicitly specified as `pgbouncer: false`.
- `comment`: Database comment information.
- `pool_auth_user`: When [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query) is enabled, all connections to this pgbouncer database will use the user specified here to execute authentication queries. You need to use a user with access to the `pg_shadow` table.
- `pool_mode`: Database level pgbouncer pool mode, default is transaction, i.e., transaction pooling. If left empty, will use [`pgbouncer_poolmode`](/docs/pgsql/param#pgbouncer_poolmode) parameter as default value.
- `pool_size`: Database level pgbouncer default pool size, default is 64
- `pool_size_reserve`: Database level pgbouncer pool size reserve, default is 32, when default pool is insufficient, can request at most this many burst connections.
- `pool_size_min`: Database level pgbouncer pool size min, default is 0
- `pool_max_db_conn`: Database level pgbouncer connection pool max database connections, default is 100

Newly created databases are forked from the `template1` database by default. This template database will be customized during the [`PG_PROVISION`](/docs/pgsql/param#pg_provision) phase:
configured with extensions, schemas, and default privileges, so newly created databases will also inherit these configurations unless you explicitly use another database as a template.

For database access privileges, refer to [ACL: Database Privilege](/docs/concept/sec/ac/#database-privileges) section.


----------------

## Create Database

Databases [defined](#define-database) in [`pg_databases`](/docs/pgsql/param#pg_databases) will be automatically created during cluster initialization.
If you wish to [create database](/docs/pgsql/admin#create-database) on an existing cluster, you can use the `bin/pgsql-db` wrapper script.
Add new database definition to `all.children.<cls>.pg_databases`, and create that database with the following command:

```bash
bin/pgsql-db <cls> <dbname>    # pgsql-db.yml -l <cls> -e dbname=<dbname>
```

Here are some considerations when creating a new database:

The create database playbook is idempotent by default, however when you use `baseline` scripts, it may not be: in this case, it's usually not recommended to re-run this on existing databases unless you're sure the provided baseline SQL is also idempotent.

We don't recommend manually creating new databases, especially when you're using the default pgbouncer connection pool: unless you're willing to manually maintain the Pgbouncer database list and keep it consistent with PostgreSQL.
When creating new databases using the `pgsql-db` tool or `pgsql-db.yml` playbook, this database will also be added to the [Pgbouncer Database](#pgbouncer-database) list.

If your database definition has a non-trivial `owner` (default is dbsu `postgres`), make sure the owner user exists before creating the database.
Best practice is always to [create](/docs/pgsql/admin#create-user) [users](/docs/pgsql/config/user) before creating databases.



----------------

## Pgbouncer Database

Pigsty will configure and enable a Pgbouncer connection pool for PostgreSQL instances in a 1:1 manner by default, communicating via `/var/run/postgresql` Unix Socket.

Connection pools can optimize short connection performance, reduce concurrency contention, avoid overwhelming the database with too many connections, and provide additional flexibility during database migration.

Pigsty adds all databases in [`pg_databases`](/docs/pgsql/param#pg_databases) to pgbouncer's database list by default.
You can disable pgbouncer connection pool support for a specific database by explicitly setting `pgbouncer: false` in the database [definition](#define-database).

The Pgbouncer database list is defined in `/etc/pgbouncer/database.txt`, and connection pool parameters from the database definition are reflected here:

```yaml
meta                        = host=/var/run/postgresql mode=session
grafana                     = host=/var/run/postgresql mode=transaction
bytebase                    = host=/var/run/postgresql auth_user=dbuser_meta
kong                        = host=/var/run/postgresql pool_size=32 reserve_pool=64
gitea                       = host=/var/run/postgresql min_pool_size=10
wiki                        = host=/var/run/postgresql
noco                        = host=/var/run/postgresql
mongo                       = host=/var/run/postgresql
```

When you [create databases](#create-database), the Pgbouncer database list definition file will be refreshed and take effect through online configuration reload, normally without affecting existing connections.

Pgbouncer runs with the same `dbsu` as PostgreSQL, defaulting to the `postgres` os user. You can use the `pgb` alias to access pgbouncer management functions using dbsu.

Pigsty also provides a utility function `pgb-route`, which can quickly switch pgbouncer database traffic to other nodes in the cluster for zero-downtime migration:

```bash
# route pgbouncer traffic to another cluster member
function pgb-route(){
  local ip=${1-'\/var\/run\/postgresql'}
  sed -ie "s/host=[^[:space:]]\+/host=${ip}/g" /etc/pgbouncer/pgbouncer.ini
  cat /etc/pgbouncer/pgbouncer.ini
}
```
