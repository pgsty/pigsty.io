---
title: Parameters
description: The MINIO module exposes 22 parameters for deploying, configuring, and removing Silo object-storage clusters.
weight: 3630
icon: fa-solid fa-sliders
categories: [Reference]
---

The MINIO module exposes **22** public parameters in two groups:

- [**`MINIO`**](#minio): 19 parameters for deploying Silo object-storage clusters
- [**`MINIO_REMOVE`**](#minio_remove): 3 parameters controlling object-storage cluster removal

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Since Pigsty v3.6, the `minio.yml` playbook no longer includes removal functionality. Removal-related parameters have been migrated to the dedicated `minio_remove` role and `minio-rm.yml` playbook.
{{% /alert %}}


----------------

## Parameter Overview

The [`MINIO`](#minio) group configures a Silo object-storage cluster, including identity, storage paths, ports, credentials, and bucket/user provisioning.

| Parameter                               |    Type    | Level | Description                                          |
|:----------------------------------------|:----------:|:-----:|:-----------------------------------------------------|
| [`minio_type`](#minio_type)             |   `enum`   | `G/C` | Reserved backend selector; currently accepts only `silo` |
| [`minio_seq`](#minio_seq)               |   `int`    |  `I`  | minio instance identifier, REQUIRED                  |
| [`minio_cluster`](#minio_cluster)       |  `string`  |  `C`  | Required object-storage cluster identity             |
| [`minio_user`](#minio_user)             | `username` |  `C`  | minio os user, `minio` by default                    |
| [`minio_https`](#minio_https)           |   `bool`   | `G/C` | Enable HTTPS for object storage? true by default     |
| [`minio_node`](#minio_node)             |  `string`  |  `C`  | minio node name pattern                              |
| [`minio_data`](#minio_data)             |   `path`   |  `C`  | minio data dir, use `{x...y}` for multiple disks     |
| [`minio_volumes`](#minio_volumes)       |  `string`  |  `C`  | minio core parameter for nodes and disks, auto-gen   |
| [`minio_domain`](#minio_domain)         |  `string`  |  `G`  | minio external domain, `sss.pigsty` by default       |
| [`minio_port`](#minio_port)             |   `port`   |  `C`  | minio service port, 9000 by default                  |
| [`minio_admin_port`](#minio_admin_port) |   `port`   |  `C`  | minio console port, 9001 by default                  |
| [`minio_access_key`](#minio_access_key) | `username` |  `C`  | root access key, `minioadmin` by default             |
| [`minio_secret_key`](#minio_secret_key) | `password` |  `C`  | root secret key, `S3User.MinIO` by default           |
| [`minio_extra_vars`](#minio_extra_vars) |  `string`  |  `C`  | extra environment variables for minio server         |
| [`minio_provision`](#minio_provision)   |   `bool`   | `G/C` | run minio provisioning tasks? true by default        |
| [`minio_alias`](#minio_alias)           |  `string`  |  `G`  | minio client alias for the deployment                |
| [`minio_endpoint`](#minio_endpoint)     |  `string`  |  `C`  | endpoint for the minio client alias                  |
| [`minio_buckets`](#minio_buckets)       | `bucket[]` |  `C`  | list of minio buckets to be created                  |
| [`minio_users`](#minio_users)           |  `user[]`  |  `C`  | list of minio users to be created                    |

The [`MINIO_REMOVE`](#minio_remove) group controls object-storage cluster removal, including safeguards, data cleanup, and package removal.

| Parameter                               |  Type  |  Level  | Description                                        |
|:----------------------------------------|:------:|:-------:|:---------------------------------------------------|
| [`minio_safeguard`](#minio_safeguard)   | `bool` | `G/C/A` | prevent accidental removal? false by default       |
| [`minio_rm_data`](#minio_rm_data)       | `bool` | `G/C/A` | remove Silo data during removal? true by default  |
| [`minio_rm_pkg`](#minio_rm_pkg)         | `bool` | `G/C/A` | uninstall Silo and mcli? false by default |

The `minio_volumes` and `minio_endpoint` are auto-generated parameters, but you can explicitly override them.



--------

## Defaults

`MINIO`: 19 public parameters, defined in [`roles/minio/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/minio/defaults/main.yml)

```yaml
#-----------------------------------------------------------------
# SILO
#-----------------------------------------------------------------
minio_type: silo                  # reserved object-storage backend selector; currently accepts only silo
#minio_seq: 1                     # minio instance identifier, REQUIRED
#minio_cluster: minio             # required minio cluster identity
minio_user: minio                 # minio os user, `minio` by default
minio_https: true                 # enable HTTPS for Silo? true by default
minio_node: '${minio_cluster}-${minio_seq}.pigsty' # minio node name pattern
minio_data: '/data/minio'         # minio data dir, use `{x...y}` for multiple disks
#minio_volumes:                   # minio core parameter, auto-generated if not specified
minio_domain: sss.pigsty          # minio external domain, `sss.pigsty` by default
minio_port: 9000                  # minio service port, 9000 by default
minio_admin_port: 9001            # minio console port, 9001 by default
minio_access_key: minioadmin      # root access key, `minioadmin` by default
minio_secret_key: S3User.MinIO    # root secret key, `S3User.MinIO` by default
minio_extra_vars: ''              # extra environment variables for minio server
minio_provision: true             # run minio provisioning tasks?
minio_alias: sss                  # minio client alias for the deployment
#minio_endpoint: https://sss.pigsty:9000 # endpoint for alias, auto-generated if not specified
minio_buckets:                    # list of minio buckets to be created
  - { name: pgsql }
  - { name: meta ,versioning: true }
  - { name: data }
minio_users:                      # list of minio users to be created
  - { access_key: pgbackrest  ,secret_key: S3User.Backup ,policy: pgsql }
  - { access_key: s3user_meta ,secret_key: S3User.Meta   ,policy: meta  }
  - { access_key: s3user_data ,secret_key: S3User.Data   ,policy: data  }
```

`MINIO_REMOVE`: 3 parameters, defined in [`roles/minio_remove/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/minio_remove/defaults/main.yml)

```yaml
#-----------------------------------------------------------------
# MINIO_REMOVE
#-----------------------------------------------------------------
minio_safeguard: false            # prevent accidental removal? false by default
minio_rm_data: true               # remove minio data during removal? true by default
minio_rm_pkg: false               # uninstall minio packages during removal? false by default
# MINIO (reference)
minio_type: silo                  # object-storage engine; currently must be silo
```




--------

## `MINIO`

This section contains parameters for the [`minio`](https://github.com/pgsty/pigsty/blob/main/roles/minio/defaults/main.yml) role,
used by the [`minio.yml`](/docs/minio/playbook#minioyml) playbook.


### `minio_type`

Parameter: `minio_type`, Type: `enum`, Level: `G/C`

This reserved object-storage backend selector defaults to—and currently accepts only—`silo`. Silo retains the MinIO S3/Admin APIs, `MINIO_*` environment variables, and disk format.

`minio` and `rustfs` are no longer valid values and fail during role identity validation. Before upgrading a legacy MinIO cluster to v4.5, independently validate backups, MinIO-to-Silo data compatibility, and rollback; changing this parameter does not migrate data.

Both the deployment and removal roles default `minio_type` to `silo`. A `minio-rm.yml` run still requires the `minio_cluster` and `minio_seq` identity parameters and remains subject to `minio_safeguard` and the data/package cleanup switches; the engine default does not bypass these removal guards.


--------


### `minio_seq`

Parameter: `minio_seq`, Type: `int`, Level: `I`

Object-storage instance identifier, a required identity parameter. No default value—you must assign it manually.

Best practice is to start from 1, increment by 1, and never reuse previously assigned sequence numbers.
The sequence number, together with the cluster name [`minio_cluster`](#minio_cluster), uniquely identifies each object-storage instance (e.g., `minio-1`).

In multi-node deployments, sequence numbers are also used to generate node names, which are written to the `/etc/hosts` file for static resolution.





--------

### `minio_cluster`

Parameter: `minio_cluster`, Type: `string`, Level: `C`

Object-storage cluster name. This parameter is required and has no default. Use it to distinguish membership and monitoring identity when deploying multiple clusters.

The cluster name, together with the sequence number [`minio_seq`](#minio_seq), uniquely identifies each object-storage instance.
For example, with cluster name `minio` and sequence `1`, the instance name is `minio-1`.

The role finds members across the entire inventory by each host's `minio_cluster` value, so the Ansible group name may differ from the cluster identity. Define this parameter explicitly in the object-storage group's cluster variables; do not define it in `all.vars`, which would mark every host as a MINIO module member.

For multiple clusters, also set distinct [`minio_alias`](#minio_alias), [`minio_domain`](#minio_domain), and [`minio_endpoint`](#minio_endpoint) values to avoid shared aliases and domain-name conflicts.





--------

### `minio_user`

Parameter: `minio_user`, Type: `username`, Level: `C`

Object-storage operating system user, default is `minio`.

Silo runs as this user, and its certificates are stored under `~/.minio/certs/`.




--------

### `minio_https`

Parameter: `minio_https`, Type: `bool`, Level: `G/C`

Enable HTTPS for the object-storage service? Default is `true`.

Pigsty's default pgBackRest `minio` repository preset uses HTTPS and validates the certificate with `/etc/pki/ca.crt`, so keep this parameter `true` when using the defaults. pgBackRest itself does not require Silo to use HTTPS; if you explicitly switch to HTTP, you must also update the storage TLS options in `pgbackrest_repo` rather than changing only this parameter.

When HTTPS is enabled, Pigsty automatically issues certificates for the selected server, containing the domain specified in [`minio_domain`](#minio_domain) and the IP addresses of each node.




--------

### `minio_node`

Parameter: `minio_node`, Type: `string`, Level: `C`

Object-storage node-name pattern used for [multi-node single-disk](/docs/minio/config#multi-node-single-disk) and [multi-node multi-disk](/docs/minio/config#multi-node-multi-disk) deployments.

Default value: `${minio_cluster}-${minio_seq}.pigsty`, which uses the instance name plus `.pigsty` suffix as the default node name.

The domain pattern specified here generates node names, which are written to `/etc/hosts` on all Silo nodes.





--------

### `minio_data`

Parameter: `minio_data`, Type: `path`, Level: `C`

Silo data directory, default value: `/data/minio`. Set this parameter to a filesystem directory, not a raw block device such as `/dev/sdb`. The MINIO role creates the directory and sets its permissions, but does not format or mount production data drives.

[Single-node single-disk](/docs/minio/config#single-node-single-disk) may use a regular directory on the root filesystem for development. [Multi-node single-disk](/docs/minio/config#multi-node-single-disk), [multi-node multi-disk](/docs/minio/config#multi-node-multi-disk), and [single-node multi-disk](/docs/minio/config#single-node-multi-disk) deployments should use independent, persistent, non-root filesystems. Distributed Silo rejects data paths on the root filesystem.

`/data/minio` may be a subdirectory of a separately mounted `/data` filesystem. If `/data` is only a directory under `/`, it is still on the root drive. For multi-drive deployments, use `{x...y}` notation for multiple mount points, such as `/data{1...4}/minio`; every expanded path should map to a separate filesystem.

See [Configuration: Storage Paths and Mounts](/docs/minio/config#storage-paths-and-mounts) for the complete requirements and verification commands.





--------

### `minio_volumes`

Parameter: `minio_volumes`, Type: `string`, Level: `C`

Silo core volume parameter. It is unset by default and generated with this rule:

```yaml
minio_volumes: "{% if minio_cluster_size|int > 1 %}https://{{ minio_node|replace('${minio_cluster}', minio_cluster)|replace('${minio_seq}',minio_seq_range) }}:{{ minio_port|default(9000) }}{% endif %}{{ minio_data }}"
```

- In single-node deployment (single or multi-drive), `minio_volumes` directly uses the [`minio_data`](#minio_data) value.
- In multi-node deployment, `minio_volumes` uses `minio_node`, `minio_port`, and `minio_data` to generate multi-node addresses.
- In multi-pool deployment, you typically need to explicitly specify and override `minio_volumes` to define multiple node pool addresses.

When specifying this parameter, ensure the values are consistent with `minio_node`, `minio_port`, and `minio_data`.








--------

### `minio_domain`

Parameter: `minio_domain`, Type: `string`, Level: `G`

Silo service domain name, default is `sss.pigsty`.

Clients can access the Silo S3 service through this domain. The name is included in the SAN (Subject Alternative Name) of certificates issued by the role, but the MINIO role does not automatically create a DNS record for `minio_domain`.

Add an explicit record through [`node_etc_hosts`](/docs/node/param#node_etc_hosts) or [`dns_records`](/docs/infra/param#dns_records), pointing it to a Silo node IP for a single-node deployment or to a load-balancer VIP for a multi-node deployment.






--------

### `minio_port`

Parameter: `minio_port`, Type: `port`, Level: `C`

Silo service port, default is `9000`.

This is the Silo S3 API listening port. Clients access object storage through this port, which is also used for inter-node communication in multi-node deployments.





--------

### `minio_admin_port`

Parameter: `minio_admin_port`, Type: `port`, Level: `C`

Silo console port, default is `9001`.

This is the listening port for Silo's web management console, available at `https://<minio-ip>:9001`.

To expose the Silo console through Nginx, add it to [`infra_portal`](/docs/infra/param#infra_portal). The console requires HTTPS and WebSocket support.





--------

### `minio_access_key`

Parameter: `minio_access_key`, Type: `username`, Level: `C`

Root access key (username), default is `minioadmin`.

This is the Silo super-administrator username with full access to every bucket and object. Change this default in production.






--------

### `minio_secret_key`

Parameter: `minio_secret_key`, Type: `password`, Level: `C`

Root secret key (password), default is `S3User.MinIO`.

This is the Silo super-administrator password, used together with [`minio_access_key`](#minio_access_key).

{{% alert title="Security Warning: Change the default password!" color="danger" %}}
Using default passwords is a high-risk behavior! Make sure to change this password in your production deployment.

Tip: `./configure -g` randomizes default passwords recognized by the configuration wizard. See the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for the complete scope.
{{% /alert %}}








--------

### `minio_extra_vars`

Parameter: `minio_extra_vars`, Type: `string`, Level: `C`

Extra environment variables passed to Silo. Silo retains the `MINIO_*` variable names.

Default is an empty string. You can use multiline strings to pass multiple environment variables:

```yaml
minio_extra_vars: |
  MINIO_BROWSER_REDIRECT_URL=https://minio.example.com
  MINIO_SERVER_URL=https://s3.example.com
```





--------

### `minio_provision`

Parameter: `minio_provision`, Type: `bool`, Level: `G/C`

Run Silo provisioning tasks? Default is `true`.

When enabled, Pigsty automatically creates the buckets and users defined in [`minio_buckets`](#minio_buckets) and [`minio_users`](#minio_users).
Set this to `false` if you don't need automatic provisioning of these resources.




--------

### `minio_alias`

Parameter: `minio_alias`, Type: `string`, Level: `G`

`mcli` client alias for the local Silo cluster, default value: `sss`.

When [`minio_provision`](#minio_provision) is enabled, this alias is written to the `mcli` configuration file (`~/.mcli/config.json`) for the Ansible execution user on every Infra node and Silo member. Hosts in both groups are configured only once. You can then use `mcli <alias>` commands directly, for example `mcli ls sss/`.

If deploying multiple Silo clusters, specify a different alias for each cluster to avoid conflicts.






--------

### `minio_endpoint`

Parameter: `minio_endpoint`, Type: `string`, Level: `C`

Endpoint for the client alias. If specified, `minio_endpoint` (for example, `https://sss.pigsty:9002`) replaces the automatically assembled `<scheme>://<minio_domain>:<minio_port>` endpoint for aliases on Infra nodes and Silo members.

```bash
mcli alias set {{ minio_alias }} {% if minio_endpoint is defined and minio_endpoint != '' %}{{ minio_endpoint }}{% else %}{% if minio_https|bool %}https{% else %}http{% endif %}://{{ minio_domain }}:{{ minio_port }}{% endif %} {{ minio_access_key }} {{ minio_secret_key }}
```

The role runs this command as the Ansible execution user on Infra nodes and Silo members.






### `minio_buckets`

Parameter: `minio_buckets`, Type: `bucket[]`, Level: `C`

List of Silo buckets to create by default:

```yaml
minio_buckets:
  - { name: pgsql }
  - { name: meta ,versioning: true }
  - { name: data }
```

Three default buckets are created with different purposes and policies:

- `pgsql` bucket: Used by default for PostgreSQL pgBackREST backup storage.
- `meta` bucket: Open bucket with versioning enabled, suitable for storing important metadata requiring version management.
- `data` bucket: Open bucket for other purposes, e.g., Supabase templates may use this bucket for business data.

Each bucket has a corresponding access policy with the same name. For example, the `pgsql` policy has full access to the `pgsql` bucket, and so on.

You can also add a `lock` flag to bucket definitions to enable object locking, preventing accidental deletion of objects in the bucket.






--------

### `minio_users`

Parameter: `minio_users`, Type: `user[]`, Level: `C`

List of Silo users to create, default value:

```yaml
minio_users:
  - { access_key: pgbackrest  ,secret_key: S3User.Backup ,policy: pgsql }
  - { access_key: s3user_meta ,secret_key: S3User.Meta   ,policy: meta  }
  - { access_key: s3user_data ,secret_key: S3User.Data   ,policy: data  }
```

The default configuration creates three users corresponding to three default buckets:

- `pgbackrest`: For PostgreSQL pgBackREST backups, with access to the `pgsql` bucket.
- `s3user_meta`: For accessing the `meta` bucket.
- `s3user_data`: For accessing the `data` bucket.

{{% alert title="Using default passwords is dangerous! Make sure to change these credentials in your deployment!" color="danger" %}}

Tip: `./configure -g` will automatically replace these passwords in the configuration template if they appear as defaults.

{{% /alert %}}




--------

## `MINIO_REMOVE`

This section contains parameters for the [`minio_remove`](https://github.com/pgsty/pigsty/blob/main/roles/minio_remove/defaults/main.yml) role,
used by the [`minio-rm.yml`](/docs/minio/playbook#minio-rmyml) playbook.


### `minio_safeguard`

Parameter: `minio_safeguard`, Type: `bool`, Level: `G/C/A`

Safeguard switch to prevent accidental deletion, default value is `false`.

When enabled, the [`minio-rm.yml`](/docs/minio/playbook/#minio-rmyml) playbook aborts and refuses to remove the Silo cluster, protecting it against accidental deletion.

It's recommended to enable this safeguard in production environments to prevent data loss from accidental operations:

```yaml
minio_safeguard: true   # When enabled, minio-rm.yml will refuse to execute
```




--------

### `minio_rm_data`

Parameter: `minio_rm_data`, Type: `bool`, Level: `G/C/A`

Remove Silo data and configuration during removal? Default value is `true`.

When enabled, the [`minio-rm.yml`](/docs/minio/playbook/#minio-rmyml) playbook deletes data directories, `/etc/default/silo`, the `.minio` user directory, and `/etc/systemd/system/silo.service`. Setting it to `false` preserves data and configuration but does not prevent service deregistration, stopping, or disabling.




--------

### `minio_rm_pkg`

Parameter: `minio_rm_pkg`, Type: `bool`, Level: `G/C/A`

Uninstall Silo packages during removal? Default value is `false`.

When enabled, the [`minio-rm.yml`](/docs/minio/playbook/#minio-rmyml) playbook uninstalls `silo` and `mcli`. This option is disabled by default so the packages remain available for later use.
