---
title: Playbooks
weight: 4530
description: Use ansible playbooks to manage JuiceFS filesystems, common commands reference.
icon: fa-solid fa-scroll
module: [JUICE]
categories: [Task]
---


JUICE module provides one playbook for deploying and removing JuiceFS filesystem instances:

- [`juice.yml`](#juiceyml): Deploy/remove JuiceFS instances


--------

## `juice.yml`

The [`juice.yml`](https://github.com/pgsty/pigsty/blob/main/juice.yml) playbook for JuiceFS deployment contains these subtasks:

```bash
juice_id        : Validate config, check port conflicts
juice_install   : Install juicefs package
juice_cache     : Create shared cache directory
juice_clean     : Clean instances (state=absent)
juice_instance  : Create instances (state=create)
  - juice_init  : Format filesystem
  - juice_dir   : Create mount point directory
  - juice_config: Render config files (triggers restart)
  - juice_launch: Start systemd service
juice_register  : Register to monitoring system
```


### Operation Levels

`juice.yml` supports two operation levels:

| Level  | Limit Parameter                       | Description                    |
|:------|:---------------------------|:----------------------|
| **Node** | `-l <ip>`                  | Deploy all JuiceFS instances on specified node |
| **Instance** | `-l <ip> -e fsname=<name>` | Deploy only single instance on specified node         |
{.full-width}


### Node-Level Operations

Deploy all JuiceFS instances defined on specified node:

```bash
./juice.yml -l 10.10.10.10        # Deploy all instances on this node
./juice.yml -l 10.10.10.11        # Deploy on another node
```

Node-level operations will:

- Install JuiceFS package
- Create shared cache directory
- Format and mount all defined filesystem instances
- Register all instances to monitoring system


### Instance-Level Operations

Specify single instance via `-e fsname=<name>` parameter:

```bash
# Deploy only instance named jfs on 10.10.10.10
./juice.yml -l 10.10.10.10 -e fsname=jfs

# Deploy only instance named shared on 10.10.10.11
./juice.yml -l 10.10.10.11 -e fsname=shared
```

Instance-level operations are useful for:

- **Adding new filesystem instances** to existing nodes
- Redeploying single failed instance
- Updating single instance configuration


### Common Tags

Use `-t <tag>` to selectively execute tasks:

```bash
# Only install package, don't start service
./juice.yml -l 10.10.10.10 -t juice_install

# Only update config and restart instances
./juice.yml -l 10.10.10.10 -t juice_config

# Only update monitoring registration
./juice.yml -l 10.10.10.10 -t juice_register

# Remove instances (requires state: absent in config)
./juice.yml -l 10.10.10.10 -t juice_clean
```


### Idempotency

`juice.yml` is **idempotent**, safe to run repeatedly:

- `juice_init` (format) only executes actual formatting when filesystem doesn't exist
- Repeated runs **overwrite** existing config files
- Config changes **trigger restart** of corresponding systemd services
- Suitable for batch updates after config changes

> **Tip**: To only update config without restarting all instances, use `-t juice_config` to render config only.


--------

## Removing Instances

To remove JuiceFS instances, two steps are needed:

1. Set instance's `state` to `absent` in config
2. Execute playbook's `juice_clean` task

```yaml
# Step 1: Modify config
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://...
    state : absent    # Mark for removal
```

```bash
# Step 2: Execute removal
./juice.yml -l 10.10.10.10 -t juice_clean

# Or remove only specified instance
./juice.yml -l 10.10.10.10 -e fsname=jfs -t juice_clean
```

Removal operations will:

- Stop corresponding systemd service
- Execute `umount -l` lazy unmount
- Delete systemd service files
- Delete environment config files
- Reload systemd daemon

> **Note**: Removal does not delete metadata and file data in PostgreSQL. For complete cleanup, manually delete the corresponding database.


--------

## Quick Reference

### Deployment Commands

```bash
# Deploy all instances on node
./juice.yml -l <ip>

# Deploy single instance
./juice.yml -l <ip> -e fsname=<name>

# Update config and restart
./juice.yml -l <ip> -t juice_config

# Update only single instance config
./juice.yml -l <ip> -e fsname=<name> -t juice_config
```

### Removal Commands

```bash
# Remove all instances marked absent on node
./juice.yml -l <ip> -t juice_clean

# Remove single instance
./juice.yml -l <ip> -e fsname=<name> -t juice_clean
```

### Task Tag Reference

| Tag               | Description                   |
|:-----------------|:---------------------|
| `juice_id`       | Validate config and port conflicts            |
| `juice_install`  | Install juicefs package       |
| `juice_cache`    | Create cache directory               |
| `juice_clean`    | Remove instances (state=absent)   |
| `juice_instance` | Create instances (umbrella tag)           |
| `juice_init`     | Format filesystem              |
| `juice_dir`      | Create mount point directory              |
| `juice_config`   | Render config files               |
| `juice_launch`   | Start systemd service        |
| `juice_register` | Register to VictoriaMetrics  |
{.full-width}

