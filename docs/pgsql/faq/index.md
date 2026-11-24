# FAQ

> Frequently asked questions about PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

-----------------------

## Why can't my current user use the `pg` admin alias?

Since Pigsty v4.0, only members of `admin` on administration nodes can manage global Patroni and PostgreSQL clusters with `pg`.

The [**`node.yml`**](/docs/node/playbook#nodeyml) playbook creates the administration user `dba` with this permission.
To grant the permission to your current user, explicitly add that user to the `admin` group:

```bash
sudo usermod -aG admin <username>
```


-----------------------

## PGSQL Init Fails: Fail to wait for postgres/patroni primary

Several conditions can cause this error.
[Check](https://github.com/pgsty/pigsty/discussions/338) the Ansible, systemd, Patroni, and PostgreSQL logs to find the cause.

- Possibility 1: Cluster config error - find and fix the incorrect config items.
- Possibility 2: A cluster with the same name exists, or the previous same-named cluster primary was improperly removed.
- Possibility 3: Residual metadata from a same-named cluster remains in DCS. First inspect the exact keyspace with `etcdctl get --prefix /pg/<cls>/`; only after confirming the backup and full cluster name should you use `etcdctl del --prefix /pg/<cls>/`. The trailing `/` is the namespace boundary and must not be omitted, or a cluster whose name merely starts with the same text can also match. This is destructive; prefer the controlled decommissioning workflow.
- Possibility 4: Your PostgreSQL or node-related RPM pkgs were not successfully installed.
- Possibility 5: Your Watchdog kernel module was not properly enabled/loaded.
- Possibility 6: The locale you specified during database init doesn't exist (e.g., used `en_US.UTF8` but English language pack or Locale support wasn't installed).
- If you encounter other causes, please submit an Issue or ask the community for help.






-----------------------

## PGSQL Init Fails: Fail to wait for postgres/patroni replica

There are several possible causes:

**Immediate failure**: Possible causes include configuration errors, network problems, and corrupted DCS metadata.
Check `/pg/log` to find the actual cause.

**Failure after some time**: The source instance may have corrupted data.
See the FAQ about replica creation when data is corrupted.

**Timeout after a long time**: The `wait for postgres replica` task can time out after 30 minutes or more.
This is common for large clusters.
For example, replica creation for a cluster larger than 1TB may take hours.

In this case, replica creation continues in the background.
Use `pg list <cls>` to check cluster status.
Wait until the replica catches up with the primary.
Then run the remaining tasks to complete replica initialization:

```bash
./pgsql.yml -t pg_hba,pg_reload,pg_backup,pgbouncer,pg_vip,pg_dns,pg_service,pg_exporter,pg_register -l <problematic_replica>
```


-----------------------

## PGSQL Init Fails: ABORT due to pg_safeguard enabled

The target PostgreSQL instance has deletion protection enabled.
Disable `pg_safeguard` to remove it.

If the deletion safeguard [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) is enabled, you cannot remove running PGSQL instances using `bin/pgsql-rm` or the `pgsql-rm.yml` playbook.

To disable `pg_safeguard`, set it to `false` in the inventory.
Alternatively, pass `-e pg_safeguard=false` when you run the playbook.

```bash
./pgsql-rm.yml -e pg_safeguard=false -l <cls_to_remove>
```







-----------------------

## How to Ensure No Data Loss During Failover?

> Use the `crit.yml` param template, set `pg_rpo` to `0`, or [config the cluster](/docs/pgsql/admin/cluster/#config-cluster) for sync commit mode.

Consider using [**Sync Standby**](/docs/pgsql/config/cluster/#sync-standby) and [**Quorum Commit**](/docs/pgsql/config/cluster/#quorum-commit) to ensure zero data loss during failover.

For more details, see the intro in [Security Considerations - Availability](/docs/deploy/security/#availability).






-----------------------

## How to Rescue When Disk is Full?

If the disk is full and shell commands cannot run, use `rm -rf /pg/dummy` to release emergency space.

The default [`pg_dummy_filesize`](/docs/pgsql/param#pg_dummy_filesize) is `64MB`.
For production, increase it to `8GB` or more.

Pigsty creates `/pg/dummy` on the main PGSQL data disk.
Delete this file to release emergency space.

This space lets you run shell scripts to reclaim more space.
For example, you can remove unnecessary logs, WAL, old data, WAL archives, or backups.






-----------------------

## How to Create a Replica When Cluster Data is Corrupted?

Pigsty sets `clonefrom: true` in each instance's Patroni configuration.
This marks the instance as a source for replica creation.

Corrupted data files on a source instance can cause replica creation to fail.
Set `clonefrom: false` on that instance to prevent use of its data:

```bash
$ vi /etc/patroni/patroni.yml

tags:
  nofailover: false
  clonefrom: true      # ----------> change to false
  noloadbalance: false
  nosync: false
  version:  '18'
  spec: '4C.8G.50G'
  conf: 'oltp.yml'

$ systemctl reload patroni    # Reload Patroni config
```



----------------

## What is the Perf Overhead of PostgreSQL Monitoring?

A normal PostgreSQL instance scrape takes about 200ms.
The default scrape interval is 10 seconds.
The overhead is usually negligible for a production database instance with multiple CPU cores.

Pigsty monitors in-database objects by default.
For a database with hundreds of thousands of tables or indexes, a scrape may take several seconds.

You can change the Prometheus scrape frequency.
Keep the scrape interval significantly longer than the time required for one scrape.




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
