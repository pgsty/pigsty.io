---
title: OpenHalo
weight: 2110
description: MySQL compatible Postgres 14 fork
icon: fa-solid fa-sync
module: [PGSQL]
categories: [Concept]
---

[OpenHalo](https://www.openhalo.org/) is an open-source PostgreSQL kernel that provides MySQL wire protocol compatibility.

OpenHalo is based on PostgreSQL 14.10 kernel version and provides wire protocol compatibility with MySQL 5.7.32-log / 8.0 versions.

Pigsty provides deployment support for OpenHalo on all supported Linux platforms.


------

## Quick Start

Use Pigsty's [**standard installation process**](/docs/setup/install) with the [`mysql`](https://github.com/pgsty/pigsty/blob/main/conf/mysql.yml) configuration template.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
./configure -c mysql    # Use MySQL (openHalo) configuration template
./deploy.yml            # Install, for production deployment please modify passwords in pigsty.yml first
```

For production deployment, ensure you modify the password parameters in the `pigsty.yml` configuration file before running the install playbook.


------

## Configuration

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
      - {name: postgres, extensions: [aux_mysql]} # mysql compatible database
      - {name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty]}
    pg_hba_rules:
      - {user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes'}
    node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # Full backup at 1 AM daily

    # OpenHalo specific settings
    pg_mode: mysql                    # HaloDB's MySQL compatibility mode
    pg_version: 14                    # Current HaloDB compatible PG major version 14
    pg_packages: [ openhalodb, pgsql-common ]  # Install openhalodb instead of postgresql kernel
```


------

## Usage

When accessing MySQL, the actual connection uses the `postgres` database. Please note that the concept of "database" in MySQL actually corresponds to "Schema" in PostgreSQL. Therefore, `use mysql` actually uses the `mysql` Schema within the `postgres` database.

The username and password for MySQL are the same as in PostgreSQL. You can manage users and permissions using standard PostgreSQL methods.

### Client Access

OpenHalo provides MySQL wire protocol compatibility, listening on port 3306 by default, allowing MySQL clients and drivers to connect directly.

Pigsty's [`conf/mysql`](https://github.com/pgsty/pigsty/blob/main/conf/mysql.yml) configuration installs the `mysql` client tool by default.

You can access MySQL using the following command:

```bash
mysql -h 127.0.0.1 -u dbuser_dba
```

Currently, OpenHalo officially ensures Navicat can properly access this MySQL port, but Intellij IDEA's DataGrip access will cause errors.


------

## Modification Notes

The [OpenHalo](https://github.com/pgsty/openHalo) kernel installed by Pigsty is based on the [HaloTech-Co-Ltd/openHalo](https://github.com/HaloTech-Co-Ltd/openHalo) kernel with minor modifications:

- Changed the default database name from `halo0root` back to `postgres`
- Removed the `1.0.` prefix from the default version number, restoring it to `14.10`
- Modified the default configuration file to enable MySQL compatibility and listen on port `3306` by default

Please note that Pigsty does not provide any warranty for using the OpenHalo kernel. Any issues or requirements encountered when using this kernel should be addressed with the original vendor.

> **Warning**: Currently experimental - thoroughly evaluate before production use.

