---
title: Administration
weight: 4540
description: JUICE module operations and troubleshooting guide.
icon: fa-solid fa-building-columns
module: [JUICE]
categories: [Task]
---

Common operations:

- [Initialize Instance](#initialize-instance)
- [Reconfigure](#reconfigure)
- [Remove Instance](#remove-instance)
- [Add New Instance](#add-new-instance)
- [Shared Mount Across Nodes](#shared-mount-across-nodes)
- [PITR Recovery](#pitr-recovery)
- [Troubleshooting](#troubleshooting)
- [Performance Tuning](#performance-tuning)

See [FAQ](/docs/juice/faq/) for more.

-------------

## Initialize Instance

```bash
./juice.yml -l <host>
./juice.yml -l <host> -e fsname=<name>
```

Initialization steps:

- Install `juicefs` package
- Create shared cache dir (default `/data/juice`)
- Run `juicefs format --no-update` (only effective on first creation)
- Create mount point and set permissions
- Render systemd unit and env files
- Start service and wait for metrics port
- Register to VictoriaMetrics (if infra node exists)

-------------

## Reconfigure

After configuration changes, we recommend this command to update the configuration and make sure the service is running:

```bash
./juice.yml -l <host> -t juice_config,juice_launch
```

To generate the configuration without changing the service state:

```bash
./juice.yml -l <host> -t juice_config
```

Notes:

- `juice_config,juice_launch` sets the service state to `started`. It does not force a restart of a running instance.
- `data` only takes effect on the first `format`
- After changing `mount` options, manually restart the instance service (`systemctl restart juicefs-<name>`)

-------------

## Remove Instance

1. Set instance `state` to `absent`
2. Run `juice_clean`

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://...
    state: absent
```

```bash
./juice.yml -l <host> -t juice_clean,juice_register
./juice.yml -l <host> -e fsname=jfs -t juice_clean,juice_register
```

Removal actions:

- Stop systemd service
- `umount -l` lazy unmount
- Remove unit and env files
- Reload systemd
- Rewrite this node's VictoriaMetrics target file, removing instances with `state=absent`

**PostgreSQL metadata, PostgreSQL `jfs_blob` data tables, and object-storage data are not deleted.**

If you run only `-t juice_clean`, monitoring targets remain unchanged. Removed instances temporarily retain stale scrape endpoints. The commands above also run `juice_register` to update these targets.

-------------

## Add New Instance

Add a new instance to the configuration. Give it a unique port:

```yaml
juice_instances:
  newfs:
    path: /newfs
    meta: postgres://...
    data: --storage minio --bucket https://sss.pigsty:9000/newfs --access-key <s3_access_key> --secret-key <s3_secret_key>
    port: 9568
```

Deploy:

```bash
./juice.yml -l <host> -e fsname=newfs
```

-------------

## Shared Mount Across Nodes

Configure the same `meta` and instance name on multiple nodes:

```yaml
app:
  hosts:
    10.10.10.11: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
    10.10.10.12: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
```

Only one node needs to format the filesystem. Other nodes skip this operation because of `--no-update`.

-------------

## PITR Recovery

Restore JuiceFS metadata and data to a mutually consistent state. Before any restore, stop every writer. Unmount or stop the corresponding JuiceFS service on every client. Identify the exact PostgreSQL cluster and target time. Confirm that a backup is available:

```bash
# Inspect Patroni members; inspect the target stanza's backup on a database node
pig pt list <cluster>
pig pb info -s <stanza>

# On the target database node, run the restore command as postgres
sudo -iu postgres pg-pitr -s <stanza> -t "2026-08-14 10:30:00+08"
```

> [!CAUTION] PITR overwrites the PostgreSQL data directory
> First, confirm the exact cluster name, a recent backup, the recovery target, and a rollback plan. Only then follow the [PostgreSQL PITR tutorial](/docs/pgsql/tutorial/pitr/) to stop Patroni/PostgreSQL and restore the data. The `pg-pitr` command does not stop services, repair Patroni/DCS, validate data, or rebuild replicas. The command above is not a complete recovery procedure.

If metadata and the `--storage postgres` `jfs_blob` table share the restored PostgreSQL database, PITR can restore both to the same time. If they reside in different databases or clusters, design a coordinated recovery point for both.

If file data resides in Silo/S3, PostgreSQL PITR **rolls back metadata only**. It does not restore objects. Newer objects can remain. Older objects can be unavailable if they were deleted or removed by garbage collection.

Recovery depends on object versioning, trash, and lifecycle policies. Do not run garbage collection until validation is complete.

-------------

## Troubleshooting

### Mount Fails

```bash
systemctl status juicefs-jfs
journalctl -u juicefs-jfs -f
mountpoint /fs
```

### Metadata Connection Issues

```bash
psql "postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta" -c "SELECT 1"
```

### Metrics Port Check

```bash
ss -tlnp | grep 9567
curl http://localhost:9567/metrics
```

-------------

## Performance Tuning

Pass `juicefs mount` options via `mount`:

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://...
    mount: --cache-size 102400 --prefetch 3 --max-uploads 50
```

Key metrics to watch:

- `juicefs_blockcache_hits/juicefs_blockcache_miss`: cache hit ratio
- `juicefs_object_request_durations_histogram_seconds`: object storage latency
- `juicefs_transaction_durations_histogram_seconds`: metadata transaction latency
