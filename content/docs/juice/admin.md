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

See [FAQ](faq) for more.

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

After changing config, run:

```bash
./juice.yml -l <host> -t juice_config,juice_launch
```

Render config without restart:

```bash
./juice.yml -l <host> -t juice_config
```

Notes:

- `data` only takes effect on the first `format`
- Changing `mount` options requires service restart

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
./juice.yml -l <host> -t juice_clean
./juice.yml -l <host> -e fsname=jfs -t juice_clean
```

Removal actions:

- Stop systemd service
- `umount -l` lazy unmount
- Remove unit and env files
- Reload systemd

**PostgreSQL metadata and object storage data are not deleted.**

-------------

## Add New Instance

Add a new instance in config, ensure unique port:

```yaml
juice_instances:
  newfs:
    path: /newfs
    meta: postgres://...
    data: --storage minio --bucket http://minio:9000/newfs
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

Only one node needs to format the filesystem; others will skip via `--no-update`.

-------------

## PITR Recovery

When **data is also stored in PostgreSQL** (`--storage postgres`), filesystem PITR can be done via PG PITR:

```bash
# Stop services on all nodes
systemctl stop juicefs-jfs

# Restore metadata DB with pgBackRest
pb restore --stanza=meta --type=time --target="2024-01-15 10:30:00"

# Start PostgreSQL
systemctl start postgresql

# Start JuiceFS service
systemctl start juicefs-jfs
```

If data is stored in MinIO/S3, only metadata is rolled back; objects will not.

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

- `juicefs_blockcache_hits/misses`: cache hit ratio
- `juicefs_object_request_durations_histogram_seconds`: object storage latency
- `juicefs_meta_ops_durations_histogram_seconds`: metadata op latency
