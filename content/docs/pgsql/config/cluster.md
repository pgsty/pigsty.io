---
title: Cluster / Instance
weight: 10
description: Choose the appropriate instance and cluster types based on your requirements
  to configure PostgreSQL database clusters that meet your needs.
icon: fa-solid fa-code
module: [PGSQL]
categories: [Reference]
---



> Select instance and cluster types that meet your requirements.

Pigsty supports several PostgreSQL instance and cluster types:

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

The simplest cluster contains one primary instance:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-test
```

This configuration contains only [**identity parameters**](/docs/concept/model/pgsql#identity-parameters).
Matching the Ansible group name to [`pg_cluster`](/docs/pgsql/param#pg_cluster) makes selectors such as `-l pg-test` convenient.
However, matching group names are not required for membership.
Pigsty finds members from each host's `pg_cluster` identity.
One PostgreSQL cluster can therefore span multiple inventory groups.

Use the following command to create this cluster:

```bash
bin/pgsql-add pg-test
```

One instance can be suitable for demonstrations, development tests, temporary hosting, or non-critical analytical tasks.
A single-node cluster has no [high availability](/docs/concept/ha).
After hardware failure, use [PITR](/docs/concept/pitr) or another recovery method to meet RTO/RPO requirements.
Consider adding [read-only replicas](#replica) for this reason.


----------------

## Replica

To add a read-only replica, add a node to `pg-test` and set its [`pg_role`](/docs/pgsql/param#pg_role) to `replica`.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }  # <--- newly added replica
  vars:
    pg_cluster: pg-test
```

If the cluster does not exist, [create](/docs/pgsql/admin/cluster#create-cluster) the complete cluster.
If the primary is initialized, [add](/docs/pgsql/admin/cluster#expand-cluster) a replica to the existing cluster:

```bash
bin/pgsql-add pg-test               # initialize the entire cluster at once
bin/pgsql-add pg-test 10.10.10.12   # add replica to existing cluster
```

If the primary fails, the high-availability system can promote a replica to take over.
Replicas also process read-only queries.
Many applications have more reads than writes, so replicas can handle most of their read-only workload.



----------------

## Offline

Offline instances are read-only replicas for slow queries, ETL, OLAP, and interactive queries.
Slow queries and long transactions can reduce online application performance and stability.
We therefore recommend that you isolate them from online traffic.

To add an offline instance, add a new instance and set [`pg_role`](/docs/pgsql/param#pg_role) to `offline`.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: offline }  # <--- newly added offline replica
  vars:
    pg_cluster: pg-test
```

Dedicated offline instances operate like ordinary replicas but act as backup servers for the `pg-test-replica` service.
Offline and primary instances serve read-only traffic only when every `replica` instance is down.

A separate offline server may be too expensive when resources are limited.
Instead, mark an existing replica with [`pg_offline_query`](/docs/pgsql/param#pg_offline_query).
This replica handles both online read-only requests and offline queries.
Use [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules) and [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules) for additional access control on offline instances.




----------------

## Sync Standby

With Sync Standby enabled, PostgreSQL selects one replica as the **sync standby**.
The other replicas are **candidates**.
Before it confirms a commit, the primary waits for the sync standby to flush data to disk.
The sync standby has the latest data without replication lag.
A switchover to that standby has no data loss.

PostgreSQL uses asynchronous streaming replication by default.
If the primary fails, WAL that has not replicated may be lost.
[`pg_rpo`](/docs/pgsql/param#pg_rpo) is Patroni's sampled lag threshold for failover candidates.
It is not a hard limit on actual data loss.
The loss window also depends on write rate, replication state, and Patroni sampling time.

Critical workloads, such as financial transactions, may permit no data loss or read replication lag.
Use synchronous commit for these requirements.
To enable sync standby mode, select `crit.yml` with [`pg_conf`](/docs/pgsql/param#pg_conf).

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

To enable sync standby on an existing cluster, [configure the cluster](/docs/pgsql/admin/cluster#config-cluster) and enable `synchronous_mode`:

```bash
$ pg edit-config pg-test    # run as admin user on admin node
+++
-synchronous_mode: false    # <--- old value
+synchronous_mode: true     # <--- new value
 synchronous_mode_strict: false

Apply these changes? [y/N]: y
```

Patroni manages [`synchronous_standby_names`](https://www.postgresql.org/docs/current/runtime-config-replication.html#synchronous_standby_names) automatically.
It selects one replica as the sync standby.
It writes and applies that replica's `application_name` in the primary configuration.



----------------

## Quorum Commit

Quorum Commit lets you set commit acknowledgment criteria, particularly for clusters with multiple replicas.
You can adjust the consistency level and the associated availability tradeoff.

To require confirmation from **at least two replicas**, set [`synchronous_node_count`](https://patroni.readthedocs.io/en/latest/replication_modes.html#synchronous-replication-factor) through Patroni [cluster configuration](/docs/pgsql/admin/cluster#config-cluster).
Apply this setting:

```yaml
synchronous_mode: true          # ensure synchronous commit is enabled
synchronous_node_count: 2       # specify "at least" how many replicas must successfully commit
```

To require more synchronous replicas, increase `synchronous_node_count`.
After cluster size changes, verify that this setting remains valid to avoid service unavailability.

In this case, the PostgreSQL configuration parameter [`synchronous_standby_names`](https://www.postgresql.org/docs/current/runtime-config-replication.html#synchronous_standby_names) is automatically managed by Patroni.

```yaml
synchronous_standby_names = '2 ("pg-test-3","pg-test-2")'
```

> [!DETAILS]- Example: Using multiple sync standbys
> ```bash
> $ pg edit-config pg-test
> ---
> +synchronous_node_count: 2
>
> Apply these changes? [y/N]: y
> ```
>
> After applying the configuration, two sync standbys appear.
>
> ```bash
> + Cluster: pg-test (7080814403632534854) +---------+----+-----------+-----------------+
> | Member    | Host        | Role         | State   | TL | Lag in MB | Tags            |
> +-----------+-------------+--------------+---------+----+-----------+-----------------+
> | pg-test-1 | 10.10.10.10 | Leader       | running |  1 |           | clonefrom: true |
> | pg-test-2 | 10.10.10.11 | Sync Standby | running |  1 |         0 | clonefrom: true |
> | pg-test-3 | 10.10.10.12 | Sync Standby | running |  1 |         0 | clonefrom: true |
> +-----------+-------------+--------------+---------+----+-----------+-----------------+
> ```

You can also require confirmation from **any n** replicas.
For example, this configuration requires any one replica:

```yaml
synchronous_mode: quorum        # use quorum commit
postgresql:
  parameters:                   # modify PostgreSQL's configuration parameter synchronous_standby_names, using `ANY n ()` syntax
    synchronous_standby_names: 'ANY 1 (*)'  # you can specify a specific replica list or use * to wildcard all replicas.
```

> [!DETAILS]- Example: Enable ANY quorum commit
> ```bash
> $ pg edit-config pg-test
>
> +    synchronous_standby_names: 'ANY 1 (*)' # in ANY mode, this parameter is needed
> - synchronous_node_count: 2  # in ANY mode, this parameter is not needed
>
> Apply these changes? [y/N]: y
> ```
>
> After applying, the configuration takes effect, and all standbys become regular replicas in Patroni. However, in `pg_stat_replication`, you can see `sync_state` becomes `quorum`.




----------------

## Standby Cluster

You can clone an existing cluster and create a standby cluster for data migration, horizontal splitting, multi-region deployment, or disaster recovery.

Normally, the standby cluster follows the upstream cluster and keeps its data synchronized.
Promote it to make it an independent cluster.

Use a normal cluster definition, then add [`pg_upstream`](/docs/pgsql/param#pg_upstream) to its primary.
This primary is called the **Standby Leader**.

This inventory defines `pg-test` and its standby cluster, `pg-test2`:

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

`pg-test2-1` replicates from `pg-test` and acts as the Standby Leader for `pg-test2`.

Set [`pg_upstream`](/docs/pgsql/param#pg_upstream) on the standby cluster primary to pull backups automatically from the upstream cluster.

```bash
bin/pgsql-add pg-test     # create original cluster
bin/pgsql-add pg-test2    # create standby cluster
```

> [!DETAILS]- Example: Change replication upstream
> If necessary (e.g., upstream primary-standby switchover/failover), you can change the standby cluster's replication upstream through [cluster configuration](/docs/pgsql/admin/cluster#config-cluster).
>
> To do this, simply change `standby_cluster.host` to the new upstream IP address and apply.
>
> ```bash
> $ pg edit-config pg-test2
>
>  standby_cluster:
>    create_replica_methods:
>    - basebackup
> -  host: 10.10.10.13     # <--- old upstream
> +  host: 10.10.10.12     # <--- new upstream
>    port: 5432
>
>  Apply these changes? [y/N]: y
> ```



> [!DETAILS]- Example: Promote standby cluster
> You can promote the standby cluster at any time.
> It then accepts writes independently and can diverge from the original cluster.
>
> To do this, you must [configure](/docs/pgsql/admin/cluster#config-cluster) the cluster and completely erase the `standby_cluster` section, then apply.
>
> ```bash
> $ pg edit-config pg-test2
> -standby_cluster:
> -  create_replica_methods:
> -  - basebackup
> -  host: 10.10.10.11
> -  port: 5432
>
> Apply these changes? [y/N]: y
> ```



 > [!DETAILS]- Example: Cascade replication
 > If you specify [`pg_upstream`](/docs/pgsql/param#pg_upstream) on a replica instead of the primary, you can configure **cascade replication** for the cluster.
 >
 > For cascade replication, use the IP address of an instance in the same cluster. Otherwise, initialization fails.
 > The replica streams from that instance instead of the primary.
 >
 > The WAL relay is called a **Bridge Instance**.
 > It reduces the WAL transmission load on the primary.
 > Consider cascade replication through bridge instances when you have dozens of replicas.
 >
 > ```yaml
 > pg-test:
 >  hosts: # pg-test-1 ---> pg-test-2 ---> pg-test-3
 >    10.10.10.11: { pg_seq: 1, pg_role: primary }
 >    10.10.10.12: { pg_seq: 2, pg_role: replica } # <--- bridge instance
 >    10.10.10.13: { pg_seq: 3, pg_role: replica, pg_upstream: 10.10.10.12 }
 >    # ^--- replicate from pg-test-2 (bridge) instead of pg-test-1 (primary)
 >  vars: { pg_cluster: pg-test }
 > ```





----------------

## Delayed Cluster

A Delayed Cluster is a special type of [standby cluster](#standby-cluster) used to quickly recover "accidentally deleted" data.

For example, define `pg-testdelay` to retain the state of `pg-test` from one hour earlier:

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

You can also [configure](/docs/pgsql/admin/cluster#config-cluster) a "replication delay" on an existing [standby cluster](#standby-cluster).

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

After accidental row or table deletion, adjust this delay to advance the delayed cluster to the required time.
Read the data from that cluster to repair the original cluster.

Delayed clusters need additional resources.
They recover data much faster than [PITR](/docs/concept/pitr/restore/) and have less effect on the system.
Consider them for critical clusters.




----------------

## Citus Cluster

Pigsty natively supports Citus.
See [`conf/ha/citus.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/citus.yml) for a complete example.

To define a Citus cluster, you need to specify the following parameters:

- [`pg_mode`](/docs/pgsql/param#pg_mode) must be set to `citus`, not the default `pgsql`
- The shard name [`pg_shard`](/docs/pgsql/param#pg_shard) and shard number [`pg_group`](/docs/pgsql/param#pg_group) must be defined on each shard cluster
- [`pg_primary_db`](/docs/pgsql/param#pg_primary_db) must be defined to specify the database managed by Patroni.
- To run administration commands as [`pg_dbsu`](/docs/pgsql/param#pg_dbsu) `postgres` instead of [`pg_admin_username`](/docs/pgsql/param#pg_admin_username), set [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password) to a non-empty plaintext password.

Add HBA rules for SSL access from localhost and other data nodes.
For example:

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

On the coordinator, create distributed tables and reference tables.
You can query them from any data node.
From Citus 11.2, any Citus database node can act as coordinator.

```bash
SELECT create_distributed_table('pgbench_accounts', 'aid'); SELECT truncate_local_data_after_distributing_table($$public.pgbench_accounts$$);
SELECT create_reference_table('pgbench_branches')         ; SELECT truncate_local_data_after_distributing_table($$public.pgbench_branches$$);
SELECT create_reference_table('pgbench_history')          ; SELECT truncate_local_data_after_distributing_table($$public.pgbench_history$$);
SELECT create_reference_table('pgbench_tellers')          ; SELECT truncate_local_data_after_distributing_table($$public.pgbench_tellers$$);
```
