---
title: FAQ
weight: 3470
description: Frequently asked questions about Pigsty etcd module
icon: fa-solid fa-circle-question
module: [PIGSTY]
categories: [Reference]
---

## What is etcd's role in Pigsty?

etcd is a distributed, reliable key-value store for critical system data. Pigsty uses etcd as the DCS (Distributed Config Store) for Patroni. It stores PostgreSQL HA status.

Patroni uses etcd for cluster failure detection, automatic failover, primary-replica switchover, and cluster configuration management.

etcd is critical for PostgreSQL HA. Its own availability requires a reachable majority. Production deployments normally put three or five voting members in independent failure domains.

## What's the appropriate etcd cluster size?

If at least half the etcd instances are unavailable, the cluster becomes unavailable and refuses service.

A 3-node cluster tolerates 1 node failure while the other 2 nodes continue to serve requests. A 5-node cluster tolerates 2 node failures.

**Learner** instances do not count as voting members. A 3-node cluster with 1 learner has only 2 voting members. It cannot tolerate a voting member failure.

Use an odd number of instances in production. We recommend 3 or 5 nodes for production reliability.

## Impact of etcd unavailability?

An etcd failure affects the PostgreSQL control plane. Existing PostgreSQL clusters continue to run, but Patroni management operations fail.

During the failure, PostgreSQL HA cannot perform automatic failover. You cannot use `patronictl` for operations such as configuration changes or manual failover.

Ansible playbooks for database creation, user creation, and HBA or Service configuration updates are not affected. You can operate PostgreSQL clusters directly during an etcd failure.

This behavior applies to Patroni >=3.0 (Pigsty >=2.0). With older Patroni versions (<3.0, Pigsty 1.x), an etcd or consul failure has a severe global effect. All PostgreSQL primaries become replicas and reject writes. Thus, an etcd failure causes a global PostgreSQL failure. The DCS Failsafe feature in Patroni 3.0 significantly improves this behavior.

## What data does etcd store?

By default, Pigsty uses etcd as Patroni's DCS. It stores coordination data, including leader leases, member state, and dynamic configuration. Pigsty does not store application data in etcd.

Patroni creates and manages this DCS data. During controlled maintenance, it can normally reconstruct coordination state from a healthy PostgreSQL cluster. However, etcd has state, and direct DCS deletion has risks.

An etcd rebuild interrupts automatic failover and `patronictl` management. It also clears the current DCS state. Before a rebuild, inspect the Patroni topology, current primary, remaining quorum, and recent backups. Use a documented recovery procedure during a maintenance window.

If etcd also stores K8s metadata or other custom data, back up this data yourself. Restore it after cluster recovery.

## Recover from etcd failure?

By default, Pigsty uses etcd only as the Patroni DCS. A service restart preserves DCS data. A full cluster rebuild clears coordination state and leaves PostgreSQL HA without DCS quorum until recovery.

First, diagnose the failure and recover existing members. Rebuild only after you verify the topology, backups, and recovery procedure.

To **restart** the etcd cluster:

```bash
./etcd.yml -t etcd_launch
```

If a full **reset/rebuild** is necessary, do it during a maintenance window. Then verify `etcdctl endpoint health`, `etcdctl member list`, and `patronictl list`:

```bash
./etcd-rm.yml -l etcd          # Clean the cluster after verifying target and backups
./etcd.yml -l etcd             # Redeploy from inventory
```

Back up custom etcd data before recovery. Restore it after recovery.

## Etcd maintenance considerations?

**Do not let etcd reach its storage limit.**

Pigsty enables etcd auto-compaction by default. The current backend quota is 8 GiB. This is usually sufficient, but you should monitor actual usage.

In the etcd [data model](https://etcd.io/docs/v3.5/learning/data_model/), each write creates a new version. Frequent writes increase the database size, even if there are only a few keys. When etcd reaches its capacity limit, it rejects writes and PostgreSQL HA fails.

The default Pigsty etcd configuration includes these optimizations:

```yaml
auto-compaction-mode: periodic      # periodic auto compaction
auto-compaction-retention: "24h"    # retain 24 hours history
quota-backend-bytes: 8589934592     # 8 GiB quota
```

For details, see the [official etcd maintenance guide](https://etcd.io/docs/v3.5/op-guide/maintenance/).

> [!NOTE] Note
> For Pigsty versions before v2.6, enable automatic etcd garbage collection manually.

## Enable etcd auto garbage collection?

For Pigsty v2.0-v2.5, enable etcd auto-compaction in production. This prevents unavailability caused by the storage quota.

Edit the etcd configuration template, [`roles/etcd/templates/etcd.conf`](https://github.com/pgsty/pigsty/blob/main/roles/etcd/templates/etcd.conf#L29):

```yaml
auto-compaction-mode: periodic
auto-compaction-retention: "24h"
quota-backend-bytes: 17179869184
```

Set the related PostgreSQL clusters to [**maintenance mode**](/docs/pgsql/admin#). Then redeploy etcd with `./etcd.yml`.

This change increases the default quota from 2 GiB to 16 GiB. It retains writes from the last 24 hours to prevent unlimited growth.

## Where is PG HA data stored in etcd?

Patroni uses the [**`pg_namespace`**](/docs/pgsql/param#pg_namespace) prefix for all metadata keys. The default prefix is `/pg`. The PostgreSQL cluster name follows this prefix.

For example, the `pg-meta` cluster stores metadata under `/pg/pg-meta`:

```bash
etcdctl get /pg/pg-meta --prefix
```

Sample data:

```bash
/pg/pg-meta/config
{"ttl":30,"loop_wait":10,"retry_timeout":10,"primary_start_timeout":10,"maximum_lag_on_failover":1048576,"maximum_lag_on_syncnode":-1,"primary_stop_timeout":30,"synchronous_mode":false,"synchronous_mode_strict":false,"failsafe_mode":true,"pg_version":16,"pg_cluster":"pg-meta","pg_shard":"pg-meta","pg_group":0,"postgresql":{"use_slots":true,"use_pg_rewind":true,"remove_data_directory_on_rewind_failure":true,"parameters":{"max_connections":100,"superuser_reserved_connections":10,"max_locks_per_transaction":200,"max_prepared_transactions":0,"track_commit_timestamp":"on","wal_level":"logical","wal_log_hints":"on","max_worker_processes":16,"max_wal_senders":50,"max_replication_slots":50,"password_encryption":"scram-sha-256","ssl":"on","ssl_cert_file":"/pg/cert/server.crt","ssl_key_file":"/pg/cert/server.key","ssl_ca_file":"/pg/cert/ca.crt","shared_buffers":"7969MB","maintenance_work_mem":"1993MB","work_mem":"79MB","max_parallel_workers":8,"max_parallel_maintenance_workers":2,"max_parallel_workers_per_gather":0,"hash_mem_multiplier":8.0,"huge_pages":"try","temp_file_limit":"7GB","vacuum_cost_delay":"20ms","vacuum_cost_limit":2000,"bgwriter_delay":"10ms","bgwriter_lru_maxpages":800,"bgwriter_lru_multiplier":5.0,"min_wal_size":"7GB","max_wal_size":"28GB","max_slot_wal_keep_size":"42GB","wal_buffers":"16MB","wal_writer_delay":"20ms","wal_writer_flush_after":"1MB","commit_delay":20,"commit_siblings":10,"checkpoint_timeout":"15min","checkpoint_completion_target":0.8,"archive_mode":"on","archive_timeout":300,"archive_command":"pgbackrest --stanza=pg-meta archive-push %p","max_standby_archive_delay":"10min","max_standby_streaming_delay":"3min","wal_receiver_status_interval":"1s","hot_standby_feedback":"on","wal_receiver_timeout":"60s","max_logical_replication_workers":8,"max_sync_workers_per_subscription":6,"random_page_cost":1.1,"effective_io_concurrency":1000,"effective_cache_size":"23907MB","default_statistics_target":200,"log_destination":"csvlog","logging_collector":"on","l...
ode=prefer"}}
/pg/pg-meta/failsafe
{"pg-meta-2":"http://10.10.10.11:8008/patroni","pg-meta-1":"http://10.10.10.10:8008/patroni"}
/pg/pg-meta/initialize
7418384210787662172
/pg/pg-meta/leader
pg-meta-1
/pg/pg-meta/members/pg-meta-1
{"conn_url":"postgres://10.10.10.10:5432/postgres","api_url":"http://10.10.10.10:8008/patroni","state":"running","role":"primary","version":"4.0.1","tags":{"clonefrom":true,"version":"16","spec":"8C.32G.125G","conf":"tiny.yml"},"xlog_location":184549376,"timeline":1}
/pg/pg-meta/members/pg-meta-2
{"conn_url":"postgres://10.10.10.11:5432/postgres","api_url":"http://10.10.10.11:8008/patroni","state":"running","role":"replica","version":"4.0.1","tags":{"clonefrom":true,"version":"16","spec":"8C.32G.125G","conf":"tiny.yml"},"xlog_location":184549376,"replication_state":"streaming","timeline":1}
/pg/pg-meta/status
{"optime":184549376,"slots":{"pg_meta_2":184549376,"pg_meta_1":184549376},"retain_slots":["pg_meta_1","pg_meta_2"]}
```

## Use external existing etcd cluster?

The configuration inventory uses the hardcoded `etcd` group. Its members serve as DCS servers for PGSQL. You can initialize this group with `etcd.yml` or use an existing external cluster.

To use external etcd, define the cluster as usual. Skip `etcd.yml` because the cluster already exists and does not require deployment.

**The external etcd cluster certificate must use the same CA as Pigsty.** Otherwise, clients cannot use Pigsty's self-signed certificates.

## Add new member to existing etcd cluster?

> For the full procedure, see [Add member to etcd cluster](/docs/etcd/admin#add-member).

**Recommended: Utility script**

```bash
# First add new member to config inventory, then:
bin/etcd-add <ip>      # add single new member
bin/etcd-add <ip1>     # add multiple new members
```

**Manual method:**

```bash
etcdctl member add <etcd-?> --learner=true --peer-urls=https://<new_ins_ip>:2380 # announce new member
./etcd.yml -l <new_ins_ip> -e etcd_init=existing                                 # initialize new member
etcdctl member promote <new_ins_server_id>                                       # promote to full member
```

We recommend that you add one member at a time.

## Remove member from existing etcd cluster?

> For the full procedure, see [Remove member from etcd cluster](/docs/etcd/admin#remove-member).

**Recommended: Utility script**

```bash
bin/etcd-rm <ip>              # remove specified member
bin/etcd-rm                   # remove entire etcd cluster
```

**Manual method:**

```bash
./etcd-rm.yml -l <ins_ip>                    # Leave, stop, and delete local data by default
```

`etcd-rm.yml` includes the `etcdctl member remove` step. Do not repeat this step before or after the normal procedure. Run `member remove` manually only for troubleshooting.

Keep the target in the inventory. You can still run the removal playbook once to stop, deregister, and clean up the target locally. Then verify the remaining quorum.

## Configure etcd RBAC authentication?

Since v4.0, Pigsty enables etcd RBAC authentication by default. Set the root password with [`etcd_root_password`](/docs/etcd/param#etcd_root_password). The default is `Etcd.Root`.

**Production recommendation: Change the default password.**

```yaml
all:
  vars:
    etcd_root_password: 'YourSecurePassword'
```

**Client authentication:**

```bash
# On etcd nodes, env vars auto-configured
source /etc/profile.d/etcdctl.sh
etcdctl member list

# Manual auth config
export ETCDCTL_USER="root:YourSecurePassword"
export ETCDCTL_CACERT=/etc/etcd/ca.crt
export ETCDCTL_CERT=/etc/etcd/server.crt
export ETCDCTL_KEY=/etc/etcd/server.key
```

See [RBAC Authentication](/docs/etcd/admin#rbac-authentication).
