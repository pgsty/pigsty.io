---
title: "Module: JUICE"
weight: 4500
description: Use JuiceFS distributed filesystem with PostgreSQL metadata to provide shared POSIX storage.
icon: fas fa-folder-tree
module: [JUICE]
categories: [Reference]
---

[JuiceFS](https://juicefs.com/) is a high-performance POSIX-compatible distributed filesystem that can mount object storage or databases as a local filesystem.

The `JUICE` module depends on [`NODE`](/docs/node) for infrastructure and package repo, and typically uses [`PGSQL`](/docs/pgsql) as the metadata engine.
Data storage can be PostgreSQL or [`MINIO`](/docs/minio) / S3 object storage. Monitoring relies on [`INFRA`](/docs/infra) VictoriaMetrics.

```mermaid
flowchart LR
    subgraph Client["App/User"]
        app["POSIX Access"]
    end

    subgraph JUICE["JUICE"]
        jfs["JuiceFS Mount"]
    end

    subgraph PGSQL["PGSQL"]
        meta["Metadata DB"]
    end

    subgraph Object["Object Storage (optional)"]
        s3["S3 / MinIO"]
    end

    subgraph INFRA["INFRA (optional)"]
        vm["VictoriaMetrics"]
    end

    app --> jfs
    jfs --> meta
    jfs -.-> s3
    jfs -->|/metrics| vm

    style JUICE fill:#5B9CD5,stroke:#4178a8,color:#fff
    style PGSQL fill:#3E668F,stroke:#2d4a66,color:#fff
    style Object fill:#FCDB72,stroke:#d4b85e,color:#333
    style INFRA fill:#999,stroke:#666,color:#fff
```

--------

## Features

- **PostgreSQL metadata**: Metadata stored in PostgreSQL for easy management and backup
- **Multi-instance**: One node can mount multiple independent filesystem instances
- **Multiple data backends**: PostgreSQL, MinIO, S3, and more
- **Monitoring integration**: Each instance exposes Prometheus / Victoria-format metrics port
- **Simple config**: Describe instances with the [**`juice_instances`**](/docs/juice/param#juice_instances) dict

--------

## Quick Start

Minimal config example (single instance):

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port: 9567
```

Deploy:

```bash
./juice.yml -l <host>
```
