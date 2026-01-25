---
title: "Module: JUICE"
weight: 4500
description: JuiceFS distributed filesystem using PostgreSQL as metadata engine, with PITR-capable shared storage.
icon: fas fa-folder-tree
module: [JUICE]
categories: [Reference]
---

[JuiceFS](https://juicefs.com/) is a high-performance POSIX-compatible distributed filesystem that can use PostgreSQL as its metadata engine.

Pigsty's JUICE module provides complete JuiceFS deployment and management, with multi-instance support, automated installation, monitoring integration, and filesystem PITR via PostgreSQL backup recovery.


--------

## Features

- **PostgreSQL Metadata Engine**: Uses PostgreSQL for filesystem metadata storage, with HA and PITR capability
- **Flexible Data Storage**: Supports PostgreSQL Large Object, MinIO, S3 and other storage backends
- **Multi-Instance Support**: Single node can mount multiple independent JuiceFS filesystems
- **PITR Capability**: Leverage PostgreSQL backup recovery for filesystem point-in-time recovery
- **Monitoring Integration**: Auto-integrated with VictoriaMetrics monitoring system


--------

## Config Example

Typical JuiceFS configuration using PostgreSQL as metadata and data storage:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port  : 9567
```


--------

## Use Cases

JUICE module is suitable for:

- **AI Coding Sandbox**: Persistent storage for Code-Server, JupyterLab
- **Shared Storage**: Multi-node mount same filesystem for file sharing
- **Data Lake Storage**: Large capacity storage for data analysis, ML tasks
- **Backup Archive**: Low-cost data archiving using object storage backends


--------

## Documentation

- [**Configuration**](config): Configure JuiceFS instances, storage backends and mount options
- [**Parameters**](param): JUICE module parameter reference
- [**Playbook**](playbook): Deployment and management playbook guide
- [**Administration**](admin): JuiceFS management SOPs, including scaling, PITR recovery
- [**Monitoring**](monitor): JuiceFS metrics and Grafana dashboards
- [**FAQ**](faq): Common questions about JUICE module


