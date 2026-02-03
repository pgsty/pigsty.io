---
title: Playbook
weight: 4530
description: JUICE module playbook guide.
icon: fa-solid fa-scroll
module: [JUICE]
categories: [Task]
---

JUICE module provides `juice.yml` playbook to deploy and remove JuiceFS instances.

--------

## `juice.yml`

Task structure in [`juice.yml`](https://github.com/pgsty/pigsty/blob/main/juice.yml):

```bash
juice_id        : validate config, check port conflicts
juice_install   : install juicefs package
juice_cache     : create shared cache dir
juice_clean     : remove instance (state=absent)
juice_instance  : create instance (state=create)
  - juice_init  : format filesystem (--no-update)
  - juice_dir   : create mount dir
  - juice_config: render env file and systemd unit
  - juice_launch: start service and wait for metrics port
juice_register  : register to VictoriaMetrics targets
```

--------

## Scope

| Scope | Limit | Description |
|:-----|:--------|:-----|
| Node | `-l <host>` | Deploy all instances on the node |
| Instance | `-l <host> -e fsname=<name>` | Only handle specified instance |
{.full-width}

Examples:

```bash
./juice.yml -l 10.10.10.10                 # deploy all instances on the node
./juice.yml -l 10.10.10.10 -e fsname=jfs   # only deploy jfs instance
```

--------

## Common Tags

| Tag | Description |
|:-----|:-----|
| `juice_id` | Validate `juice_instances` and port conflicts |
| `juice_install` | Install `juicefs` package |
| `juice_cache` | Create shared cache dir |
| `juice_clean` | Remove instance (state=absent) |
| `juice_instance` | Create instance (umbrella tag) |
| `juice_init` | Format filesystem |
| `juice_dir` | Create mount dir |
| `juice_config` | Render config files |
| `juice_launch` | Start service |
| `juice_register` | Write VictoriaMetrics target file |
{.full-width}

--------

## Config Updates

Render config only (no restart):

```bash
./juice.yml -l <host> -t juice_config
```

Update config and restart service:

```bash
./juice.yml -l <host> -t juice_config,juice_launch
```

--------

## Remove Instance

Removal flow:

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

Removal includes: stop service, lazy unmount, remove systemd unit/env files, reload systemd.
**PostgreSQL metadata and object storage data are not deleted.**

--------

## Monitoring Registration

`juice_register` writes target file on **infra node**:

```
/infra/targets/juice/<hostname>.yml
```

To re-register manually:

```bash
./juice.yml -l <host> -t juice_register
```
