---
title: Configuration
weight: 4510
description: JUICE module configuration, instance definition, storage backends, and mount options.
icon: fa-solid fa-code
module: [JUICE]
categories: [Reference]
---

--------

## Concepts and Implementation

JuiceFS consists of a **metadata engine** and **data storage**.
In the current version, `meta` is passed through to `juicefs` as the metadata engine URL, and PostgreSQL is typically used in production.
Data storage is defined by `data` options passed to `juicefs format`.

JUICE module core commands:

```bash
# Format (only effective on first creation)
juicefs format --no-update <data> "<meta>" "<name>"

# Mount
juicefs mount <mount> --cache-dir <juice_cache> --metrics 0.0.0.0:<port> <meta> <path>
```

Notes:

- `--no-update` ensures existing filesystems are not overwritten.
- `data` is only used for **initial format**; it does not affect existing filesystems.
- `mount` is only used during mount, you can pass cache and concurrency options.

--------

## Module Parameters

JUICE module has only two parameters:

| Parameter                                              |  Type  | Level | Description                          |
|:-------------------------------------------------------|:------:|:-----:|:-------------------------------------|
| [`juice_cache`](/docs/juice/param#juice_cache)         | `path` |  `C`  | JuiceFS shared cache directory       |
| [`juice_instances`](/docs/juice/param#juice_instances) | `dict` |  `I`  | JuiceFS instance dict (can be empty) |
{.full-width}

- `juice_cache`: shared local cache directory for all instances, default `/data/juice`
- `juice_instances`: instance-level dict, key is filesystem name; an empty dict means no instances are managed

--------

## Instance Configuration

Each entry in `juice_instances` represents a JuiceFS instance:

| Field   | Required | Default          | Description                                  |
|:--------|:--------:|:-----------------|:---------------------------------------------|
| `path`  |   Yes    | -                | Mount point path, e.g. `/fs`                 |
| `meta`  |   Yes    | -                | Metadata engine URL (PostgreSQL recommended) |
| `data`  |    No    | `''`             | `juicefs format` options (storage backend)   |
| `unit`  |    No    | `juicefs-<name>` | systemd service name                         |
| `mount` |    No    | `''`             | Extra `juicefs mount` options                |
| `port`  |    No    | `9567`           | Metrics port (unique per node)               |
| `owner` |    No    | `root`           | Mount point owner                            |
| `group` |    No    | `root`           | Mount point group                            |
| `mode`  |    No    | `0755`           | Mount point permissions                      |
| `state` |    No    | `create`         | `create` / `absent`                          |
{.full-width}

{{% alert title="Important" color="warning" %}}
- It's recommended to explicitly set `data` on **first format** to make the storage backend clear.
- Multiple instances on the same node must use different `port` values.
{{% /alert %}}

Example:

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port: 9567
```

--------

## Storage Backends

`data` is appended to `juicefs format`, any supported backend works. Common examples:

### PostgreSQL Large Objects

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
```

### MinIO Object Storage

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage minio --bucket http://10.10.10.10:9000/juice --access-key minioadmin --secret-key minioadmin
```

### S3-Compatible Storage

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage s3 --bucket https://s3.amazonaws.com/my-bucket --access-key AKIAXXXXXXXX --secret-key XXXXXXXXXX
```

--------

## Typical Configurations

### Multi-Instance (Same Node)

```yaml
juice_instances:
  pgfs:
    path: /pgfs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port: 9567
  shared:
    path: /shared
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/shared
    data: --storage minio --bucket http://10.10.10.10:9000/shared
    port: 9568
    owner: postgres
    group: postgres
```

### Shared Mount Across Nodes

Mount the same JuiceFS on multiple nodes:

```yaml
app:
  hosts:
    10.10.10.11: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
    10.10.10.12: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
```

Only one node needs to format the filesystem; others will skip via `--no-update`.

--------

## Notes

- `port` is exposed on `0.0.0.0`. Use firewall or security group to restrict access.
- Changing `data` will not update an existing filesystem; handle migration manually.
