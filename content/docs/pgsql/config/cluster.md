---
title: Cluster & Instances
weight: 1201
description: Choose the appropriate instance and cluster types based on your requirements
  to configure PostgreSQL database clusters that meet your needs.
icon: fa-solid fa-code
module: [PGSQL]
categories: [Reference]
tags: []
---



> Choose the appropriate instance and cluster types based on your requirements to configure PostgreSQL database clusters that meet your needs.

You can define different types of instances and clusters. Here are several common PostgreSQL instance/cluster types in Pigsty:

- [Primary](#primary): Define a single instance cluster.
- [Replica](#replica): Define a basic HA cluster with one primary and one replica.
- [Offline](#offline): Define an instance dedicated to OLAP/ETL/interactive queries
- [Sync Standby](#sync-standby): Enable synchronous commit to ensure no data loss.
- [Quorum Commit](#quorum-commit): Use quorum sync commit for a higher consistency level.
- [Standby Cluster](#standby-cluster): Clone an existing cluster and follow it
- [Delayed Cluster](#delayed-cluster): Clone an existing cluster for emergency data recovery
- [Citus Cluster](#citus-cluster): Define a Citus distributed database cluster


----------------

## Primary

We start with the simplest case: a single instance cluster consisting of one primary:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-test
```

This configuration is concise and self-describing, consisting only of [**identity parameters**](/docs/pgsql/arch/ident). Note that the Ansible Group name should match [`pg_cluster`](/docs/pgsql/param#pg_cluster).

Use the following command to create this cluster:

```bash
bin/pgsql-add pg-test
```

For demos, development testing, hosting temporary requirements, or performing non-critical analytical tasks, a single database instance may not be a big problem. However, such a single-node cluster has no [high availability](/docs/concept/ha). When hardware failures occur, you'll need to use [PITR](/docs/concept/pitr) or other recovery methods to ensure the cluster's RTO/RPO. For this reason, you may consider adding several [read-only replicas](#replica) to the cluster.


----------------

## Replica

To add a read-only replica instance, you can add a new node to `pg-test` and set its [`pg_role`](/docs/pgsql/param#pg_role) to `replica`.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }  # <--- newly added replica
  vars:
    pg_cluster: pg-test
```

If the entire cluster doesn't exist, you can directly [create](/docs/pgsql/admin#create-cluster) the complete cluster. If the cluster primary has already been initialized, you can [add](/docs/pgsql/admin#add-instance) a replica to the existing cluster:

```bash
bin/pgsql-add pg-test               # initialize the entire cluster at once
bin/pgsql-add pg-test 10.10.10.12   # add replica to existing cluster
```

When the cluster primary fails, the read-only instance (Replica) can take over the primary's work with the help of the high availability system. Additionally, read-only instances can be used to execute read-only queries: many businesses have far more read requests than write requests, and most read-only query loads can be handled by replica instances.



----------------

## Offline

Offline instances are dedicated read-only replicas specifically for serving slow queries, ETL, OLAP traffic, and interactive queries. Slow queries/long transactions have adverse effects on the performance and stability of online business, so it's best to isolate them from online business.

To add an offline instance, assign it a new instance and set [`pg_role`](/docs/pgsql/param#pg_role) to `offline`.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: offline }  # <--- newly added offline replica
  vars:
    pg_cluster: pg-test
```

Dedicated offline instances work similarly to common replica instances, but they serve as backup servers in the `pg-test-replica` service. That is, only when all `replica` instances are down will the offline and primary instances provide this read-only service.

In many cases, database resources are limited, and using a separate server as an offline instance is not economical. As a compromise, you can select an existing replica instance and mark it with the [`pg_offline_query`](/docs/pgsql/param#pg_offline_query) flag to indicate it can handle "offline queries". In this case, this read-only replica will handle both online read-only requests and offline queries. You can use [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules) and [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules) for additional access control on offline instances.




----------------

## Sync Standby

When Sync Standby is enabled, PostgreSQL will select one replica as the **sync standby**, with all other replicas as **candidates**. The primary database will wait for the standby instance to flush to disk before confirming commits. The standby instance always has the latest data with no replication lag, and primary-standby switchover to the sync standby will have no data loss.

PostgreSQL uses asynchronous streaming replication by default, which may have small replication lag (on the order of 10KB/10ms). When the primary fails, there may be a small data loss window (which can be controlled using [`pg_rpo`](/docs/pgsql/param#pg_rpo)), but this is acceptable for most scenarios.

However, in some critical scenarios (e.g., financial transactions), data loss is completely unacceptable, or read replication lag is unacceptable. In such cases, you can use synchronous commit to solve this problem. To enable sync standby mode, you can simply use the `crit.yml` template in [`pg_conf`](/docs/pgsql/param#pg_conf).

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica }
  vars:
    pg_cluster: pg-test
    pg_conf: crit.yml   # <--- use crit template
```

To enable sync standby on an existing cluster, [configure the cluster](/docs/pgsql/admin#configure-cluster) and enable `synchronous_mode`:

```bash
$ pg edit-config pg-test    # run as admin user on admin node
+++
-synchronous_mode: false    # <--- old value
+synchronous_mode: true     # <--- new value
 synchronous_mode_strict: false

Apply these changes? [y/N]: y
```

In this case, the PostgreSQL configuration parameter [`synchronous_standby_names`](https://www.postgresql.org/docs/current/runtime-config-replication.html#synchronous_standby_names) is automatically managed by Patroni.
One replica will be elected as the sync standby, and its `application_name` will be written to the PostgreSQL primary configuration file and applied.



----------------

## Quorum Commit

Quorum Commit provides more powerful control than sync standby: especially when you have multiple replicas, you can set criteria for successful commits, achieving higher/lower consistency levels (and trade-offs with availability).

If you want **at least two replicas** to confirm commits, you can adjust the [`synchronous_node_count`](https://patroni.readthedocs.io/en/latest/replication_modes.html#synchronous-replication-factor) parameter through Patroni [cluster configuration](/docs/pgsql/admin#configure-cluster) and apply it:

```yaml
synchronous_mode: true          # ensure synchronous commit is enabled
synchronous_node_count: 2       # specify "at least" how many replicas must successfully commit
```

If you want to use more sync replicas, modify the `synchronous_node_count` value. When the cluster size changes, you should ensure this configuration is still valid to avoid service unavailability.

In this case, the PostgreSQL configuration parameter [`synchronous_standby_names`](https://www.postgresql.org/docs/current/runtime-config-replication.html#synchronous_standby_names) is automatically managed by Patroni.

```yaml
synchronous_standby_names = '2 ("pg-test-3","pg-test-2")'
```

<details><summary>Example: Using multiple sync standbys</summary>

```bash
$ pg edit-config pg-test
---
+synchronous_node_count: 2

Apply these changes? [y/N]: y
```

After applying the configuration, two sync standbys appear.

```bash
+ Cluster: pg-test (7080814403632534854) +---------+----+-----------+-----------------+
| Member    | Host        | Role         | State   | TL | Lag in MB | Tags            |
+-----------+-------------+--------------+---------+----+-----------+-----------------+
| pg-test-1 | 10.10.10.10 | Leader       | running |  1 |           | clonefrom: true |
| pg-test-2 | 10.10.10.11 | Sync Standby | running |  1 |         0 | clonefrom: true |
| pg-test-3 | 10.10.10.12 | Sync Standby | running |  1 |         0 | clonefrom: true |
+-----------+-------------+--------------+---------+----+-----------+-----------------+
```

</details>

Another scenario is using **any n** replicas to confirm commits. In this case, the configuration is slightly different. For example, if we only need any one replica to confirm commits:

```yaml
synchronous_mode: quorum        # use quorum commit
postgresql:
  parameters:                   # modify PostgreSQL's configuration parameter synchronous_standby_names, using `ANY n ()` syntax
    synchronous_standby_names: 'ANY 1 (*)'  # you can specify a specific replica list or use * to wildcard all replicas.
```

<details><summary>Example: Enable ANY quorum commit</summary>

```bash
$ pg edit-config pg-test

+    synchronous_standby_names: 'ANY 1 (*)' # in ANY mode, this parameter is needed
- synchronous_node_count: 2  # in ANY mode, this parameter is not needed

Apply these changes? [y/N]: y
```

After applying, the configuration takes effect, and all standbys become regular replicas in Patroni. However, in `pg_stat_replication`, you can see `sync_state` becomes `quorum`.

</details>




----------------

## Standby Cluster

You can clone an existing cluster and create a standby cluster for data migration, horizontal splitting, multi-region deployment, or disaster recovery.

Under normal circumstances, the standby cluster will follow the upstream cluster and keep content synchronized. You can promote the standby cluster to become a truly independent cluster.

The standby cluster definition is basically the same as a normal cluster definition, except that the [`pg_upstream`](/docs/pgsql/param#pg_upstream) parameter is additionally defined on the primary. The primary of the standby cluster is called the **Standby Leader**.

For example, below defines a `pg-test` cluster and its standby cluster `pg-test2`. The configuration inventory might look like this:

```yaml
# pg-test is the original cluster
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
  vars: { pg_cluster: pg-test }

# pg-test2 is the standby cluster of pg-test
pg-test2:
  hosts:
    10.10.10.12: { pg_seq: 1, pg_role: primary , pg_upstream: 10.10.10.11 } # <--- pg_upstream defined here
    10.10.10.13: { pg_seq: 2, pg_role: replica }
  vars: { pg_cluster: pg-test2 }
```

The primary node `pg-test2-1` of the `pg-test2` cluster will be a downstream replica of `pg-test` and serve as the Standby Leader in the `pg-test2` cluster.

Just ensure the [`pg_upstream`](/docs/pgsql/param#pg_upstream) parameter is configured on the standby cluster's primary node to automatically pull backups from the original upstream.

```bash
bin/pgsql-add pg-test     # create original cluster
bin/pgsql-add pg-test2    # create standby cluster
```

<details><summary>Example: Change replication upstream</summary>

If necessary (e.g., upstream primary-standby switchover/failover), you can change the standby cluster's replication upstream through [cluster configuration](/docs/pgsql/admin#configure-cluster).

To do this, simply change `standby_cluster.host` to the new upstream IP address and apply.

```bash
$ pg edit-config pg-test2

 standby_cluster:
   create_replica_methods:
   - basebackup
-  host: 10.10.10.13     # <--- old upstream
+  host: 10.10.10.12     # <--- new upstream
   port: 5432

 Apply these changes? [y/N]: y
```

</details>



<details><summary>Example: Promote standby cluster</summary>

You can promote the standby cluster to an independent cluster at any time, so the cluster can independently handle write requests and diverge from the original cluster.

To do this, you must [configure](/docs/pgsql/admin#configure-cluster) the cluster and completely erase the `standby_cluster` section, then apply.

```bash
$ pg edit-config pg-test2
-standby_cluster:
-  create_replica_methods:
-  - basebackup
-  host: 10.10.10.11
-  port: 5432

Apply these changes? [y/N]: y
```

</details>



 <details><summary>Example: Cascade replication</summary>

If you specify [`pg_upstream`](/docs/pgsql/param#pg_upstream) on a replica instead of the primary, you can configure **cascade replication** for the cluster.

When configuring cascade replication, you must use the IP address of an instance in the cluster as the parameter value, otherwise initialization will fail. The replica performs streaming replication from a specific instance rather than the primary.

The instance acting as a WAL relay is called a **Bridge Instance**. Using a bridge instance can share the burden of sending WAL from the primary. When you have dozens of replicas, using bridge instance cascade replication is a good idea.

```yaml
pg-test:
  hosts: # pg-test-1 ---> pg-test-2 ---> pg-test-3
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica } # <--- bridge instance
    10.10.10.13: { pg_seq: 3, pg_role: replica, pg_upstream: 10.10.10.12 }
    # ^--- replicate from pg-test-2 (bridge) instead of pg-test-1 (primary)
  vars: { pg_cluster: pg-test }
```

</details>





----------------

## Delayed Cluster

A Delayed Cluster is a special type of [standby cluster](#standby-cluster) used to quickly recover "accidentally deleted" data.

For example, if you want a cluster named `pg-testdelay` whose data content is the same as the `pg-test` cluster from one hour ago:

```yaml
# pg-test is the original cluster
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
  vars: { pg_cluster: pg-test }

# pg-testdelay is the delayed cluster of pg-test
pg-testdelay:
  hosts:
    10.10.10.12: { pg_seq: 1, pg_role: primary , pg_upstream: 10.10.10.11, pg_delay: 1d }
    10.10.10.13: { pg_seq: 2, pg_role: replica }
  vars: { pg_cluster: pg-testdelay }
```

You can also [configure](/docs/pgsql/admin#configure-cluster) a "replication delay" on an existing [standby cluster](#standby-cluster).

```bash
$ pg edit-config pg-testdelay
 standby_cluster:
   create_replica_methods:
   - basebackup
   host: 10.10.10.11
   port: 5432
+  recovery_min_apply_delay: 1h    # <--- add delay duration here, e.g. 1 hour

Apply these changes? [y/N]: y
```

When some tuples and tables are accidentally deleted, you can modify this parameter to advance this delayed cluster to an appropriate point in time, read data from it, and quickly fix the original cluster.

Delayed clusters require additional resources, but are much faster than [PITR](/docs/concept/pitr#recovery) and have much less impact on the system. For very critical clusters, consider setting up delayed clusters.




----------------

## Citus Cluster

Pigsty natively supports Citus. You can refer to [`files/pigsty/citus.yml`](https://github.com/Vonng/pigsty/blob/main/conf/citus.yml) and [`prod.yml`](https://github.com/Vonng/pigsty/blob/main/conf/prod.yml#L298) as examples.

To define a Citus cluster, you need to specify the following parameters:

- [`pg_mode`](/docs/pgsql/param#pg_mode) must be set to `citus`, not the default `pgsql`
- The shard name [`pg_shard`](/docs/pgsql/param#pg_shard) and shard number [`pg_group`](/docs/pgsql/param#pg_group) must be defined on each shard cluster
- [`pg_primary_db`](/docs/pgsql/param#pg_primary_db) must be defined to specify the database managed by Patroni.
- If you want to use [`pg_dbsu`](/docs/pgsql/param#pg_dbsu) `postgres` instead of the default [`pg_admin_username`](/docs/pgsql/param#pg_admin_username) to execute admin commands, then [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password) must be set to a non-empty plaintext password

Additionally, extra hba rules are needed to allow SSL access from localhost and other data nodes. As shown below:

```yaml
all:
  children:
    pg-citus0: # citus shard 0
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars: { pg_cluster: pg-citus0 , pg_group: 0 }
    pg-citus1: # citus shard 1
      hosts: { 10.10.10.11: { pg_seq: 1, pg_role: primary } }
      vars: { pg_cluster: pg-citus1 , pg_group: 1 }
    pg-citus2: # citus shard 2
      hosts: { 10.10.10.12: { pg_seq: 1, pg_role: primary } }
      vars: { pg_cluster: pg-citus2 , pg_group: 2 }
    pg-citus3: # citus shard 3
      hosts:
        10.10.10.13: { pg_seq: 1, pg_role: primary }
        10.10.10.14: { pg_seq: 2, pg_role: replica }
      vars: { pg_cluster: pg-citus3 , pg_group: 3 }
  vars:                               # global parameters for all Citus clusters
    pg_mode: citus                    # pgsql cluster mode must be set to: citus
    pg_shard: pg-citus                # citus horizontal shard name: pg-citus
    pg_primary_db: meta               # citus database name: meta
    pg_dbsu_password: DBUser.Postgres # if using dbsu, need to configure a password for it
    pg_users: [ { name: dbuser_meta ,password: DBUser.Meta ,pgbouncer: true ,roles: [ dbrole_admin ] } ]
    pg_databases: [ { name: meta ,extensions: [ { name: citus }, { name: postgis }, { name: timescaledb } ] } ]
    pg_hba_rules:
      - { user: 'all' ,db: all  ,addr: 127.0.0.1/32 ,auth: ssl ,title: 'all user ssl access from localhost' }
      - { user: 'all' ,db: all  ,addr: intra        ,auth: ssl ,title: 'all user ssl access from intranet'  }
```

On the coordinator node, you can create distributed tables and reference tables and query them from any data node. Starting from 11.2, any Citus database node can act as a coordinator.

```bash
SELECT create_distributed_table('pgbench_accounts', 'aid'); SELECT truncate_local_data_after_distributing_table($$public.pgbench_accounts$$);
SELECT create_reference_table('pgbench_branches')         ; SELECT truncate_local_data_after_distributing_table($$public.pgbench_branches$$);
SELECT create_reference_table('pgbench_history')          ; SELECT truncate_local_data_after_distributing_table($$public.pgbench_history$$);
SELECT create_reference_table('pgbench_tellers')          ; SELECT truncate_local_data_after_distributing_table($$public.pgbench_tellers$$);
```




