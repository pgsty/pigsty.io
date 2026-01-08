---
title: Playbook
weight: 3440
description: Manage etcd clusters with Ansible playbooks and quick command reference.
icon: fa-solid fa-scroll
module: [ETCD]
categories: [Task]
---


The ETCD module provides two core playbooks: [`etcd.yml`](#etcdyml) for installing and configuring etcd clusters, and [`etcd-rm.yml`](#etcd-rmyml) for removing etcd clusters or members.

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Since Pigsty v3.6, the `etcd.yml` playbook focuses on cluster installation and member addition. All removal operations have been moved to the dedicated `etcd-rm.yml` playbook using the `etcd_remove` role.
{{% /alert %}}


--------

## `etcd.yml`

Playbook source: [`etcd.yml`](https://github.com/pgsty/pigsty/blob/main/etcd.yml)

This playbook installs and configures an etcd cluster on the hardcoded `etcd` group, then launches the etcd service.

The following subtasks are available in [`etcd.yml`](https://github.com/pgsty/pigsty/blob/main/etcd.yml):

- `etcd_assert`   : Validate etcd identity parameters (`etcd_seq` must be defined as a non-negative integer)
- `etcd_install`  : Install etcd packages
- `etcd_dir`      : Create etcd data and configuration directories
- `etcd_config`   : Generate etcd configuration
  - `etcd_conf`   : Generate etcd main config file `/etc/etcd/etcd.conf`
  - `etcd_cert`   : Generate etcd TLS certificates (CA, server cert, private key)
- `etcd_member`   : Add new member to existing cluster (only runs when `etcd_init=existing`)
- `etcd_launch`   : Launch etcd service
- `etcd_auth`     : Enable RBAC authentication (create root user and enable auth)
- `etcd_register` : Register etcd to VictoriaMetrics/Prometheus monitoring



--------

## `etcd-rm.yml`

Playbook source: [`etcd-rm.yml`](https://github.com/pgsty/pigsty/blob/main/etcd-rm.yml)

A dedicated playbook for removing etcd clusters or individual members. The following subtasks are available in [`etcd-rm.yml`](https://github.com/pgsty/pigsty/blob/main/etcd-rm.yml):

- `etcd_safeguard`  : Check safeguard and abort if enabled
- `etcd_pause`      : Pause for 3 seconds, allowing user to abort with Ctrl-C
- `etcd_deregister` : Remove etcd registration from VictoriaMetrics monitoring targets
- `etcd_leave`      : Try graceful leaving etcd cluster before purge
- `etcd_svc`        : Stop and disable etcd service with systemd
- `etcd_data`       : Remove etcd data (disable with `etcd_rm_data=false`)
- `etcd_pkg`        : Uninstall etcd packages (enable with `etcd_rm_pkg=true`)

The removal playbook uses the [`etcd_remove`](https://github.com/pgsty/pigsty/blob/main/roles/etcd_remove) role with the following configurable parameters:

- [`etcd_safeguard`](param#etcd_safeguard): Prevents accidental removal when set to `true`
- [`etcd_rm_data`](param#etcd_rm_data): Controls whether ETCD data is deleted (default: `true`)
- [`etcd_rm_pkg`](param#etcd_rm_pkg): Controls whether ETCD packages are uninstalled (default: `false`)



--------

## Demo

[![asciicast](https://asciinema.org/a/566414.svg)](https://asciinema.org/a/566414)



----------------

## Cheatsheet

**Etcd Installation & Configuration:**

```bash
./etcd.yml                                      # Initialize etcd cluster
./etcd.yml -t etcd_launch                       # Restart entire etcd cluster
./etcd.yml -t etcd_conf                         # Refresh /etc/etcd/etcd.conf with latest state
./etcd.yml -t etcd_cert                         # Regenerate etcd TLS certificates
./etcd.yml -l 10.10.10.12 -e etcd_init=existing # Scale out: add new member to existing cluster
```

**Etcd Removal & Cleanup:**

```bash
./etcd-rm.yml                                   # Remove entire etcd cluster
./etcd-rm.yml -l 10.10.10.12                    # Remove single etcd member
./etcd-rm.yml -e etcd_safeguard=false           # Override safeguard to force removal
./etcd-rm.yml -e etcd_rm_data=false             # Stop service only, preserve data
./etcd-rm.yml -e etcd_rm_pkg=true               # Also uninstall etcd packages
```

**Convenience Scripts:**

```bash
bin/etcd-add <ip>                               # Add new member to existing cluster (recommended)
bin/etcd-rm <ip>                                # Remove specific member from cluster (recommended)
bin/etcd-rm                                     # Remove entire etcd cluster
```



--------

## Safeguard

To prevent accidental deletion, Pigsty's ETCD module provides a safeguard mechanism controlled by the [`etcd_safeguard`](param#etcd_safeguard) parameter, which defaults to `false` (safeguard disabled).

For production etcd clusters that have been initialized, it's recommended to enable the safeguard to prevent accidental deletion of existing etcd instances:

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    10.10.10.12: { etcd_seq: 3 }
  vars:
    etcd_cluster: etcd
    etcd_safeguard: true  # Enable safeguard protection
```

When `etcd_safeguard` is set to `true`, the `etcd-rm.yml` playbook will detect running etcd instances and abort to prevent accidental deletion. You can override this behavior using command-line parameters:

```bash
./etcd-rm.yml -e etcd_safeguard=false  # Force override safeguard
```

Unless you clearly understand what you're doing, we do not recommend arbitrarily removing etcd clusters.

