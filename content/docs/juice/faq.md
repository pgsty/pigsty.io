---
title: FAQ
weight: 4560
description: JUICE module frequently asked questions.
icon: fa-solid fa-circle-question
module: [JUICE]
categories: [Reference]
---

--------

## Port Conflicts?

Multiple instances on the same node must use different `port` values. Example:

```yaml
juice_instances:
  fs1:
    path: /fs1
    meta: postgres://...
    port: 9567
  fs2:
    path: /fs2
    meta: postgres://...
    port: 9568
```

--------

## Why does changing `data` not take effect?

`data` is only used by `juicefs format --no-update`. After filesystem creation it will not change.
To switch backend, migrate data and reformat manually.

--------

## How to add a new instance?

1. Add instance definition in config
2. Run:

```bash
./juice.yml -l <host> -e fsname=<name>
```

--------

## How to remove an instance?

1. Set instance `state` to `absent`
2. Run:

```bash
./juice.yml -l <host> -t juice_clean
```

Removal does not delete PostgreSQL metadata or object storage data.

--------

## Where is file data stored?

Depends on `data`:

- `--storage postgres`: data in PostgreSQL `pg_largeobject`
- `--storage minio/s3`: data in object storage bucket

Metadata is always stored in PostgreSQL defined by `meta`.

--------

## Multi-node mount notes?

- Use the same `meta` and instance name on all nodes
- Only one node needs to format; others will skip
- Ensure `port` does not conflict on each node

--------

## Monitoring target not generated?

`juice_register` only writes `/infra/targets/juice/` when `infra` group exists.
You can run manually:

```bash
./juice.yml -l <host> -t juice_register
```

--------

## How to change mount options?

Update `mount` in the instance and restart service:

```bash
./juice.yml -l <host> -t juice_config,juice_launch
```
