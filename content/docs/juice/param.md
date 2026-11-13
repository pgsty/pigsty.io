---
title: Parameters
weight: 4520
description: JUICE module parameters (2 total).
icon: fa-solid fa-sliders
module: [JUICE]
categories: [Reference]
---

The JUICE module has **2** parameters:

- [`juice_cache`](#juice_cache): shared cache directory
- [`juice_instances`](#juice_instances): instance definition dict

----------------

## Parameter Overview

| Parameter | Type | Level | Description |
|:-----|:----:|:----:|:-----|
| [`juice_cache`](#juice_cache) | `path` | `C` | JuiceFS shared cache directory |
| [`juice_instances`](#juice_instances) | `dict` | `I` | JuiceFS instance definition dict (can be empty) |
{.full-width}

> **Level**: `C` = cluster level, `I` = instance level.

--------

## Default Parameters

Defined in [`roles/juice/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/juice/defaults/main.yml):

```yaml
#-----------------------------------------------------------------
# JUICE
#-----------------------------------------------------------------
juice_cache: /data/juice
juice_instances: {}
```

--------

## `juice_cache`

Parameter: `juice_cache`, type: `path`, level: `C`

Shared local cache directory for all JuiceFS instances, default `/data/juice`.
JuiceFS separates caches by filesystem UUID under this directory. It must be a non-root absolute path without `.` or `..` components and must neither equal nor overlap any active instance's mount `path`.

```yaml
juice_cache: /data/juice
```

--------

## `juice_instances`

Parameter: `juice_instances`, type: `dict`, level: `I`

Dictionary of instance definitions, usually set at the instance level. The default is an empty dictionary, which deploys no instances. Keys are filesystem names (JuiceFS volume names), and values are instance configuration objects.
`juice.yml` skips hosts where this parameter is undefined, `null`, or empty, and hosts without a matching instance for `-e fsname=<name>`. It does not install packages, create cache directories, or write targets on those hosts.

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://u:p@h:5432/db
    data: --storage postgres --bucket ...
    port: 9567
```

Instance fields:

| Field | Required | Default | Description |
|:--------|:--:|:-----------------|:-----------------------------------|
| `path` | Conditional | - | Non-root absolute mount path; required for `create`, unique on the node |
| `meta` | Conditional | - | Metadata engine URL; required for `create`, PostgreSQL recommended |
| `data`  | No | `''` | `juicefs format` options (only effective on first creation) |
| `unit` | No | `juicefs-<name>` | Bare systemd service name without `.service`, unique across all instances |
| `mount` | No | `''` | Extra `juicefs mount` options |
| `port` | No | `9567` | Metrics port, unique among active instances on the node |
| `owner` | No | `root` | Filesystem root owner, set after mounting |
| `group` | No | `root` | Filesystem root group, set after mounting |
| `mode` | No | `0755` | Filesystem root mode, set after mounting |
| `state` | No | `create` | `create` / `absent` |
{.full-width .wide .expand}

> [!WARNING] Note
> - Only `juicefs format` uses `data`. It does not update an existing filesystem.
> - Instances on the same node must have different `port` and `path` values.
> - Names must be 3–63 lowercase letters, digits, or hyphens, without leading or trailing hyphens. `state: absent` entries are exempt; see [**Configuration Validation**](/docs/juice/config#configuration-validation).
