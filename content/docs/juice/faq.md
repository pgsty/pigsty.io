---
title: FAQ
weight: 4560
description: Frequently asked questions about the JUICE module
icon: fa-solid fa-circle-question
module: [JUICE]
categories: [Reference]
---


--------

## Port conflict - what to do?

Multiple JuiceFS instances on the same node must configure different `port` values. If you encounter port conflict error:

```
juice_instances have port conflicts: [9567, 9567]
```

Assign unique ports to each instance in config:

```yaml
juice_instances:
  fs1:
    path: /fs1
    meta: postgres://...
    port: 9567
  fs2:
    path: /fs2
    meta: postgres://...
    port: 9568    # Must be different
```


--------

## How to add new instance?

1. Add new instance definition in config
2. Execute playbook specifying new instance name

```bash
./juice.yml -l 10.10.10.10 -e fsname=newfs
```


--------

## How to remove instance?

1. Set instance's `state` to `absent` in config
2. Execute `juice_clean` task

```bash
./juice.yml -l 10.10.10.10 -e fsname=jfs -t juice_clean
```


--------

## Where is filesystem data stored?

Depends on `data` parameter config:

- **PostgreSQL Large Objects**: Data stored in PostgreSQL's `pg_largeobject` table
- **MinIO/S3**: Data stored in specified bucket in object storage

Metadata is always stored in the PostgreSQL database specified by `meta` parameter.


--------

## What storage backends are supported?

JuiceFS supports multiple storage backends. Common ones in Pigsty:

- `postgres`: PostgreSQL large object storage
- `minio`: MinIO object storage
- `s3`: AWS S3 or S3-compatible storage

See [JuiceFS official docs](https://juicefs.com/docs/community/how_to_setup_object_storage) for full list.


--------

## Can I mount same filesystem on multiple nodes?

Yes. Just configure the same `meta` URL on multiple nodes; JuiceFS handles concurrent access automatically.

First-time formatting only needs to run on one node; other nodes automatically skip formatting.


--------

## How to use PITR to recover filesystem?

When using PostgreSQL for metadata and data storage:

1. Stop all JuiceFS services
2. Use pgBackRest to restore PostgreSQL to target point in time
3. Restart PostgreSQL and JuiceFS services

See [Administration: PITR Filesystem Recovery](admin#pitr-filesystem-recovery) for detailed steps.


--------

## Can cache directory be customized?

Yes, via [`juice_cache`](param#juice_cache) parameter:

```yaml
juice_cache: /data/juice    # Default
# or
juice_cache: /ssd/juice     # Use SSD for cache
```


--------

## How to configure mount options?

Pass extra `juicefs mount` parameters via instance's `mount` field:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://...
    mount : --cache-size 102400 --prefetch 3
```

Common options:

| Option              | Description            |
|:----------------|:--------------|
| `--cache-size`  | Local cache size (MB)    |
| `--prefetch`    | Prefetch block count          |
| `--buffer-size` | Read/write buffer size (MB)   |
| `--max-uploads` | Max concurrent uploads       |
| `--open-cache`  | Open file cache time (seconds)   |
{.full-width}

