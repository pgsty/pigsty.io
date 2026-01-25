---
title: Administration
weight: 4540
description: JuiceFS filesystem management SOP - create, remove, expand, and troubleshoot
icon: fa-solid fa-building-columns
module: [JUICE]
categories: [Task]
---


Common JuiceFS management task SOPs:

**Basic Operations**

- [Initialize JuiceFS](#initialize-juicefs)
- [Remove JuiceFS](#remove-juicefs)
- [Reconfigure JuiceFS](#reconfigure-juicefs)
- [Use JuiceFS Client](#use-juicefs-client)

**Scaling & Maintenance**

- [Add New Instance](#add-new-instance)
- [Multi-Node Shared Mount](#multi-node-shared-mount)
- [PITR Filesystem Recovery](#pitr-filesystem-recovery)

**Troubleshooting**

- [Common Issue Diagnosis](#common-issue-diagnosis)
- [Performance Tuning](#performance-tuning)

For more issues, see [FAQ: JUICE](faq).


-------------

### Initialize JuiceFS

Use [`juice.yml`](playbook#juiceyml) playbook to initialize JuiceFS instances:

```bash
# Initialize all JuiceFS instances on node
./juice.yml -l 10.10.10.10

# Initialize specific instance
./juice.yml -l 10.10.10.10 -e fsname=jfs
```

Initialization flow:

1. Install `juicefs` package
2. Create shared cache directory `/data/juice`
3. Execute `juicefs format` to format filesystem
4. Create mount point directory and set permissions
5. Render systemd service config
6. Start service and wait for port ready
7. Register to VictoriaMetrics monitoring


-------------

### Remove JuiceFS

Removing JuiceFS instances requires two steps:

```bash
# Step 1: Set state to absent in config
# juice_instances:
#   jfs:
#     path: /fs
#     meta: postgres://...
#     state: absent

# Step 2: Execute removal
./juice.yml -l 10.10.10.10 -t juice_clean

# Or remove specific instance
./juice.yml -l 10.10.10.10 -e fsname=jfs -t juice_clean
```

Removal operations will:

- Stop systemd service
- Unmount filesystem (lazy umount)
- Delete service config files
- Reload systemd

> **Note**: Removal does not delete data in PostgreSQL. For complete cleanup, manually handle the database.


-------------

### Reconfigure JuiceFS

Partially execute playbook to reconfigure JuiceFS instances:

```bash
./juice.yml -l 10.10.10.10 -t juice_config
```

Config changes trigger service restart. To render config without restart, manually manage systemd service.


-------------

## Use JuiceFS Client

Once mounted, JuiceFS is a standard POSIX filesystem:

```bash
# Check mount status
df -h /fs

# Check filesystem info
juicefs status /fs

# Check filesystem stats
juicefs info /fs

# List active sessions
juicefs status postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
```

### Common Commands

```bash
# Check cache usage
juicefs warmup /fs/some/path

# Warm up cache
juicefs warmup -p 4 /fs/some/path

# Clean local cache
juicefs gc postgres://... --delete

# Export filesystem metadata (backup)
juicefs dump postgres://... > metadata.json

# Import metadata (restore)
juicefs load postgres://... < metadata.json
```


-------------

### Add New Instance

Add new JuiceFS instance to node:

```yaml
# Add new instance in inventory
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://...
    port  : 9567
  newfs:                        # New instance
    path  : /newfs
    meta  : postgres://...
    port  : 9568                # Port must be unique
```

```bash
# Deploy new instance
./juice.yml -l 10.10.10.10 -e fsname=newfs
```


-------------

### Multi-Node Shared Mount

JuiceFS supports multi-node mounting of same filesystem for shared storage:

```yaml
# Multiple nodes configure same metadata URL
app:
  hosts:
    10.10.10.11: { juice_instances: { shared: { path: /shared, meta: "postgres://..." } } }
    10.10.10.12: { juice_instances: { shared: { path: /shared, meta: "postgres://..." } } }
    10.10.10.13: { juice_instances: { shared: { path: /shared, meta: "postgres://..." } } }
```

```bash
# Deploy to all nodes
./juice.yml -l app
```

> **Note**: First-time formatting only needs to run on one node; other nodes automatically skip formatting.


-------------

### PITR Filesystem Recovery

When using PostgreSQL for metadata and data storage, leverage PostgreSQL PITR to recover filesystem to any point in time:

```bash
# 1. Stop all JuiceFS services on all nodes
systemctl stop juicefs-jfs

# 2. Use pgBackRest to restore PostgreSQL to target time
pb restore --stanza=meta --type=time --target="2024-01-15 10:30:00"

# 3. Restart PostgreSQL primary
systemctl start postgresql

# 4. Restart all JuiceFS services on all nodes
systemctl start juicefs-jfs
```

This enables filesystem recovery to any moment within the backup time range.


-------------

### Common Issue Diagnosis

#### Mount Failure Troubleshooting

```bash
# Check systemd service status
systemctl status juicefs-jfs

# View service logs
journalctl -u juicefs-jfs -f

# Check mount point
mountpoint /fs

# Manual mount test
juicefs mount postgres://... /fs --foreground
```

#### Connection Issue Troubleshooting

```bash
# Test metadata engine connection
psql "postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta" -c "SELECT 1"

# Check port listening
ss -tlnp | grep 9567

# Test metrics port
curl http://localhost:9567/metrics
```

#### Filesystem Issues

```bash
# Check filesystem status
juicefs status /fs

# Check filesystem consistency
juicefs fsck postgres://...

# View active sessions
juicefs status postgres://... --session
```


-------------

### Performance Tuning

#### Cache Optimization

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://...
    mount : --cache-size 102400 --prefetch 3    # 100GB cache, prefetch 3 blocks
```

#### Concurrency Optimization

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://...
    mount : --max-uploads 50 --max-deletes 10   # Concurrent upload/delete count
```

#### Memory Optimization

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://...
    mount : --buffer-size 300 --open-cache 3600 # Buffer size, open file cache time
```

#### Key Metrics to Monitor

Monitor JuiceFS performance via Prometheus metrics:

- `juicefs_object_request_durations_histogram_seconds`: Object storage request latency
- `juicefs_blockcache_hits/misses`: Cache hit rate
- `juicefs_fuse_*`: FUSE operation stats
- `juicefs_meta_ops_durations_histogram_seconds`: Metadata operation latency

