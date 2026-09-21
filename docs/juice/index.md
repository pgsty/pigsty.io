# Module: JUICE

> Use JuiceFS distributed filesystem with PostgreSQL metadata to provide shared POSIX storage.

---

LLMS index: [llms.txt](/llms.txt)

---

[JuiceFS](https://juicefs.com/) is a high-performance POSIX-compatible distributed filesystem that can mount object storage or databases as a local filesystem.

The `JUICE` module depends on [`NODE`](/docs/node) for infrastructure and package repo, and typically uses [`PGSQL`](/docs/pgsql) as the metadata engine.
Data storage can be PostgreSQL (in a `jfs_blob` table) or Silo / S3-compatible object storage provided by the [`MINIO`](/docs/minio) module. Monitoring relies on [`INFRA`](/docs/infra) VictoriaMetrics.

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
        blob["Data DB / jfs_blob (optional)"]
    end

    subgraph Object["Object Storage (optional)"]
        s3["Silo / S3"]
    end

    subgraph INFRA["INFRA (optional)"]
        vm["VictoriaMetrics"]
    end

    app --> jfs
    jfs --> meta
    jfs -.->|alternative data backend| blob
    jfs -.->|alternative data backend| s3
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
- **Multiple data backends**: PostgreSQL, Silo/MinIO, S3, and more; metadata and file data remain separate roles
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

---

Section pages:

- [Configuration](/docs/juice/config/): JUICE module configuration, instance definition, storage backends, and mount options.
- [Parameters](/docs/juice/param/): JUICE module parameters (2 total).
- [Playbook](/docs/juice/playbook/): JUICE module playbook guide.
- [Administration](/docs/juice/admin/): JUICE module operations and troubleshooting guide.
- [Monitoring](/docs/juice/monitor/): JUICE module monitoring and metrics.
- [FAQ](/docs/juice/faq/): JUICE module frequently asked questions.
