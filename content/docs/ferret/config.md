---
title: Configuration
linkTitle: Configuration
weight: 4020
description: Configure the FerretDB module and define cluster topology
icon: fa-solid fa-code
categories: [Reference]
---

Before deploying a FerretDB cluster, you need to define it in the configuration inventory using the relevant [parameters](/docs/ferret/param).


----------------

## FerretDB Cluster

The following example uses the default single-node `pg-meta` cluster's `postgres` database as FerretDB's underlying storage:

```yaml
all:
  children:

    #----------------------------------#
    # ferretdb for mongodb on postgresql
    #----------------------------------#
    # ./mongo.yml -l ferret
    ferret:
      hosts:
        10.10.10.10: { mongo_seq: 1 }
      vars:
        mongo_cluster: ferret
        mongo_pgurl: 'postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/postgres'
```

Here, [`mongo_cluster`](/docs/ferret/param#mongo_cluster) and [`mongo_seq`](/docs/ferret/param#mongo_seq) are essential identity parameters. For FerretDB, [`mongo_pgurl`](/docs/ferret/param#mongo_pgurl) is also required to specify the underlying PostgreSQL location.

Note that the `mongo_pgurl` parameter requires a PostgreSQL **superuser**. This example uses the default `dbuser_dba`; in production you can switch to a dedicated superuser.

Note that FerretDB's [authentication](https://docs.ferretdb.io/security/authentication/) is entirely based on PostgreSQL. You can create other regular users using either FerretDB or PostgreSQL.


----------------

## PostgreSQL Cluster

FerretDB 2.0+ requires an extension: [DocumentDB](/ext/e/documentdb), which depends on several other extensions. Here's a template for creating a PostgreSQL cluster for FerretDB:

```yaml
all:
  children:

    #----------------------------------#
    # pgsql (singleton on current node)
    #----------------------------------#
    # postgres cluster: pg-meta
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: pg-meta
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
        pg_databases:
          - { name: postgres, extensions: [ documentdb, postgis, vector, pg_cron, rum ]}
        pg_hba_rules:
          - { user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes' }
          # WARNING: demo/dev only. Avoid world access for dbsu in production.
          - { user: postgres    , db: all ,addr: world ,auth: pwd ,title: 'dbsu password access everywhere' }
          - { user: all         , db: all ,addr: localhost ,order: 1 ,auth: trust ,title: 'documentdb localhost trust access' }
          - { user: all         , db: all ,addr: local     ,order: 1 ,auth: trust ,title: 'documentdb local trust access' }
          - { user: all         , db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_parameters:
          cron.database_name: postgres
        pg_extensions:
          - documentdb, postgis, pgvector, pg_cron, rum
        pg_libs: 'pg_documentdb, pg_documentdb_core, pg_documentdb_extended_rum, pg_cron, pg_stat_statements, auto_explain'
```

Key configuration points:

- **User configuration**: The user referenced by `mongo_pgurl` must have superuser privileges (this example uses `dbuser_dba`)
- **Database configuration**: The database needs to have the `documentdb` extension and its dependencies installed
- **HBA rules**: Include `localhost/local` `trust` rules for documentdb local access, and password auth for business intranet ranges
- **Shared libraries**: preload `pg_documentdb`, `pg_documentdb_core`, and `pg_documentdb_extended_rum` in `pg_libs`


----------------

## High Availability

You can use [Services](/docs/pgsql/service/) to connect to a highly available PostgreSQL cluster, deploy multiple FerretDB instance replicas, and bind an L2 VIP for the FerretDB layer to achieve high availability.

```yaml
ferret:
  hosts:
    10.10.10.45: { mongo_seq: 1 }
    10.10.10.46: { mongo_seq: 2 }
    10.10.10.47: { mongo_seq: 3 }
  vars:
    mongo_cluster: ferret
    mongo_pgurl: 'postgres://dbuser_dba:DBUser.DBA@10.10.10.3:5436/postgres'
    vip_enabled: true
    vip_vrid: 128
    vip_address: 10.10.10.99
    vip_interface: eth1
```

In this high-availability configuration:

- **Multi-instance deployment**: Deploy FerretDB instances on three nodes, with all instances connecting to the same PostgreSQL backend
- **VIP configuration**: Use Keepalived to bind the virtual IP `10.10.10.99`, enabling failover at the FerretDB layer
- **Service address**: Use PostgreSQL's service address (port 5436 is typically the primary service), ensuring connections go to the correct primary

With this configuration, clients can connect to FerretDB through the VIP address. Even if one FerretDB instance fails, the VIP will automatically float to another available instance.
