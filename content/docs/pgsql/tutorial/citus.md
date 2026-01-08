---
title: 'Citus: Deploy HA Citus Cluster'
date: 2025-01-11
weight: 2103
description: How to deploy a Citus high-availability distributed cluster?
icon: fa-solid fa-arrow-right-from-bracket
module: [PGSQL]
categories: [Task, Tutorial, Concept]
---

Citus is a PostgreSQL extension that transforms PostgreSQL into a distributed database, enabling horizontal scaling across multiple nodes to handle large amounts of data and queries.

Patroni v3.0+ provides native high-availability support for Citus, simplifying the setup of Citus clusters. Pigsty also provides native support for this.

- [What is Citus](https://docs.citusdata.com/en/stable/get_started/what_is_citus.html)
- [Patroni Citus Support](https://patroni.readthedocs.io/en/latest/citus.html)

> Note: The current Citus version (12.1.6) supports PostgreSQL 16, 15, and 14, but not PostgreSQL 17 yet. There is no official ARM64 support. Pigsty extension repo provides Citus ARM64 packages, but use with caution on ARM architecture.


--------

## Citus Cluster

Pigsty natively supports Citus. See [`conf/citus.yml`](https://github.com/Vonng/pigsty/blob/main/conf/citus.yml) for reference.

Here we use the Pigsty 4-node sandbox to define a Citus cluster `pg-citus`, which includes a 2-node coordinator cluster `pg-citus0` and two Worker clusters `pg-citus1` and `pg-citus2`.

```yaml
pg-citus:
  hosts:
    10.10.10.10: { pg_group: 0, pg_cluster: pg-citus0 ,pg_vip_address: 10.10.10.2/24 ,pg_seq: 1, pg_role: primary }
    10.10.10.11: { pg_group: 0, pg_cluster: pg-citus0 ,pg_vip_address: 10.10.10.2/24 ,pg_seq: 2, pg_role: replica }
    10.10.10.12: { pg_group: 1, pg_cluster: pg-citus1 ,pg_vip_address: 10.10.10.3/24 ,pg_seq: 1, pg_role: primary }
    10.10.10.13: { pg_group: 2, pg_cluster: pg-citus2 ,pg_vip_address: 10.10.10.4/24 ,pg_seq: 1, pg_role: primary }
  vars:
    pg_mode: citus                            # pgsql cluster mode: citus
    pg_version: 16                            # citus does not have pg16 available
    pg_shard: pg-citus                        # citus shard name: pg-citus
    pg_primary_db: citus                      # primary database used by citus
    pg_vip_enabled: true                      # enable vip for citus cluster
    pg_vip_interface: eth1                    # vip interface for all members
    pg_dbsu_password: DBUser.Postgres         # all dbsu password access for citus cluster
    pg_extensions: [ citus, postgis, pgvector, topn, pg_cron, hll ]  # install these extensions
    pg_libs: 'citus, pg_cron, pg_stat_statements' # citus will be added by patroni automatically
    pg_users: [{ name: dbuser_citus ,password: DBUser.Citus ,pgbouncer: true ,roles: [ dbrole_admin ]    }]
    pg_databases: [{ name: citus ,owner: dbuser_citus ,extensions: [ citus, vector, topn, pg_cron, hll ] }]
    pg_parameters:
      cron.database_name: citus
      citus.node_conninfo: 'sslmode=require sslrootcert=/pg/cert/ca.crt sslmode=verify-full'
    pg_hba_rules:
      - { user: 'all' ,db: all  ,addr: 127.0.0.1/32  ,auth: ssl   ,title: 'all user ssl access from localhost' }
      - { user: 'all' ,db: all  ,addr: intra         ,auth: ssl   ,title: 'all user ssl access from intranet'  }
```

Compared to standard PostgreSQL clusters, Citus cluster configuration has some special requirements. First, you need to ensure the Citus extension is downloaded, installed, loaded, and enabled, which involves the following four parameters:

- [`repo_packages`](/docs/infra/param#repo_packages): Must include the `citus` extension, or you need to use a PostgreSQL offline package that includes Citus.
- [`pg_extensions`](/docs/pgsql/param#pg_extensions): Must include the `citus` extension, i.e., you must install the `citus` extension on each node.
- [`pg_libs`](/docs/pgsql/param#pg_libs): Must include the `citus` extension at the first position, though Patroni now handles this automatically.
- [`pg_databases`](/docs/pgsql/param#pg_databases): Define a primary database that must have the `citus` extension installed.

Second, you need to ensure the Citus cluster is configured correctly:

- [`pg_mode`](/docs/pgsql/param#pg_mode): Must be set to `citus` to tell Patroni to use Citus mode.
- [`pg_primary_db`](/docs/pgsql/param#pg_primary_db): Must specify the name of the primary database with `citus` extension, named `citus` here.
- [`pg_shard`](/docs/pgsql/param#pg_shard): Must specify a unified name as the cluster name prefix for all horizontal shard PG clusters, `pg-citus` here.
- [`pg_group`](/docs/pgsql/param#pg_group): Must specify a shard number, integers starting from zero. `0` represents the coordinator cluster, others are Worker clusters.
- [`pg_cluster`](/docs/pgsql/param#pg_cluster): Must correspond to the combination of [`pg_shard`](/docs/pgsql/param#pg_shard) and [`pg_group`](/docs/pgsql/param#pg_group).
- [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password): Must be set to a non-empty plaintext password, otherwise Citus will not work properly.
- [`pg_parameters`](/docs/pgsql/param#pg_parameters): Recommended to set `citus.node_conninfo` to enforce SSL access and require node-to-node client certificate verification.

After configuration, you can deploy the Citus cluster using `pgsql.yml` just like a regular PostgreSQL cluster.


--------

## Manage Citus Cluster

After defining the Citus cluster, deploy it using the `pgsql.yml` playbook:

```bash
./pgsql.yml -l pg-citus    # Deploy Citus cluster pg-citus
```

Using any member's DBSU (`postgres`) user, you can list the Citus cluster status with `patronictl` (alias: `pg`):

```bash
$ pg list
+ Citus cluster: pg-citus ----------+---------+-----------+----+-----------+--------------------+
| Group | Member      | Host        | Role    | State     | TL | Lag in MB | Tags               |
+-------+-------------+-------------+---------+-----------+----+-----------+--------------------+
|     0 | pg-citus0-1 | 10.10.10.10 | Leader  | running   |  1 |           | clonefrom: true    |
|       |             |             |         |           |    |           | conf: tiny.yml     |
|       |             |             |         |           |    |           | spec: 20C.40G.125G |
|       |             |             |         |           |    |           | version: '16'      |
+-------+-------------+-------------+---------+-----------+----+-----------+--------------------+
|     1 | pg-citus1-1 | 10.10.10.11 | Leader  | running   |  1 |           | clonefrom: true    |
|       |             |             |         |           |    |           | conf: tiny.yml     |
|       |             |             |         |           |    |           | spec: 10C.20G.125G |
|       |             |             |         |           |    |           | version: '16'      |
+-------+-------------+-------------+---------+-----------+----+-----------+--------------------+
|     2 | pg-citus2-1 | 10.10.10.12 | Leader  | running   |  1 |           | clonefrom: true    |
|       |             |             |         |           |    |           | conf: tiny.yml     |
|       |             |             |         |           |    |           | spec: 10C.20G.125G |
|       |             |             |         |           |    |           | version: '16'      |
+-------+-------------+-------------+---------+-----------+----+-----------+--------------------+
|     2 | pg-citus2-2 | 10.10.10.13 | Replica | streaming |  1 |         0 | clonefrom: true    |
|       |             |             |         |           |    |           | conf: tiny.yml     |
|       |             |             |         |           |    |           | spec: 10C.20G.125G |
|       |             |             |         |           |    |           | version: '16'      |
+-------+-------------+-------------+---------+-----------+----+-----------+--------------------+
```

You can treat each horizontal shard cluster as an independent PGSQL cluster and manage them with the `pg` (`patronictl`) command. Note that when using the `pg` command to manage Citus clusters, you need to use the `--group` parameter to specify the cluster shard number:

```bash
pg list pg-citus --group 0   # Use --group 0 to specify cluster shard number
```

Citus has a system table called `pg_dist_node` that records Citus cluster node information. Patroni automatically maintains this table.

```bash
PGURL=postgres://postgres:DBUser.Postgres@10.10.10.10/citus

psql $PGURL -c 'SELECT * FROM pg_dist_node;'       # View node information
 nodeid | groupid |  nodename   | nodeport | noderack | hasmetadata | isactive | noderole  | nodecluster | metadatasynced | shouldhaveshards
--------+---------+-------------+----------+----------+-------------+----------+-----------+-------------+----------------+------------------
      1 |       0 | 10.10.10.10 |     5432 | default  | t           | t        | primary   | default     | t              | f
      4 |       1 | 10.10.10.12 |     5432 | default  | t           | t        | primary   | default     | t              | t
      5 |       2 | 10.10.10.13 |     5432 | default  | t           | t        | primary   | default     | t              | t
      6 |       0 | 10.10.10.11 |     5432 | default  | t           | t        | secondary | default     | t              | f
```

You can also view user authentication information (superuser access only):

```bash
$ psql $PGURL -c 'SELECT * FROM pg_dist_authinfo;'   # View node auth info (superuser only)
```

Then you can use a regular business user (e.g., `dbuser_citus` with DDL privileges) to access the Citus cluster:

```bash
psql postgres://dbuser_citus:DBUser.Citus@10.10.10.10/citus -c 'SELECT * FROM pg_dist_node;'
```




--------

## Using Citus Cluster

When using Citus clusters, we strongly recommend reading the [Citus official documentation](https://docs.citusdata.com/en/stable/get_started/concepts.html) to understand its architecture and core concepts.

The key is understanding the five types of tables in Citus and their characteristics and use cases:

- Distributed Table
- Reference Table
- Local Table
- Local Management Table
- Schema Table

On the coordinator node, you can create distributed tables and reference tables and query them from any data node. Since 11.2, any Citus database node can act as a coordinator.

We can use pgbench to create some tables and distribute the main table (`pgbench_accounts`) across nodes, then use other small tables as reference tables:

```bash
PGURL=postgres://dbuser_citus:DBUser.Citus@10.10.10.10/citus
pgbench -i $PGURL

psql $PGURL <<-EOF
SELECT create_distributed_table('pgbench_accounts', 'aid'); SELECT truncate_local_data_after_distributing_table('public.pgbench_accounts');
SELECT create_reference_table('pgbench_branches')         ; SELECT truncate_local_data_after_distributing_table('public.pgbench_branches');
SELECT create_reference_table('pgbench_history')          ; SELECT truncate_local_data_after_distributing_table('public.pgbench_history');
SELECT create_reference_table('pgbench_tellers')          ; SELECT truncate_local_data_after_distributing_table('public.pgbench_tellers');
EOF
```

Run read/write tests:

```bash
pgbench -nv -P1 -c10 -T500 postgres://dbuser_citus:DBUser.Citus@10.10.10.10/citus      # Direct connect to coordinator port 5432
pgbench -nv -P1 -c10 -T500 postgres://dbuser_citus:DBUser.Citus@10.10.10.10:6432/citus # Through connection pool, reduce client connection pressure
pgbench -nv -P1 -c10 -T500 postgres://dbuser_citus:DBUser.Citus@10.10.10.13/citus      # Any primary node can act as coordinator
pgbench --select-only -nv -P1 -c10 -T500 postgres://dbuser_citus:DBUser.Citus@10.10.10.11/citus # Read-only queries
```


--------

## Production Deployment

For production use of Citus, you typically need to set up streaming replication physical replicas for the Coordinator and each Worker cluster.

For example, [`simu.yml`](https://github.com/Vonng/pigsty/blob/main/conf/simu.yml) defines a 10-node Citus cluster:

```yaml
pg-citus: # citus group
  hosts:
    10.10.10.50: { pg_group: 0, pg_cluster: pg-citus0 ,pg_vip_address: 10.10.10.60/24 ,pg_seq: 0, pg_role: primary }
    10.10.10.51: { pg_group: 0, pg_cluster: pg-citus0 ,pg_vip_address: 10.10.10.60/24 ,pg_seq: 1, pg_role: replica }
    10.10.10.52: { pg_group: 1, pg_cluster: pg-citus1 ,pg_vip_address: 10.10.10.61/24 ,pg_seq: 0, pg_role: primary }
    10.10.10.53: { pg_group: 1, pg_cluster: pg-citus1 ,pg_vip_address: 10.10.10.61/24 ,pg_seq: 1, pg_role: replica }
    10.10.10.54: { pg_group: 2, pg_cluster: pg-citus2 ,pg_vip_address: 10.10.10.62/24 ,pg_seq: 0, pg_role: primary }
    10.10.10.55: { pg_group: 2, pg_cluster: pg-citus2 ,pg_vip_address: 10.10.10.62/24 ,pg_seq: 1, pg_role: replica }
    10.10.10.56: { pg_group: 3, pg_cluster: pg-citus3 ,pg_vip_address: 10.10.10.63/24 ,pg_seq: 0, pg_role: primary }
    10.10.10.57: { pg_group: 3, pg_cluster: pg-citus3 ,pg_vip_address: 10.10.10.63/24 ,pg_seq: 1, pg_role: replica }
    10.10.10.58: { pg_group: 4, pg_cluster: pg-citus4 ,pg_vip_address: 10.10.10.64/24 ,pg_seq: 0, pg_role: primary }
    10.10.10.59: { pg_group: 4, pg_cluster: pg-citus4 ,pg_vip_address: 10.10.10.64/24 ,pg_seq: 1, pg_role: replica }
  vars:
    pg_mode: citus                            # pgsql cluster mode: citus
    pg_version: 16                            # citus does not have pg16 available
    pg_shard: pg-citus                        # citus shard name: pg-citus
    pg_primary_db: citus                      # primary database used by citus
    pg_vip_enabled: true                      # enable vip for citus cluster
    pg_vip_interface: eth1                    # vip interface for all members
    pg_dbsu_password: DBUser.Postgres         # enable dbsu password access for citus
    pg_extensions: [ citus, postgis, pgvector, topn, pg_cron, hll ]  # install these extensions
    pg_libs: 'citus, pg_cron, pg_stat_statements' # citus will be added by patroni automatically
    pg_users: [{ name: dbuser_citus ,password: DBUser.Citus ,pgbouncer: true ,roles: [ dbrole_admin ]    }]
    pg_databases: [{ name: citus ,owner: dbuser_citus ,extensions: [ citus, vector, topn, pg_cron, hll ] }]
    pg_parameters:
      cron.database_name: citus
      citus.node_conninfo: 'sslrootcert=/pg/cert/ca.crt sslmode=verify-full'
    pg_hba_rules:
      - { user: 'all' ,db: all  ,addr: 127.0.0.1/32  ,auth: ssl   ,title: 'all user ssl access from localhost' }
      - { user: 'all' ,db: all  ,addr: intra         ,auth: ssl   ,title: 'all user ssl access from intranet'  }
```

We will cover a series of advanced Citus topics in subsequent tutorials:

- Read/write separation
- Failure handling
- Consistent backup and recovery
- Advanced monitoring and diagnostics
- Connection pooling
