---
title: Playbook
weight: 3640
description: Deploy or remove Silo object-storage clusters with the built-in Ansible playbooks.
icon: fa-solid fa-scroll
module: [MINIO]
categories: [Task]
---


The MINIO module provides two built-in playbooks:

- [`minio.yml`](#minioyml): Install and configure Silo
- [`minio-rm.yml`](#minio-rmyml): Remove Silo, its configuration, and optionally its data


--------

## `minio.yml`

[`minio.yml`](https://github.com/pgsty/pigsty/blob/main/minio.yml) runs with `hosts: all`, but its pre-tasks skip hosts where [`minio_cluster`](/docs/minio/param#minio_cluster) is undefined. The role then validates that:

- `minio_cluster` is defined and non-empty
- `minio_seq` is defined and is a non-negative integer
- `minio_type` must equal `silo`

Thus, `minio_cluster` is the module-membership gate, while invalid `minio_seq` or `minio_type` values fail identity validation explicitly. Do not define `minio_cluster` in `all.vars`.

The main task tags are:

- `minio-id`: Validate identity and compute actual members, node names, and volume parameters from `minio_cluster` across the inventory
- `minio_install`: Create the `minio` OS user, install Silo and `mcli`, and prepare data directories
  - `minio_os_user`
  - `minio_pkg`
  - `minio_dir`
- `minio_config`: Render `/etc/default/silo`, `/etc/systemd/system/silo.service`, certificates, and DNS
  - `minio_conf`
  - `minio_cert`
  - `minio_dns`
- `minio_launch`: Start or restart `silo.service`
- `minio_register`: Write VictoriaMetrics FileSD targets
- `minio_provision`: Have the cluster's first member provision `mcli` aliases, buckets, and users once

Re-running `minio.yml` may restart a running object-storage service, but it does not proactively rebuild data. Schedule production runs according to the cluster's failure budget.


--------

## `minio-rm.yml`

[`minio-rm.yml`](https://github.com/pgsty/pigsty/blob/main/minio-rm.yml) uses the same `minio_cluster` membership gate and identity validation, then runs:

- `minio_safeguard`: Accidental-removal protection, default `false`
- `minio_pause`: Pause for 3 seconds so you can abort with Ctrl+C
- `minio_deregister`: Remove VictoriaMetrics targets and DNS records
- `minio_svc`: Stop and disable the Silo service
- `minio_data`: Delete data and configuration according to [`minio_rm_data`](/docs/minio/param#minio_rm_data)
- `minio_pkg`: Uninstall Silo and `mcli` according to [`minio_rm_pkg`](/docs/minio/param#minio_rm_pkg)

> [!CAUTION] Dangerous Operation
> `minio_rm_data` defaults to `true`. A full removal run deletes every expanded `minio_data` directory. Before running it, verify `minio_cluster`, `minio_seq`, `minio_type: silo`, and all disk mount paths. To retire only the service while retaining data, explicitly pass `-e minio_rm_data=false`.

Both deployment and removal roles default `minio_type` to `silo`; other values are rejected. The removal examples still pass it explicitly as part of reviewing the package, service, certificate directory, and data paths; it is not an additional interactive confirmation gate.


----------------

## Cheatsheet

```bash
./minio.yml -l <group>                         # Deploy members with a minio_cluster identity in this limit
./minio.yml -l minio -t minio_install         # Install Silo and mcli; prepare directories
./minio.yml -l minio -t minio_config          # Re-render configuration, certificates, and DNS
./minio.yml -l minio -t minio_launch          # Restart the Silo service
./minio.yml -l minio -t minio_register        # Refresh monitoring targets
./minio.yml -l minio -t minio_provision       # Re-provision aliases, buckets, and users

./minio-rm.yml -l minio -e minio_type=silo                         # Remove Silo services, configuration, and data
./minio-rm.yml -l minio -e minio_type=silo -e minio_rm_data=false  # Remove services while preserving data and configuration
./minio-rm.yml -l minio -e minio_type=silo -e minio_rm_pkg=true    # Also uninstall Silo and mcli
```

If the configuration group name differs from `minio_cluster`, note that `-l` takes an Ansible group or host pattern, not the logical cluster name. Use a limit expression that covers every intended member.


--------

## Safeguard

For production clusters, enable accidental-removal protection in cluster variables:

```yaml
minio_safeguard: true
```

After carefully verifying the target and backups, explicitly override it when destruction is required:

```bash
./minio-rm.yml -l minio -e minio_type=silo -e minio_safeguard=false
```


--------

## Demo

[![asciicast](https://asciinema.org/a/566415.svg)](https://asciinema.org/a/566415)
