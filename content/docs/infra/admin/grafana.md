---
title: "Grafana High Availability: Using PostgreSQL Backend"
linkTitle: Grafana HA
weight: 4000
description: Use PostgreSQL instead of SQLite as Grafana's remote storage backend for better performance and availability.
icon: fa-solid fa-microscope
module: [INFRA]
categories: [Task]
---


You can use PostgreSQL as Grafana's backend database.

This is a great opportunity to understand Pigsty's deployment system. By completing this tutorial, you'll learn:

* How to [create a new database cluster](#create-database-cluster)
* How to [create new business users](#create-grafana-business-user) in an existing cluster
* How to [create new business databases](#create-grafana-business-database) in an existing cluster
* How to [access databases](#use-grafana-business-database) created by Pigsty
* How to [manage Grafana dashboards](#manage-grafana-dashboards)
* How to manage [PostgreSQL datasources](#manage-postgres-datasources) in Grafana
* How to [upgrade Grafana database](#one-step-grafana-upgrade) in one step



--------

## TL;DR

```bash
vi pigsty.yml # Uncomment DB/User definitions: dbuser_grafana  grafana
bin/pgsql-user  pg-meta  dbuser_grafana
bin/pgsql-db    pg-meta  grafana

psql postgres://dbuser_grafana:DBUser.Grafana@meta:5436/grafana -c \
  'CREATE TABLE t(); DROP TABLE t;' # Verify connection string works

vi /etc/grafana/grafana.ini # Modify [database] type url
systemctl restart grafana-server
```




--------

## Create Database Cluster

We can define a new database `grafana` on `pg-meta`, or create a dedicated Grafana database cluster `pg-grafana` on new nodes.

### Define Cluster

To create a new dedicated cluster `pg-grafana` on machines `10.10.10.11` and `10.10.10.12`, use this config:

```yaml
pg-grafana:
  hosts:
    10.10.10.11: {pg_seq: 1, pg_role: primary}
    10.10.10.12: {pg_seq: 2, pg_role: replica}
  vars:
    pg_cluster: pg-grafana
    pg_databases:
      - name: grafana
        owner: dbuser_grafana
        revokeconn: true
        comment: grafana primary database
    pg_users:
      - name: dbuser_grafana
        password: DBUser.Grafana
        pgbouncer: true
        roles: [dbrole_admin]
        comment: admin user for grafana database
```

### Create Cluster

Use this command to create the `pg-grafana` cluster: [`pgsql.yml`](p-pgsql.yml).

```bash
./pgsql.yml -l pg-grafana    # Initialize pg-grafana cluster
```

This command is the Ansible Playbook [`pgsql.yml`](/docs/pgsql/playbook#pgsqlyml) for creating database clusters.

Users and databases defined in [`pg_users`](/docs/pgsql/config#pg_users) and [`pg_databases`](/docs/pgsql/config#pg_databases) are automatically created during cluster initialization. With this config, after cluster creation (without DNS), you can [access](/docs/concept/ac) the database using these connection strings (any one works):

```bash
postgres://dbuser_grafana:DBUser.Grafana@10.10.10.11:5432/grafana # Direct primary connection
postgres://dbuser_grafana:DBUser.Grafana@10.10.10.11:5436/grafana # Direct default service
postgres://dbuser_grafana:DBUser.Grafana@10.10.10.11:5433/grafana # Primary read-write service

postgres://dbuser_grafana:DBUser.Grafana@10.10.10.12:5432/grafana # Direct primary connection
postgres://dbuser_grafana:DBUser.Grafana@10.10.10.12:5436/grafana # Direct default service
postgres://dbuser_grafana:DBUser.Grafana@10.10.10.12:5433/grafana # Primary read-write service
```

Since Pigsty is installed on a **single meta node** by default, the following steps will create Grafana's user and database on the existing `pg-meta` cluster, not the `pg-grafana` cluster created here.



--------

## Create Grafana Business User

The usual convention for business object management: create user first, then database.
Because if the database has an `owner` configured, it depends on the corresponding user.

### Define User

To create user `dbuser_grafana` on the `pg-meta` cluster, first add this user definition to `pg-meta`'s [cluster definition](#define-cluster):

Location: `all.children.pg-meta.vars.pg_users`

```yaml
- name: dbuser_grafana
  password: DBUser.Grafana
  comment: admin user for grafana database
  pgbouncer: true
  roles: [ dbrole_admin ]
```

> If you define a different password here, replace the corresponding parameter in subsequent steps

### Create User

Use this command to create the `dbuser_grafana` user (either works):

```bash
bin/pgsql-user pg-meta dbuser_grafana # Create `dbuser_grafana` user on pg-meta cluster
```

This actually calls the Ansible Playbook [`pgsql-user.yml`](/docs/pgsql/playbook#pgsql-useryml) to create the user:

```bash
./pgsql-user.yml -l pg-meta -e pg_user=dbuser_grafana  # Ansible
```

The `dbrole_admin` role has permission to execute DDL changes in the database, which is exactly what Grafana needs.




--------

## Create Grafana Business Database

### Define Database

Creating a business database follows the same pattern as users. First add the new database `grafana` [definition](#define-cluster) to `pg-meta`'s cluster definition.

Location: `all.children.pg-meta.vars.pg_databases`

```yaml
- { name: grafana, owner: dbuser_grafana, revokeconn: true }
```

### Create Database

Use this command to create the `grafana` database (either works):

```bash
bin/pgsql-db pg-meta grafana # Create `grafana` database on `pg-meta` cluster
```

This actually calls the Ansible Playbook [`pgsql-db.yml`](/docs/pgsql/playbook#pgsql-dbyml) to create the database:

```bash
./pgsql-db.yml -l pg-meta -e pg_database=grafana # Actual Ansible playbook executed
```




--------

## Use Grafana Business Database

### Verify Connection String Reachability

You can access the database using different [services](/docs/concept/svc) or [access](/docs/concept/ac) methods, for example:

```bash
postgres://dbuser_grafana:DBUser.Grafana@meta:5432/grafana # Direct connection
postgres://dbuser_grafana:DBUser.Grafana@meta:5436/grafana # Default service
postgres://dbuser_grafana:DBUser.Grafana@meta:5433/grafana # Primary service
```

Here, we'll use the [Default service](/docs/concept/svc#default-service) that directly accesses the primary through load balancer.

First verify the connection string is reachable and has DDL execution permissions:

```bash
psql postgres://dbuser_grafana:DBUser.Grafana@meta:5436/grafana -c \
  'CREATE TABLE t(); DROP TABLE t;'
```

### Directly Modify Grafana Config

To make Grafana use a Postgres datasource, edit `/etc/grafana/grafana.ini` and modify the config:

```ini
[database]
;type = sqlite3
;host = 127.0.0.1:3306
;name = grafana
;user = root
# If the password contains # or ; you have to wrap it with triple quotes. Ex """#password;"""
;password =
;url =
```

Change the default config to:

```ini
[database]
type = postgres
url =  postgres://dbuser_grafana:DBUser.Grafana@meta/grafana
```

Then restart Grafana:

```bash
systemctl restart grafana-server
```

When you see activity in the newly added [`grafana`](http://g.pigsty/d/pgsql-database/pgsql-database?var-cls=pg-meta&var-ins=pg-meta-1&var-datname=grafana) database from the monitoring system, Grafana is now using Postgres as its primary backend database.
But there's a new issue—the original Dashboards and Datasources in Grafana have disappeared! You need to re-import [dashboards](#manage-grafana-dashboards) and [Postgres datasources](#manage-postgres-datasources).




--------

## Manage Grafana Dashboards

As admin user, navigate to the `files/grafana` directory under the Pigsty directory and run `grafana.py init` to reload Pigsty dashboards.

```bash
cd ~/pigsty/files/grafana
./grafana.py init    # Initialize Grafana dashboards using Dashboards in current directory
```

Execution result:

```bash
vagrant@meta:~/pigsty/files/grafana
$ ./grafana.py init
Grafana API: admin:pigsty @ http://10.10.10.10:3000
init dashboard : home.json
init folder pgcat
init dashboard: pgcat / pgcat-table.json
init dashboard: pgcat / pgcat-bloat.json
init dashboard: pgcat / pgcat-query.json
init folder pgsql
init dashboard: pgsql / pgsql-replication.json
...
```

This script detects the current environment (defined in `~/pigsty` during installation), gets Grafana access info, and replaces dashboard URL placeholder domains (`*.pigsty`) with actual domains used.

```bash
export GRAFANA_ENDPOINT=http://10.10.10.10:3000
export GRAFANA_USERNAME=admin
export GRAFANA_PASSWORD=pigsty

export NGINX_UPSTREAM_YUMREPO=yum.pigsty
export NGINX_UPSTREAM_CONSUL=c.pigsty
export NGINX_UPSTREAM_PROMETHEUS=p.pigsty
export NGINX_UPSTREAM_ALERTMANAGER=a.pigsty
export NGINX_UPSTREAM_GRAFANA=g.pigsty
export NGINX_UPSTREAM_HAPROXY=h.pigsty
```

As a side note, use `grafana.py clean` to clear target dashboards, and `grafana.py load` to load all dashboards from the current directory. When Pigsty dashboards change, use these two commands to upgrade all dashboards.

## Manage Postgres Datasources

When creating a new PostgreSQL cluster with [`pgsql.yml`](/docs/pgsql/playbook#pgsqlyml) or a new business database with [`pgsql-db.yml`](/docs/pgsql/playbook#pgsql-dbyml), Pigsty registers new PostgreSQL datasources in Grafana. You can directly access target database instances through Grafana using the default monitoring user. Most `pgcat` application features depend on this.

To register Postgres databases, use the `register_grafana` task in [`pgsql.yml`](/docs/pgsql/playbook#pgsqlyml):

```bash
./pgsql.yml -t register_grafana             # Re-register all Postgres datasources in current environment
./pgsql.yml -t register_grafana -l pg-test  # Re-register all databases in pg-test cluster
```





--------

## One-Step Grafana Upgrade

You can directly modify the Pigsty config file to change Grafana's backend datasource, completing the database switch in one step. Edit the [`grafana_pgurl`](/docs/infra/param#grafana_pgurl) parameter in `pigsty.yml`:

```yaml
grafana_pgurl: postgres://dbuser_grafana:DBUser.Grafana@meta:5436/grafana
```

Then re-run the `grafana` task from [`infra.yml`](/docs/infra/playbook#infrayml) to complete the Grafana upgrade:

```bash
./infra.yml -t grafana
```

