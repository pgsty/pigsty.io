---
title: Parameters
weight: 4520
description: JUICE module provides 2 global parameters for JuiceFS deployment and configuration
icon: fa-solid fa-sliders
module: [JUICE]
categories: [Reference]
---

JUICE module parameter list, **2** parameters total:

- [`juice_cache`](#juice_cache): JuiceFS cache directory
- [`juice_instances`](#juice_instances): JuiceFS instance definition dictionary


----------------

## Parameter Overview

| Parameter                                   |   Type   | Level | Description                        |
|:------------------------------------------|:------:|:----:|:--------------------------|
| [`juice_cache`](#juice_cache)             | `path` | `C`  | JuiceFS shared cache directory            |
| [`juice_instances`](#juice_instances)     | `dict` | `I`  | JuiceFS instance definitions, **required**   |
{.full-width}


--------

## Default Parameters

`JUICE`: 2 parameters, defined in [`roles/juice/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/juice/defaults/main.yml)

```yaml
#-----------------------------------------------------------------
# JUICE
#-----------------------------------------------------------------
juice_cache: /data/juice              # JuiceFS shared cache directory
juice_instances: {}                   # JuiceFS instance definitions
```


--------

## `JUICE`

This section contains parameters for the [`juice`](https://github.com/pgsty/pigsty/blob/main/roles/juice/defaults/main.yml) role,
used by the [`juice.yml`](/docs/juice/playbook#juiceyml) playbook.


### `juice_cache`

Parameter: `juice_cache`, Type: `path`, Level: `C`

Shared local cache directory for all JuiceFS instances, defaults to `/data/juice`.

JuiceFS isolates cache data by filesystem UUID under this directory, accelerating frequently accessed file reads.

```yaml
juice_cache: /data/juice
```


### `juice_instances`

Parameter: `juice_instances`, Type: `dict`, Level: `I`

JuiceFS instance definition dictionary, **required parameter**, must be explicitly configured at Host level.

Content is JSON/YAML dictionary format, Key is filesystem name (instance ID), Value is instance config object.

```yaml
juice_instances:
  jfs:                                          # Filesystem name
    path  : /fs                                 # [Required] Mount point path
    meta  : postgres://u:p@h:5432/db            # [Required] Metadata engine URL
    data  : --storage postgres --bucket ...    # Storage backend options
    unit  : juicefs-jfs                         # systemd service name
    mount : ''                                  # Extra mount options
    port  : 9567                                # Metrics port (must be unique per node)
    owner : root                                # Mount point owner
    group : root                                # Mount point group
    mode  : '0755'                              # Mount point permissions
    state : create                              # create | absent
```

Instance config field descriptions:

| Field   | Required | Default          | Description                                    |
|:--------|:---:|:-----------------|:--------------------------------------|
| `path`  | Yes  | -                | Mount point path, e.g., `/fs`, `/pgfs`                 |
| `meta`  | Yes  | -                | Metadata engine URL, typically PostgreSQL connection string          |
| `data`  | No  | `''`             | `juicefs format` storage backend params               |
| `unit`  | No  | `juicefs-<name>` | systemd service unit name                        |
| `mount` | No  | `''`             | `juicefs mount` extra params                  |
| `port`  | No  | `9567`           | Prometheus metrics port, **must be unique for multi-instance**        |
| `owner` | No  | `root`           | Mount point directory owner                               |
| `group` | No  | `root`           | Mount point directory group                               |
| `mode`  | No  | `0755`           | Mount point directory permissions                               |
| `state` | No  | `create`         | `create` to create, `absent` to remove           |
{.full-width}

**Config Examples**:

Using PostgreSQL for metadata and data storage:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port  : 9567
```

Using MinIO for data storage:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage minio --bucket http://10.10.10.10:9000/juice --access-key minioadmin --secret-key minioadmin
    port  : 9567
```

Multi-instance config (note unique ports):

```yaml
juice_instances:
  pgfs:
    path  : /pgfs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port  : 9567
  shared:
    path  : /shared
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/shared
    port  : 9568    # Must differ from pgfs
    owner : postgres
    group : postgres
```

{{% alert title="Port Conflict" color="warning" %}}
Multiple JuiceFS instances on the same node must configure different `port` values, otherwise the playbook will fail during validation.
{{% /alert %}}

