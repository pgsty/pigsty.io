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
JuiceFS isolates caches by filesystem UUID under this directory.

```yaml
juice_cache: /data/juice
```

--------

## `juice_instances`

Parameter: `juice_instances`, type: `dict`, level: `I`

Dictionary of instance definitions, usually set at the instance level. The default is an empty dictionary, which deploys no instances. Each key is a filesystem name. Each value is an instance configuration object.

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
|:-----|:---:|:------|:-----|
| `path`  | Yes | - | Mount point path |
| `meta`  | Yes | - | Metadata engine URL (PostgreSQL recommended) |
| `data`  | No | `''` | `juicefs format` options (only effective on first creation) |
| `unit`  | No | `juicefs-<name>` | systemd service name |
| `mount` | No | `''` | Extra `juicefs mount` options |
| `port`  | No | `9567` | Metrics port (unique per node) |
| `owner` | No | `root` | Mount point owner |
| `group` | No | `root` | Mount point group |
| `mode`  | No | `0755` | Mount point permissions |
| `state` | No | `create` | `create` / `absent` |
{.full-width}

> [!WARNING] Note
> - Only `juicefs format` uses `data`. It does not update an existing filesystem.
> - Multiple instances on the same node must use different `port` values.
