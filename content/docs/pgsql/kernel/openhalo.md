---
title: openHalo
weight: 2110
description: MySQL-compatible Postgres 14 branch
icon: fa-solid fa-sync
module: [PGSQL]
categories: [Concept]
---

[OpenHalo](https://www.openhalo.org/) is an open-source PostgreSQL kernel that provides MySQL wire-protocol compatibility.

openHalo is based on PostgreSQL 14.18 and provides wire-level compatibility with MySQL 5.7.32-log / 8.0. Pigsty delivers it through `pg_mode: mysql` and the `openhalo` package alias.

Pigsty supports OpenHalo deployment on all supported Linux platforms.

- RPM build spec: [github.com/pgsty/rpm/rpmbuild/specs/openhalodb.spec](https://github.com/pgsty/rpm/blob/main/rpmbuild/SPECS/openhalodb.spec)
- DEB build spec: [github.com/pgsty/deb/debbuild/openhalodb](https://github.com/pgsty/deb/tree/main/debbuild/openhalodb)


------

## Quick Start

Use Pigsty's [**standard installation flow**](/docs/setup/install) with the [`mysql`](/docs/conf/mysql) template.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
./configure -c mysql    # Use MySQL (openHalo) template
./deploy.yml            # Install (change passwords in pigsty.yml before production use)
```


------

## Cluster Config

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - {name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: pigsty admin user }
      - {name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer for meta database }
    pg_databases:
      - {name: postgres, extensions: [ aux_mysql ]} # mysql-compatible database
      - {name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty]}
    pg_hba_rules:
      - {user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes'}
    node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # full backup at 1 AM daily

    # OpenHalo specific settings
    pg_mode: mysql
    pg_version: 14
    pg_packages: [ openhalo, pgsql-common ]
```

OpenHalo provides a dedicated extension, `aux_mysql`, which includes functions and types needed for MySQL compatibility. Enable it in the `postgres` database to get full compatibility behavior.

- aux_mysql 1.5: MySQL Supplementary Extension
- `/usr/halo-14/share/postgresql/extension/aux_mysql.control`
- `$libdir/mysm`, `mysm.so`


------

## Usage

For MySQL access, connections still use the `postgres` database. The MySQL "database" concept maps to PostgreSQL "schema". So `use mysql` maps to the `mysql` schema in the `postgres` database.

MySQL usernames/passwords are the same PostgreSQL credentials.

### Client Access

OpenHalo listens on port `3306` for MySQL wire protocol clients.

Pigsty's [`conf/mysql`](https://github.com/pgsty/pigsty/blob/main/conf/mysql.yml) installs a MySQL client by default.

```bash
mysql -h 127.0.0.1 -u dbuser_dba
```

At present, OpenHalo upstream reports Navicat works normally on this port, while IntelliJ DataGrip may fail.


--------

## Compatibility Parameters

Pigsty defaults `database_compat_mode` to `mysql`. You can further tune compatibility behavior with settings like:

```ini
mysql.listener_on = true                        # enable MySQL listener; restart required
mysql.port = 3306                               # second_port for MySQL mode; restart required
mysql.halo_mysql_version = '5.7.32-log'         # restart required
mysql.ci_collation = true                       # restart required
mysql.explicit_defaults_for_timestamp = false   # restart required
mysql.auto_rollback_tx_on_error = false         # restart required
```


------

## Patch Notes

The [OpenHalo](https://github.com/pgsty/openHalo) kernel packaged by Pigsty is based on [HaloTech-Co-Ltd/openHalo](https://github.com/HaloTech-Co-Ltd/openHalo) with small adjustments:

- Restore default database name from `halo0root` to `postgres`
- Remove `1.0.` prefix in the default version string, keeping `14.18`
- Adjust default config to enable MySQL compatibility and listen on `3306`

Pigsty does not provide warranty coverage for OpenHalo kernel behavior. Kernel-specific issues should be addressed with the upstream vendor.

> **Warning**: This kernel is currently in beta1 stage; evaluate risks carefully before production use.
