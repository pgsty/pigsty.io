---
title: Configuration
weight: 4510
description: Choose appropriate storage backends and configure JuiceFS filesystem instances
icon: fa-solid fa-code
module: [JUICE]
categories: [Reference]
---


-------

## Concepts

JuiceFS is a high-performance POSIX filesystem composed of a metadata engine and data storage. In Pigsty, we use PostgreSQL as the metadata engine, storing filesystem metadata (directory structure, file attributes, etc.) in PostgreSQL, leveraging its HA and backup recovery capabilities.

JUICE module core features:

- **Multi-instance support**: Each node can mount multiple JuiceFS filesystem instances
- **PostgreSQL metadata**: Leverages PostgreSQL reliability and PITR capability
- **Monitoring integration**: Each instance exposes Prometheus metrics port
- **Flexible storage backends**: Supports PostgreSQL large objects, MinIO, S3, and more


-------

## Identity Parameters

JUICE module configuration is defined via [`juice_instances`](param#juice_instances) dictionary. Each instance requires:

|                     Name                      |    Type     |         Description         |               Example                |
|:-------------------------------------------:|:---------:|:-------------------:|:-------------------------------:|
| [`juice_instances`](param#juice_instances)  | **Required**, Node-level |   JuiceFS instance definitions    |         `{ jfs: {...} }`        |
|                   `path`                    | **Required**, Instance-level |       Mount point path        |             `/fs`               |
|                   `meta`                    | **Required**, Instance-level |     Metadata engine URL      | `postgres://u:p@h:5432/db`      |
{.full-width}

- `juice_instances`: Dictionary format, Key is filesystem name (instance ID), Value is instance config
- `path`: Filesystem mount point path, e.g., `/fs`, `/pgfs`, `/data/shared`
- `meta`: PostgreSQL metadata engine connection URL


--------

## Instance Configuration

Each JuiceFS instance supports these config options:

| Field   | Required | Default          | Description                                    |
|:--------|:---:|:-----------------|:--------------------------------------|
| `path`  | Yes  | -                | Mount point path                                 |
| `meta`  | Yes  | -                | Metadata engine URL                             |
| `data`  | No  | `''`             | `juicefs format` storage backend options               |
| `unit`  | No  | `juicefs-<name>` | systemd service name                          |
| `mount` | No  | `''`             | Extra mount options                               |
| `port`  | No  | `9567`           | Prometheus metrics port (**must be unique per node**)       |
| `owner` | No  | `root`           | Mount point directory owner                               |
| `group` | No  | `root`           | Mount point directory group                               |
| `mode`  | No  | `0755`           | Mount point directory permissions                               |
| `state` | No  | `create`         | `create` to create, `absent` to remove           |
{.full-width}

{{% alert title="Port Conflict Detection" color="warning" %}}
Multiple JuiceFS instances on the same node must use different `port` values. The playbook will detect port conflicts and fail before execution.
{{% /alert %}}


--------

## Storage Backends

JuiceFS supports multiple data storage backends, configured via the `data` field for `juicefs format` command:

### PostgreSQL Large Object Storage

Use PostgreSQL as data storage backend, storing file data as large objects:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port  : 9567
```

This mode unifies data and metadata management, enabling filesystem PITR via PostgreSQL backup recovery.

### MinIO Object Storage

Use MinIO as data storage backend:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage minio --bucket http://10.10.10.10:9000/juice --access-key minioadmin --secret-key minioadmin
    port  : 9567
```

### S3-Compatible Storage

Use AWS S3 or S3-compatible object storage:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage s3 --bucket https://s3.amazonaws.com/my-bucket --access-key AKIAXXXXXXXX --secret-key XXXXXXXXXX
    port  : 9567
```


--------

## Configuration Examples

### Single Instance

Simplest single-instance config using PostgreSQL for metadata and data:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          juice_instances:
            jfs:
              path  : /fs
              meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
              data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
```

### Multi-Instance

Multiple filesystems on same node, note unique ports:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          juice_instances:
            pgfs:
              path  : /pgfs
              meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
              data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
              port  : 9567
            shared:
              path  : /data/shared
              meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/shared_meta
              data  : --storage minio --bucket http://10.10.10.10:9000/shared
              port  : 9568    # Must differ from other instances
              owner : postgres
              group : postgres
```

### Multi-Node Shared Filesystem

Multiple nodes mounting the same JuiceFS filesystem for shared storage:

```yaml
all:
  children:
    app:
      hosts:
        10.10.10.11: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
        10.10.10.12: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
        10.10.10.13: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
```

### AI/Coding Sandbox

Complete config for AI-assisted coding with Code-Server, JupyterLab, and JuiceFS:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          code_enabled: true
          code_password: 'Code.Server'
          jupyter_enabled: true
          jupyter_password: 'Jupyter.Lab'
          juice_instances:
            jfs:
              path  : /fs
              meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
              data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
      vars:
        code_home: /fs/code
        jupyter_home: /fs/jupyter
```


--------

## Limitations

- JuiceFS instance `port` must be unique per node for Prometheus metrics
- When using PostgreSQL for data storage, file data is stored as large objects, may not suit very large files
- Filesystem formatting (`juicefs format`) is one-time; changing storage backend requires reformatting

