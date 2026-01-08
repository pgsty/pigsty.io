---
title: Playbook
weight: 3640
description: Manage MinIO clusters with Ansible playbooks and quick command reference.
icon: fa-solid fa-scroll
module: [MINIO]
categories: [Task]
---


The MinIO module provides two built-in playbooks for cluster management:

- [`minio.yml`](#minioyml): Install MinIO cluster
- [`minio-rm.yml`](#minio-rmyml): Remove MinIO cluster


--------

## `minio.yml`

Playbook [`minio.yml`](https://github.com/pgsty/pigsty/blob/main/minio.yml) installs the MinIO module on nodes.

- `minio-id`        : Generate/validate minio identity parameters
- `minio_install`   : Install minio
  - `minio_os_user` : Create OS user minio
  - `minio_pkg`     : Install minio/mcli packages
  - `minio_dir`     : Create minio directories
- `minio_config`    : Generate minio configuration
  - `minio_conf`    : Minio main config file
  - `minio_cert`    : Minio SSL certificate issuance
  - `minio_dns`     : Minio DNS record insertion
- `minio_launch`    : Launch minio service
- `minio_register`  : Register minio to monitoring
- `minio_provision` : Create minio aliases/buckets/users
  - `minio_alias`   : Create minio client alias (on admin node)
  - `minio_bucket`  : Create minio buckets
  - `minio_user`    : Create minio business users

Before running the playbook, complete the MinIO cluster [configuration](config) in the [config inventory](/docs/setup/config).

{{% alert title="Execution Condition" color="primary" %}}
The playbook automatically skips hosts without [`minio_seq`](/docs/minio/param#minio_seq) defined. This means you can safely execute the playbook on mixed host groups - only actual MinIO nodes will be processed.
{{% /alert %}}

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Since Pigsty v3.6, the **minio.yml** playbook focuses on cluster installation. All removal operations have been moved to the dedicated **minio-rm.yml** playbook using the **minio_remove** role.
{{% /alert %}}


--------

## `minio-rm.yml`

Playbook [`minio-rm.yml`](https://github.com/pgsty/pigsty/blob/main/minio-rm.yml) removes the MinIO cluster.

- `minio-id`          : Generate minio identity parameters for removal (with `any_errors_fatal` - stops immediately on identity validation failure)
- `minio_safeguard`   : Safety check, prevent accidental deletion (default: `false`)
- `minio_pause`       : Pause 3 seconds, allow user to abort (Ctrl+C to cancel)
- `minio_deregister`  : Remove targets from Victoria/Prometheus monitoring, clean up DNS records
- `minio_svc`         : Stop and disable minio systemd service
- `minio_data`        : Remove minio data directory (disable with `minio_rm_data=false`)
- `minio_pkg`         : Uninstall minio packages (enable with `minio_rm_pkg=true`)

{{% alert title="Execution Condition & Safety Mechanisms" color="primary" %}}
- The playbook automatically skips hosts without [`minio_seq`](/docs/minio/param#minio_seq) defined, preventing accidental operations on non-MinIO nodes
- Identity validation uses `any_errors_fatal` - the playbook stops immediately upon detecting invalid MinIO identity
- A 3-second pause before removal gives users a chance to abort the operation
{{% /alert %}}

The removal playbook uses the **minio_remove** role with the following [configurable parameters](/docs/minio/param):

- [`minio_safeguard`](/docs/minio/param#minio_safeguard): Prevents accidental deletion when set to `true`
- [`minio_rm_data`](/docs/minio/param#minio_rm_data): Controls whether MinIO data is deleted (default: `true`)
- [`minio_rm_pkg`](/docs/minio/param#minio_rm_pkg): Controls whether MinIO packages are uninstalled (default: `false`)


----------------

## Cheatsheet

Common MINIO playbook commands:

```bash
./minio.yml -l <cls>                      # Install MINIO module on group <cls>
./minio.yml -l minio -t minio_install     # Install MinIO service, prepare data dirs, without configure & launch
./minio.yml -l minio -t minio_config      # Reconfigure MinIO cluster
./minio.yml -l minio -t minio_launch      # Restart MinIO cluster
./minio.yml -l minio -t minio_provision   # Re-run provisioning (create buckets and users)

./minio-rm.yml -l minio                   # Remove MinIO cluster (using dedicated removal playbook)
./minio-rm.yml -l minio -e minio_rm_data=false  # Remove cluster but preserve data
./minio-rm.yml -l minio -e minio_rm_pkg=true    # Remove cluster and uninstall packages
```



--------

## Safeguard

To prevent accidental deletion, Pigsty's MINIO module provides a safeguard mechanism controlled by the [`minio_safeguard`](/docs/minio/param#minio_safeguard) parameter.

By default, `minio_safeguard` is `false`, allowing removal operations. If you want to protect the MinIO cluster from accidental deletion, enable this safeguard in the config inventory:

```yaml
minio_safeguard: true   # When enabled, minio-rm.yml will refuse to execute
```

If you need to remove a protected cluster, override with command-line parameters:

```bash
./minio-rm.yml -l minio -e minio_safeguard=false
```

--------

## Demo

[![asciicast](https://asciinema.org/a/566415.svg)](https://asciinema.org/a/566415)

