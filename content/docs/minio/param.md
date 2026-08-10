---
title: Parameters
description: The MINIO module exposes 28 parameters for selecting and configuring Silo, MinIO, or RustFS object-storage clusters.
weight: 3630
icon: fa-solid fa-sliders
categories: [Reference]
---

The MINIO module exposes **28** public parameters in two groups:

- [**`MINIO`**](#minio): 25 parameters for engine selection and object-storage cluster deployment
- [**`MINIO_REMOVE`**](#minio_remove): 3 parameters controlling object-storage cluster removal

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Since Pigsty v3.6, the `minio.yml` playbook no longer includes removal functionality. Removal-related parameters have been migrated to the dedicated `minio_remove` role and `minio-rm.yml` playbook.
{{% /alert %}}


----------------

## Parameter Overview

The [`MINIO`](#minio) group selects and configures an object-storage cluster, including identity, storage paths, ports, credentials, RustFS observability, and bucket/user provisioning.

| Parameter                               |    Type    | Level | Description                                          |
|:----------------------------------------|:----------:|:-----:|:-----------------------------------------------------|
| [`minio_type`](#minio_type)             |   `enum`   | `G/C` | Object-storage engine: `silo`, `minio`, or `rustfs` |
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
| [`rustfs_metrics_enabled`](#rustfs_metrics_enabled) | `bool` | `G/C` | Export native RustFS metrics over OTLP/HTTP |
| [`rustfs_metrics_endpoint`](#rustfs_metrics_endpoint) | `string` | `G/C` | RustFS OTLP metric receiver endpoint |
| [`rustfs_metrics_interval`](#rustfs_metrics_interval) | `int` | `G/C` | RustFS metric export interval in seconds |
| [`rustfs_metrics_environment`](#rustfs_metrics_environment) | `string` | `G/C` | OTEL deployment-environment resource attribute |
| [`rustfs_log_enabled`](#rustfs_log_enabled) | `bool` | `G/C` | Write structured RustFS logs to journald |
| [`rustfs_log_level`](#rustfs_log_level) | `string` | `G/C` | RustFS log level |

The [`MINIO_REMOVE`](#minio_remove) group controls object-storage cluster removal, including safeguards, data cleanup, and package removal.

| Parameter                               |  Type  |  Level  | Description                                        |
|:----------------------------------------|:------:|:-------:|:---------------------------------------------------|
| [`minio_safeguard`](#minio_safeguard)   | `bool` | `G/C/A` | prevent accidental removal? false by default       |
| [`minio_rm_data`](#minio_rm_data)       | `bool` | `G/C/A` | remove minio data during removal? true by default  |
| [`minio_rm_pkg`](#minio_rm_pkg)         | `bool` | `G/C/A` | Uninstall the selected engine and mcli? false by default |

The `minio_volumes` and `minio_endpoint` are auto-generated parameters, but you can explicitly override them.



--------

## Defaults

`MINIO`: 25 public parameters, defined in [`roles/minio/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/minio/defaults/main.yml)

```yaml
#-----------------------------------------------------------------
# SILO / MINIO / RUSTFS
#-----------------------------------------------------------------
minio_type: silo                  # object-storage engine: silo, minio, or rustfs
#minio_seq: 1                     # minio instance identifier, REQUIRED
#minio_cluster: minio             # required minio cluster identity
minio_user: minio                 # minio os user, `minio` by default
minio_https: true                 # enable HTTPS for MinIO? true by default
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
rustfs_metrics_enabled: true      # export native RustFS metrics to VictoriaMetrics over OTLP/HTTP?
rustfs_metrics_endpoint: ''       # explicit OTLP endpoint; empty uses VictoriaMetrics on first infra node
rustfs_metrics_interval: 15       # RustFS OTLP metric export interval in seconds
rustfs_metrics_environment: production # OTEL deployment.environment.name resource attribute
rustfs_log_enabled: true          # write structured RustFS logs to journald?
rustfs_log_level: warn            # RustFS log level; info is very verbose
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
```




--------

## `MINIO`

This section contains parameters for the [`minio`](https://github.com/pgsty/pigsty/blob/main/roles/minio/defaults/main.yml) role,
used by the [`minio.yml`](/docs/minio/playbook#minioyml) playbook.


### `minio_type`

Parameter: `minio_type`, Type: `enum`, Level: `G/C`

Selects the object-storage server. Allowed values are `silo`, `minio`, and `rustfs`; the current source defaults to `silo`.

- `silo`: Pigsty's current default backend, preserving MinIO S3/Admin APIs, `MINIO_*` environment variables, and disk format.
- `minio`: Compatibility with existing MinIO deployments; set this explicitly when upgrading an older cluster.
- `rustfs`: Uses the RustFS package, binary, systemd unit, certificate directory, and native OTLP metrics.

Changing this parameter changes the installed package, service name, and configuration paths, but does not migrate data. In particular, a RustFS data directory is not an in-place replacement for a MinIO/Silo data directory.

This default belongs to the deployment role. For deletion safety, the `minio_remove` role intentionally has no `minio_type` default. Before running `minio-rm.yml`, define the actual engine in inventory or pass `-e minio_type=<engine>`; otherwise identity validation stops the play.


--------


### `minio_seq`

Parameter: `minio_seq`, Type: `int`, Level: `I`

MinIO instance identifier, a required identity parameter. No default value—you must assign it manually.

Best practice is to start from 1, increment by 1, and never reuse previously assigned sequence numbers.
The sequence number, together with the cluster name [`minio_cluster`](#minio_cluster), uniquely identifies each MinIO instance (e.g., `minio-1`).

In multi-node deployments, sequence numbers are also used to generate node names, which are written to the `/etc/hosts` file for static resolution.





--------

### `minio_cluster`

Parameter: `minio_cluster`, Type: `string`, Level: `C`

Object-storage cluster name. This parameter is required and has no default. Use it to distinguish membership and monitoring identity when deploying multiple clusters.

The cluster name, together with the sequence number [`minio_seq`](#minio_seq), uniquely identifies each MinIO instance.
For example, with cluster name `minio` and sequence `1`, the instance name is `minio-1`.

The role finds members across the entire inventory by each host's `minio_cluster` value, so the Ansible group name may differ from the cluster identity. Define this parameter explicitly in the object-storage group's cluster variables; do not define it in `all.vars`, which would mark every host as a MINIO module member.

For multiple clusters, also set distinct [`minio_alias`](#minio_alias), [`minio_domain`](#minio_domain), and [`minio_endpoint`](#minio_endpoint) values to avoid shared aliases and domain-name conflicts.





--------

### `minio_user`

Parameter: `minio_user`, Type: `username`, Level: `C`

Object-storage operating system user, default is `minio`.

The selected service runs as this user. Silo/MinIO certificates are stored under `~/.minio/certs/`; RustFS certificates are stored under `~/.rustfs/certs/`.




--------

### `minio_https`

Parameter: `minio_https`, Type: `bool`, Level: `G/C`

Enable HTTPS for the object-storage service? Default is `true`.

Pigsty's default pgBackRest `minio` repository configuration uses HTTPS and validates the certificate with `/etc/pki/ca.crt`, so keep this parameter `true` when using the defaults. pgBackRest itself does not require HTTPS; if you explicitly switch to HTTP, you must also update the storage TLS options in `pgbackrest_repo` rather than changing only this parameter.

When HTTPS is enabled, Pigsty automatically issues certificates for the selected server, containing the domain specified in [`minio_domain`](#minio_domain) and the IP addresses of each node.




--------

### `minio_node`

Parameter: `minio_node`, Type: `string`, Level: `C`

MinIO node name pattern, used for [multi-node](/docs/minio/config#multi-node-multi-drive) deployments.

Default value: `${minio_cluster}-${minio_seq}.pigsty`, which uses the instance name plus `.pigsty` suffix as the default node name.

The domain pattern specified here is used to generate node names, which are written to the `/etc/hosts` file on all MinIO nodes.





--------

### `minio_data`

Parameter: `minio_data`, Type: `path`, Level: `C`

MinIO data directory(s), default value: `/data/minio`, a common directory for [single-node](/docs/minio/config#single-node-single-drive) deployments.

For [multi-node-multi-drive](/docs/minio/config#multi-node-multi-drive) and [single-node-multi-drive](/docs/minio/config#single-node-multi-drive) deployments, use the `{x...y}` notation to specify multiple disks.





--------

### `minio_volumes`

Parameter: `minio_volumes`, Type: `string`, Level: `C`

MinIO core parameter. By default, this is not specified and is auto-generated using the following rule:

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

MinIO service domain name, default is `sss.pigsty`.

Clients can access the MinIO S3 service through this domain. The name is included in the SAN (Subject Alternative Name) of certificates issued by the role, but the MinIO role does not automatically create a DNS record for `minio_domain`.

Add an explicit record through [`node_etc_hosts`](/docs/node/param#node_etc_hosts) or [`dns_records`](/docs/infra/param#dns_records), pointing it to a MinIO node IP for a single-node deployment or to a load-balancer VIP for a multi-node deployment.






--------

### `minio_port`

Parameter: `minio_port`, Type: `port`, Level: `C`

MinIO service port, default is `9000`.

This is the MinIO S3 API listening port. Clients access the object storage service through this port. In multi-node deployments, this port is also used for inter-node communication.





--------

### `minio_admin_port`

Parameter: `minio_admin_port`, Type: `port`, Level: `C`

MinIO console port, default is `9001`.

This is the listening port for MinIO's built-in web management console. You can access MinIO's graphical management interface at `https://<minio-ip>:9001`.

To expose the MinIO console through Nginx, add it to [`infra_portal`](/docs/infra/param#infra_portal). Note that the MinIO console requires HTTPS and WebSocket support.





--------

### `minio_access_key`

Parameter: `minio_access_key`, Type: `username`, Level: `C`

Root access key (username), default is `minioadmin`.

This is the MinIO super administrator username with full access to all buckets and objects. It's recommended to change this default value in production environments.






--------

### `minio_secret_key`

Parameter: `minio_secret_key`, Type: `password`, Level: `C`

Root secret key (password), default is `S3User.MinIO`.

This is the MinIO super administrator's password, used together with [`minio_access_key`](#minio_access_key).

{{% alert title="Security Warning: Change the default password!" color="danger" %}}
Using default passwords is a high-risk behavior! Make sure to change this password in your production deployment.

Tip: `./configure -g` randomizes default passwords recognized by the configuration wizard. See the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for the complete scope.
{{% /alert %}}








--------

### `minio_extra_vars`

Parameter: `minio_extra_vars`, Type: `string`, Level: `C`

Extra environment variables for the selected object-storage server. Silo/MinIO use `MINIO_*` variables; RustFS-specific overrides must use `RUSTFS_*` variables.

Default is an empty string. You can use multiline strings to pass multiple environment variables:

```yaml
minio_extra_vars: |
  MINIO_BROWSER_REDIRECT_URL=https://minio.example.com
  MINIO_SERVER_URL=https://s3.example.com
```





--------

### `minio_provision`

Parameter: `minio_provision`, Type: `bool`, Level: `G/C`

Run MinIO provisioning tasks? Default is `true`.

When enabled, Pigsty automatically creates the buckets and users defined in [`minio_buckets`](#minio_buckets) and [`minio_users`](#minio_users).
Set this to `false` if you don't need automatic provisioning of these resources.




--------

### `minio_alias`

Parameter: `minio_alias`, Type: `string`, Level: `G`

MinIO client alias for the local MinIO cluster, default value: `sss`.

When [`minio_provision`](#minio_provision) is enabled, this alias is written to the MinIO client configuration file (`~/.mcli/config.json`) for the Ansible execution user on every Infra node and MinIO member. Hosts that belong to both groups are configured only once. You can then use `mcli <alias>` commands directly, for example `mcli ls sss/`.

If deploying multiple MinIO clusters, specify different aliases for each cluster to avoid conflicts.






--------

### `minio_endpoint`

Parameter: `minio_endpoint`, Type: `string`, Level: `C`

Endpoint for the client alias. If specified, `minio_endpoint` (for example, `https://sss.pigsty:9002`) replaces the automatically assembled `<scheme>://<minio_domain>:<minio_port>` endpoint for aliases on Infra nodes and MinIO members.

```bash
mcli alias set {{ minio_alias }} {% if minio_endpoint is defined and minio_endpoint != '' %}{{ minio_endpoint }}{% else %}{% if minio_https|bool %}https{% else %}http{% endif %}://{{ minio_domain }}:{{ minio_port }}{% endif %} {{ minio_access_key }} {{ minio_secret_key }}
```

The role runs this command as the Ansible execution user on Infra nodes and MinIO members.






--------

### `rustfs_metrics_enabled`

Parameter: `rustfs_metrics_enabled`, Type: `bool`, Level: `G/C`

Whether RustFS should actively export native metrics to VictoriaMetrics over OTLP/HTTP. Default is `true`. This parameter applies only when `minio_type: rustfs`; the separate HTTPS readiness probe is still registered by the MINIO monitoring tasks.


--------

### `rustfs_metrics_endpoint`

Parameter: `rustfs_metrics_endpoint`, Type: `string`, Level: `G/C`

Explicit OTLP/HTTP receiver endpoint for RustFS metrics. The default is empty; when omitted, the role uses `/opentelemetry/v1/metrics` on the first VictoriaMetrics instance in the inventory's `infra` group.

Multiple independent single-node VictoriaMetrics instances do not replicate actively pushed samples. If the storage layer itself must have replicated monitoring, point this parameter at a VictoriaMetrics Cluster or VIP that already provides replication semantics, not an ordinary load balancer in front of independent instances.


--------

### `rustfs_metrics_interval`

Parameter: `rustfs_metrics_interval`, Type: `int`, Level: `G/C`

RustFS OTLP metric export interval in seconds. Default is `15`.


--------

### `rustfs_metrics_environment`

Parameter: `rustfs_metrics_environment`, Type: `string`, Level: `G/C`

Resource attribute written to OTEL `deployment.environment.name`. Default is `production`. Pigsty's `cls`, `ins`, and `ip` labels are the stable identity; do not replace them in queries with a resource attribute that may vary by runtime environment.


--------

### `rustfs_log_enabled`

Parameter: `rustfs_log_enabled`, Type: `bool`, Level: `G/C`

Whether RustFS should emit structured application logs to the systemd journal. Default is `true`. Pigsty's existing generic syslog path can collect these logs; the role does not add a dedicated RustFS Vector pipeline.


--------

### `rustfs_log_level`

Parameter: `rustfs_log_level`, Type: `string`, Level: `G/C`

RustFS log level. Default is `warn`. The `info` level produces a large volume of inter-node HTTP/RPC logs and is recommended only for short diagnostic sessions.


--------

### `minio_buckets`

Parameter: `minio_buckets`, Type: `bucket[]`, Level: `C`

List of MinIO buckets to create by default:

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

List of MinIO users to create, default value:

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

When enabled, the [`minio-rm.yml`](/docs/minio/playbook/#minio-rmyml) playbook will abort and refuse to remove the MinIO cluster, providing protection against accidental deletions.

It's recommended to enable this safeguard in production environments to prevent data loss from accidental operations:

```yaml
minio_safeguard: true   # When enabled, minio-rm.yml will refuse to execute
```




--------

### `minio_rm_data`

Parameter: `minio_rm_data`, Type: `bool`, Level: `G/C/A`

Remove object-storage data and configuration during removal? Default value is `true`.

When enabled, the [`minio-rm.yml`](/docs/minio/playbook/#minio-rmyml) playbook deletes data directories, `/etc/default/<minio_type>`, the corresponding `.minio` or `.rustfs` user directory, and `/etc/systemd/system/<minio_type>.service`. The legacy MinIO backend also removes its Vector configuration. Setting this to `false` preserves data and configuration, but does not prevent service deregistration, stopping, or disabling.




--------

### `minio_rm_pkg`

Parameter: `minio_rm_pkg`, Type: `bool`, Level: `G/C/A`

Uninstall the selected object-storage packages during removal? Default value is `false`.

When enabled, the [`minio-rm.yml`](/docs/minio/playbook/#minio-rmyml) playbook uninstalls the `silo`, `minio`, or `rustfs` package selected by `minio_type`, together with `mcli`. This is disabled by default to preserve packages for potential future use.
