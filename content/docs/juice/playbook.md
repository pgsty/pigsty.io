---
title: Playbook
weight: 4530
description: JUICE module playbook guide.
icon: fa-solid fa-scroll
module: [JUICE]
categories: [Task]
---

The JUICE module provides the `juice.yml` playbook to deploy and remove JuiceFS instances.

--------

## `juice.yml`

Task structure in [`juice.yml`](https://github.com/pgsty/pigsty/blob/main/juice.yml):

```bash
juice_id        : validate ansible-core version, cache path, instance fields, and conflicts (always)
juice_install   : install juicefs package
juice_cache     : create shared cache dir
juice_clean     : stop and remove state=absent instances; refresh targets after successful unmount
juice_instance  : create instance (state=create)
  - juice_init  : format with --no-update and verify the existing metadata volume name
  - juice_config: render the environment file (0600) and systemd unit without restarting
  - juice_launch: start services and verify the real mount with findmnt and stat -f
  - juice_dir   : set filesystem root ownership and mode after verifying the mount
juice_register  : register VictoriaMetrics targets; remove the target file if no active instances remain
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

The control node requires `ansible-core >= 2.16`. Hosts where `juice_instances` is undefined, `null`, or empty, or that lack the instance selected by `-e fsname=<name>`, are skipped. Even without `-l`, unrelated nodes receive no packages, cache directories, or empty target files. Still use `-l` to make the scope explicit.

--------

## Common Tags

| Tag | Description |
|:-----------------|:------------------------------------------------------|
| `juice_id` | Validate `ansible-core >= 2.16`, cache path, instance fields, and conflicts; always runs |
| `juice_install` | Install `juicefs` package |
| `juice_cache` | Create shared cache dir |
| `juice_clean` | Stop and remove `state: absent` instances; preserve configuration on unmount failure; refresh targets |
| `juice_instance` | Create instance (umbrella tag) |
| `juice_init` | Format with `--no-update` and verify the volume name through `juicefs status` |
| `juice_config` | Render `/etc/default/<unit>` (`0600`) and the unit (`0644`) without restarting |
| `juice_launch` | Start services and wait up to 60 seconds for a real mount through `findmnt` and `stat -f` |
| `juice_dir` | Set filesystem root ownership and mode after verifying mount readiness |
| `juice_register` | Write or remove the VictoriaMetrics target file |
{.full-width .wide .expand}

--------

## Config Updates

Render configuration only, without reloading systemd or restarting services:

```bash
./juice.yml -l <host> -t juice_config
```

Update configuration, reload systemd, ensure services are running, and wait for mounts without forcing a restart:

```bash
./juice.yml -l <host> -t juice_config,juice_launch
```

The playbook never automatically restarts a running instance. To apply new mount options immediately, run the preceding command, then manually restart the instance service:

```bash
systemctl restart juicefs-<name>
```

A restart unmounts and remounts the filesystem, interrupting open files and container bind mounts of that path. Choose an appropriate maintenance window.

--------

## Remove Instance

Removal flow:

1. Stop applications using the mount and set the instance `state` to `absent`. With the default `unit`, omit `path` and `meta`; retain an original custom `unit`.
2. Run `juice_clean`

```yaml
juice_instances:
  jfs:
    state: absent
    # unit: my-juice-unit   # retain the original custom unit, if any
```

```bash
./juice.yml -l <host> -t juice_clean
./juice.yml -l <host> -e fsname=jfs -t juice_clean
```

Removal stops and disables the systemd service (`ExecStop` runs `juicefs umount`), requires `systemctl show <unit> --property=Result` to be `success`, deletes the unit and environment file, and reloads systemd.
The role **does not run a forced lazy unmount with `umount -l`**. If a busy mount causes `ExecStop` to fail, cleanup aborts before deleting files or refreshing targets, preserving the state for troubleshooting.
After successful cleanup, `juice_clean` refreshes the node's monitoring target file, or deletes it if no active `state: create` instances remain. A full `juice.yml` run without tags also cleans up `state: absent` instances.
Do not delete the inventory entry before cleanup succeeds; otherwise the playbook cannot determine which instance to remove.

The following are **not deleted**; reclaim them manually if required:

- Metadata in the metadata engine
- File data in the PostgreSQL `jfs_blob` table or object storage
- Local cache subdirectories organized by filesystem UUID under [`juice_cache`](/docs/juice/param#juice_cache)
- Mount point directories

> [!WARNING] Earlier versions
> In v4.5.0 and earlier, `-t juice_clean` loads the cleanup task file but does not execute its tasks. Remove `state: absent` instances with a full run without tags: `./juice.yml -l <host> -e fsname=<name>`.

--------

## Monitoring Registration

`juice_register` maintains the target file on **infra nodes**, rewriting it from the node's full configuration with only `state: create` instances. It deletes the file if no such instances remain:

```text
/infra/targets/juice/<ip>.yml
```

To re-register manually:

```bash
./juice.yml -l <host> -t juice_register
```
