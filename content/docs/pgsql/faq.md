---
title: FAQ
weight: 2210
description: Frequently asked questions about PostgreSQL
icon: fa-solid fa-circle-question
module: [PGSQL]
categories: [Reference]
---


-----------------------

## Why can't my current user use the `pg` admin alias?

Starting from Pigsty v4.0, permissions to manage global Patroni / PostgreSQL clusters using the `pg` admin alias have been tightened to the admin group (`admin`) on admin nodes.

The admin user (`dba`) created by the [**`node.yml`**](/docs/node/playbook#nodeyml) playbook has this permission by default. If your current user wants this permission, you need to explicitly add them to the `admin` group:

```bash
sudo usermod -aG admin <username>
```


-----------------------

## PGSQL Init Fails: Fail to wait for postgres/patroni primary

There are multiple possible causes for this error. You need to [check](https://github.com/pgsty/pigsty/discussions/338) Ansible, Systemd / Patroni / PostgreSQL logs to find the real cause.

- Possibility 1: Cluster config error - find and fix the incorrect config items.
- Possibility 2: A cluster with the same name exists, or the previous same-named cluster primary was improperly removed.
- Possibility 3: Residual garbage metadata from a same-named cluster in DCS - decommissioning wasn't completed properly. Use `etcdctl del --prefix /pg/<cls>` to manually delete residual data (be careful).
- Possibility 4: Your PostgreSQL or node-related RPM pkgs were not successfully installed.
- Possibility 5: Your Watchdog kernel module was not properly enabled/loaded.
- Possibility 6: The locale you specified during database init doesn't exist (e.g., used `en_US.UTF8` but English language pack or Locale support wasn't installed).
- If you encounter other causes, please submit an Issue or ask the community for help.






-----------------------

## PGSQL Init Fails: Fail to wait for postgres/patroni replica

There are several possible causes:

**Immediate failure**: Usually due to config errors, network issues, corrupted DCS metadata, etc. You must check `/pg/log` to find the actual cause.

**Failure after a while**: This might be due to source instance data corruption. See PGSQL FAQ: How to create a replica when data is corrupted?

**Timeout after a long time**: If the `wait for postgres replica` task takes 30 minutes or longer and fails due to timeout, this is common for large clusters (e.g., 1TB+, may take hours to create a replica).

In this case, the underlying replica creation process is still ongoing. You can use `pg list <cls>` to check cluster status and wait for the replica to catch up with the primary. Then use the following command to continue with remaining tasks and complete the full replica init:

```bash
./pgsql.yml -t pg_hba,pg_reload,pg_backup,pgbouncer,pg_vip,pg_dns,pg_service,pg_exporter,pg_register -l <problematic_replica>
```


-----------------------

## PGSQL Init Fails: ABORT due to pg_safeguard enabled

This means the PostgreSQL instance being cleaned has the deletion safeguard enabled. Disable `pg_safeguard` to remove the Postgres instance.

If the deletion safeguard [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) is enabled, you cannot remove running PGSQL instances using `bin/pgsql-rm` or the `pgsql-rm.yml` playbook.

To disable `pg_safeguard`, you can set `pg_safeguard` to `false` in the config inventory, or use the command param `-e pg_safeguard=false` when executing the playbook.

```bash
./pgsql-rm.yml -e pg_safeguard=false -l <cls_to_remove>    # Force override pg_safeguard
```




-----------------------

## How to Enable HugePages for PostgreSQL?

> Use `node_hugepage_count` and `node_hugepage_ratio` or `/pg/bin/pg-tune-hugepage`

If you plan to enable HugePages, consider using [`node_hugepage_count`](/docs/node/param#node_hugepage_count) and [`node_hugepage_ratio`](/docs/node/param#node_hugepage_ratio), and apply with `./node.yml -t node_tune`.

HugePages have pros and cons for databases. The advantage is that memory is managed exclusively, eliminating concerns about being reallocated and reducing database OOM risk. The disadvantage is that it may negatively impact performance in certain scenarios.

Before PostgreSQL starts, you need to allocate **enough** huge pages. The wasted portion can be reclaimed using the `pg-tune-hugepage` script, but this script is only available for PostgreSQL 15+.

If your PostgreSQL is already running, you can enable huge pages using the following method (PG15+ only):

```bash
sync; echo 3 > /proc/sys/vm/drop_caches   # Flush disk, release system cache (be prepared for database perf impact)
sudo /pg/bin/pg-tune-hugepage             # Write nr_hugepages to /etc/sysctl.d/hugepage.conf
pg restart <cls>                          # Restart postgres to use hugepage
```






-----------------------

## How to Ensure No Data Loss During Failover?

> Use the `crit.yml` param template, set `pg_rpo` to `0`, or [config the cluster](/docs/pgsql/admin#config-cluster) for sync commit mode.

Consider using [Sync Standby](/docs/pgsql/config#sync-standby) and [Quorum Commit](/docs/pgsql/config#quorum-commit) to ensure zero data loss during failover.

For more details, see the intro in [Security Considerations - Availability](/docs/setup/security#availability).






-----------------------

## How to Rescue When Disk is Full?

If the disk is full and even Shell commands cannot execute, `rm -rf /pg/dummy` can release some emergency space.

By default, [`pg_dummy_filesize`](/docs/pgsql/param#pg_dummy_filesize) is set to `64MB`. In prod envs, it's recommended to increase it to `8GB` or larger.

It will be placed at `/pg/dummy` path on the PGSQL main data disk. You can delete this file to free up some emergency space: at least it will allow you to run some shell scripts on that node to further reclaim other space.






-----------------------

## How to Create a Replica When Cluster Data is Corrupted?

Pigsty sets the `clonefrom: true` tag in the patroni config of all instances, marking the instance as available for creating replicas.

If an instance has corrupted data files causing errors when creating new replicas, you can set `clonefrom: false` to avoid pulling data from the corrupted instance. Here's how:

```bash
$ vi /pg/bin/patroni.yml

tags:
  nofailover: false
  clonefrom: true      # ----------> change to false
  noloadbalance: false
  nosync: false
  version:  '15'
  spec: '4C.8G.50G'
  conf: 'oltp.yml'

$ systemctl reload patroni    # Reload Patroni config
```



----------------

## What is the Perf Overhead of PostgreSQL Monitoring?

A regular PostgreSQL instance scrape takes about 200ms. The scrape interval defaults to 10 seconds, which is almost negligible for a prod multi-core database instance.

Note that Pigsty enables in-database object monitoring by default, so if your database has hundreds of thousands of table/index objects, scraping may increase to several seconds.

You can modify Prometheus's scrape frequency. Please ensure: the scrape cycle should be significantly longer than the duration of a single scrape.




----------------

## How to Monitor an Existing PostgreSQL Instance?

Detailed monitoring config instructions are provided in [PGSQL Monitor](/docs/pgsql/monitor).




----------------

## How to Manually Remove PostgreSQL Monitoring Targets?

```bash
./pgsql-rm.yml -t rm_metrics -l <cls>     # Remove all instances of cluster 'cls' from victoria
```

```bash
bin/pgmon-rm <ins>     # Remove a single instance 'ins' monitoring object from Victoria, especially suitable for removing added external instances
```


