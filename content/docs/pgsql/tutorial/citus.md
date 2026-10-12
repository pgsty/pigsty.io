---
title: 'Deploy HA Citus Cluster'
linkTitle: 'Setup HA Citus'
date: 2025-01-11
weight: 2103
description: How to deploy a Citus high-availability distributed cluster?
icon: fa-solid fa-arrow-right-from-bracket
module: [PGSQL]
categories: [Task, Tutorial, Concept]
---

Citus is a PostgreSQL extension that turns PostgreSQL into a distributed database.
It scales horizontally across nodes to process large data volumes and query workloads.

Patroni v3.0+ provides native high-availability support for Citus.
This simplifies Citus cluster setup.
Pigsty also provides native support.

- [What is Citus](https://docs.citusdata.com/en/stable/get_started/what_is_citus.html)
- [Patroni Citus Support](https://patroni.readthedocs.io/en/latest/citus.html)

> Note: Citus 13.x supports PostgreSQL 18, 17, 16, 15, and 14. Pigsty extension repo provides Citus ARM64 packages.


--------

## Citus Cluster

Pigsty natively supports Citus.
The current complete configuration template is [`conf/ha/citus.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/citus.yml).

The following four-node example shows the key parameters.
It has a two-node coordinator cluster, `pg-citus0`, and two single-node Worker clusters, `pg-citus1` and `pg-citus2`.
It is not an exact excerpt from the current complete template.

```yaml
pg-citus:
  hosts:
    10.10.10.10: { pg_group: 0, pg_cluster: pg-citus0 ,pg_vip_address: 10.10.10.2/24 ,pg_seq: 1, pg_role: primary }
    10.10.10.11: { pg_group: 0, pg_cluster: pg-citus0 ,pg_vip_address: 10.10.10.2/24 ,pg_seq: 2, pg_role: replica }
    10.10.10.12: { pg_group: 1, pg_cluster: pg-citus1 ,pg_vip_address: 10.10.10.3/24 ,pg_seq: 1, pg_role: primary }
    10.10.10.13: { pg_group: 2, pg_cluster: pg-citus2 ,pg_vip_address: 10.10.10.4/24 ,pg_seq: 1, pg_role: primary }
  vars:
    pg_mode: citus                            # pgsql cluster mode: citus
    pg_version: 18                            # citus 13.x supports PG 14-18
    pg_shard: pg-citus                        # citus shard name: pg-citus
    pg_primary_db: citus                      # primary database used by citus
    pg_vip_enabled: true                      # enable vip for citus cluster
    pg_vip_interface: auto                    # auto detect vip interface for every member
    pg_dbsu_password: DBUser.Postgres         # all dbsu password access for citus cluster
    pg_extensions: [ citus, postgis, pgvector, topn, pg_cron, hll ]  # install these extensions
    pg_libs: 'citus, pg_cron, pg_stat_statements' # explicitly preload citus and keep it first
    pg_users: [{ name: dbuser_citus ,password: DBUser.Citus ,pgbouncer: true ,roles: [ dbrole_admin ]    }]
    pg_databases: [{ name: citus ,owner: dbuser_citus ,extensions: [ citus, vector, topn, pg_cron, hll ] }]
    pg_parameters:
      cron.database_name: citus
      citus.node_conninfo: 'sslrootcert=/pg/cert/ca.crt sslmode=verify-full'
    pg_hba_rules:
      - { user: 'all' ,db: all  ,addr: 127.0.0.1/32  ,auth: ssl   ,title: 'all user ssl access from localhost' }
      - { user: 'all' ,db: all  ,addr: intra         ,auth: ssl   ,title: 'all user ssl access from intranet'  }
```

Citus has additional configuration requirements beyond those for a standard PostgreSQL cluster.
First, download, install, load, and enable the Citus extension.
Use these four parameters:

- [`repo_packages`](/docs/infra/param#repo_packages): Must include the `citus` extension, or you need to use a PostgreSQL offline package that includes Citus.
- [`pg_extensions`](/docs/pgsql/param#pg_extensions): Must include the `citus` extension, i.e., you must install the `citus` extension on each node.
- [`pg_libs`](/docs/pgsql/param#pg_libs): Must explicitly include `citus` in the first position; current Patroni templates use this parameter directly for `shared_preload_libraries`.
- [`pg_databases`](/docs/pgsql/param#pg_databases): Define a primary database that must have the `citus` extension installed.

Then configure the Citus cluster:

- [`pg_mode`](/docs/pgsql/param#pg_mode): Must be set to `citus` to tell Patroni to use Citus mode.
- [`pg_primary_db`](/docs/pgsql/param#pg_primary_db): Must specify the name of the primary database with `citus` extension, named `citus` here.
- [`pg_shard`](/docs/pgsql/param#pg_shard): Must specify a unified name as the cluster name prefix for all horizontal shard PG clusters, `pg-citus` here.
- [`pg_group`](/docs/pgsql/param#pg_group): Set an integer shard number, starting from zero. `0` identifies the coordinator cluster. Other values identify Worker clusters.
- [`pg_cluster`](/docs/pgsql/param#pg_cluster): Must be unique among physical PostgreSQL clusters. The usual name combines `pg_shard` with a sequence number. The current role does not require the name to equal the concatenation of `pg_shard` and `pg_group`.
- [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password): Must be set to a non-empty plaintext password, otherwise Citus will not work properly.
- [`pg_parameters`](/docs/pgsql/param#pg_parameters): Recommended to set `citus.node_conninfo` to enforce SSL access and require node-to-node client certificate verification.

After configuration, you can deploy the Citus cluster using `pgsql.yml` just like a regular PostgreSQL cluster.


--------

## Manage Citus Cluster

After defining the Citus cluster, deploy it using the `pgsql.yml` playbook:

```bash
./pgsql.yml -l pg-citus    # Deploy Citus cluster pg-citus
```

On any member, use the DBSU (`postgres`) account to show Citus cluster status with `patronictl`, whose alias is `pg`:

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

Manage each horizontal shard as an independent PGSQL cluster with `pg` (`patronictl`).
For Citus, specify the shard number with `--group`:

```bash
pg list pg-citus --group 0   # Use --group 0 to specify cluster shard number
```

The Citus system table `pg_dist_node` records cluster node information.
Patroni maintains this table automatically.

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

You can then connect with a regular application user, such as `dbuser_citus` with DDL privileges:

```bash
psql postgres://dbuser_citus:DBUser.Citus@10.10.10.10/citus -c 'SELECT * FROM pg_dist_node;'
```




--------

## Using Citus Cluster

We strongly recommend the [Citus official documentation](https://docs.citusdata.com/en/stable/get_started/concepts.html) for its architecture and core concepts.

Understand the characteristics and uses of the five Citus table types:

- Distributed Table
- Reference Table
- Local Table
- Local Management Table
- Schema Table

On the coordinator, create distributed tables and reference tables.
You can query them from any data node.
From Citus 11.2, any Citus database node can act as coordinator.

Use pgbench to create tables.
Distribute the main table, `pgbench_accounts`, across nodes.
Use the other small tables as reference tables:

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

For production, you usually need physical streaming-replication replicas for the Coordinator and each Worker cluster.

The current [`conf/ha/citus.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/citus.yml) defines one `pg-meta` instance and 12 Citus instances across 13 hosts.
The Citus instances form six two-node physical clusters with `pg_group` values 0-5.
The following 10-node example shows a separate production topology.
It is not the current template.

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
    pg_version: 18                            # citus 13.x supports PG 14-18
    pg_shard: pg-citus                        # citus shard name: pg-citus
    pg_primary_db: citus                      # primary database used by citus
    pg_vip_enabled: true                      # enable vip for citus cluster
    pg_vip_interface: auto                    # auto detect vip interface for every member
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
