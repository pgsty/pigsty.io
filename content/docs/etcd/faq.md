---
title: FAQ
weight: 3470
description: Frequently asked questions about Pigsty etcd module
icon: fa-solid fa-circle-question
module: [PIGSTY]
categories: [Reference]
tags: []
---



--------

## What is etcd's role in Pigsty?

etcd is a distributed, reliable key-value store for critical system data. Pigsty uses etcd as DCS (Distributed Config Store) service for Patroni, storing PG HA status.

Patroni uses etcd for: cluster failure detection, auto failover, primary-replica switchover, and cluster config management.

etcd is critical for PG HA. etcd's availability and DR ensured through multiple distributed nodes.



--------

## What's the appropriate etcd cluster size?

If more than half (including exactly half) of etcd instances unavailable, etcd cluster enters unavailable state—refuses service.

Example: 3-node cluster allows max 1 node failure while 2 others continue; 5-node cluster tolerates 2 node failures.

Note: **Learner** instances don't count toward members—3-node cluster with 1 learner = 2 actual members, zero fault tolerance.

In prod, use odd number of instances. For prod, recommend 3-node or 5-node for reliability.



--------

## Impact of etcd unavailability?

If etcd cluster unavailable, affects PG control plane but not data plane—existing PG clusters continue running, but Patroni management ops fail.

During etcd failure: PG HA can't auto failover, can't use `patronictl` for PG management (config changes, manual failover, etc.).

Ansible playbooks unaffected by etcd failure: create DB, create user, refresh HBA/Service config. During etcd failure, operate PG clusters directly.

Note: Behavior applies to Patroni >=3.0 (Pigsty >=2.0). With older Patroni (<3.0, Pigsty 1.x), etcd/consul failure causes severe global impact:

All PG clusters demote: primaries → replicas, reject writes, etcd failure amplifies to global PG failure. Patroni 3.0 introduced DCS Failsafe—significantly improved.



--------

## What data does etcd store?

In Pigsty, etcd is PG HA only—no other config/state data.

PG HA component Patroni auto-generates and manages etcd data. If lost in etcd, Patroni auto-rebuilds.

Thus, by default, **etcd** in Pigsty = "stateless service"—destroyable and rebuildable, simplifies maintenance.

If using etcd for other purposes (K8s metadata, custom storage), backup etcd data yourself and restore after cluster recovery.



--------

## Recover from etcd failure?

Since etcd in Pigsty = PG HA only = "stateless service"—disposable, rebuildable. Failures? "restart" or "reset" to stop bleeding.

**Restart** etcd cluster:

```bash
./etcd.yml -t etcd_launch
```

**Reset** etcd cluster:

```bash
./etcd.yml
```

For custom etcd data: backup and restore after recovery.



--------

## Etcd maintenance considerations?

Simple answer: **don't fill up etcd**.

Pigsty v2.6+ enables etcd auto-compaction and 16GB backend quota—usually fine.

etcd's [data model](https://etcd.io/docs/v3.5/learning/data_model/) = each write generates new version.

Frequent writes (even few keys) = growing etcd DB size. At capacity limit, etcd rejects writes → PG HA breaks.

Pigsty's default etcd config includes optimizations:

```yaml
auto-compaction-mode: periodic      # periodic auto compaction
auto-compaction-retention: "24h"    # retain 24 hours history
quota-backend-bytes: 17179869184    # 16 GiB quota
```

More details: [etcd official maintenance guide](https://etcd.io/docs/v3.5/op-guide/maintenance/).

{{% alert title="Note" color="info" %}}
Before Pigsty v2.6? Manually enable etcd auto GC.
{{% /alert %}}





--------

## Enable etcd auto garbage collection?

Earlier Pigsty (v2.0 - v2.5)? Enable etcd auto-compaction in prod to avoid quota-based unavailability.

Edit etcd config template: [`roles/etcd/templates/etcd.conf.j2`](https://github.com/pgsty/pigsty/blob/main/roles/etcd/templates/etcd.conf.j2#L30):

```yaml
auto-compaction-mode: periodic
auto-compaction-retention: "24h"
quota-backend-bytes: 17179869184
```

Then set related PG clusters to [**maintenance mode**](/docs/pgsql/admin#) and redeploy etcd with `./etcd.yml`.

This increases default quota from 2 GiB → 16 GiB, retains last 24h writes—avoids infinite growth.



--------

## Where is PG HA data stored in etcd?

By default, Patroni uses [**`pg_namespace`**](/docs/pgsql/param#pg_namespace) prefix (default: `/pg`) for all metadata keys, followed by PG cluster name.

Example: PG cluster `pg-meta` stores metadata under `/pg/pg-meta`.

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



--------

## Use external existing etcd cluster?

Config inventory hardcodes `etcd` group—members used as DCS servers for PGSQL. Initialize with `etcd.yml` or assume external cluster exists.

To use external etcd: define as usual. Skip `etcd.yml` execution since cluster exists—no deployment needed.

**Requirement: external etcd cluster certificate must use same CA as Pigsty**—otherwise clients can't use Pigsty's self-signed certs.



--------

## Add new member to existing etcd cluster?

> For detailed process, refer to [Add member to etcd cluster](admin#add-member)

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

Recommend: add one new member at a time.



--------

## Remove member from existing etcd cluster?

> For detailed process, refer to [Remove member from etcd cluster](admin#remove-member)

**Recommended: Utility script**

```bash
bin/etcd-rm <ip>              # remove specified member
bin/etcd-rm                   # remove entire etcd cluster
```

**Manual method:**

```bash
./etcd-rm.yml -l <ins_ip>                    # use dedicated removal playbook
etcdctl member remove <etcd_server_id>       # kick from cluster
./etcd-rm.yml -l <ins_ip>                    # clean up instance
```



--------

## Configure etcd RBAC authentication?

Pigsty v4.0 enables etcd RBAC auth by default. Root password set by [`etcd_root_password`](param#etcd_root_password), default: `Etcd.Root`.

**Prod recommendation: change default password**

```yaml
all:
  vars:
    etcd_root_password: 'YourSecurePassword'
```

**Client auth:**

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

More: [RBAC Authentication](admin#rbac-authentication).

