---
title: "Module: MINIO"
weight: 3600
description: Deploy Silo, MinIO, or RustFS S3-compatible object storage through the unified MINIO module and use it as a PostgreSQL backup repository.
icon: fas fa-boxes-stacked
module: [MINIO]
categories: [Reference]
---


`MINIO` is Pigsty's compatibility module name for S3-compatible object storage; it no longer requires the server to be MinIO. The current source selects **Silo**, **MinIO**, or **RustFS** through [`minio_type`](/docs/minio/param#minio_type), and defaults new clusters to **Silo**.

All three engines share the same inventory model, TLS certificates, S3 port, `mcli` client aliases, and bucket/user provisioning interfaces. They can serve as PostgreSQL [**pgBackRest backup repositories**](/docs/pgsql/backup/repository/). The module name, parameter prefix, and monitoring `job` retain the `MINIO` / `minio_*` namespace for compatibility with existing inventories and operational entry points.

| Engine | `minio_type` | Current Role | Monitoring |
|:---|:---:|:---|:---|
| [Silo](https://github.com/pgsty/silo) | `silo` | **Current source default**; preserves MinIO S3/Admin APIs, `MINIO_*` environment variables, and disk format | Scrapes `/minio/metrics/v3` |
| [MinIO](https://github.com/pgsty/minio) | `minio` | Compatibility with existing deployments; retain explicitly when upgrading an existing MinIO cluster | Scrapes `/minio/metrics/v3` |
| [RustFS](https://github.com/rustfs/rustfs) | `rustfs` | Optional engine; S3/API compatible, but with separate binary, configuration, certificate directory, and data format | Native OTLP push plus HTTPS readiness probe |
{.full-width}

> [!IMPORTANT]
> S3 API compatibility does not make data directories interchangeable in place. Set `minio_type: minio` before upgrading an existing MinIO cluster. Switching to Silo or RustFS requires a validated migration and rollback plan; do not treat package replacement or a parameter change as automatic data migration.

MINIO is an [**optional module**](/docs/ref/module). When using it as a pgBackRest S3 repository, deploy it before the [`PGSQL`](/docs/pgsql) module. TLS certificates and the host baseline come from the [`NODE`](/docs/node) / CA capabilities.


--------

## Quick Start

The following inventory explicitly defines a single-node Silo cluster. Both `minio_cluster` and `minio_seq` are required identity parameters. Even though Silo is the current default, production inventories should set `minio_type` explicitly to prevent semantic drift during upgrades.

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 }
  vars:
    minio_cluster: minio
    minio_type: silo
```

```bash
./minio.yml -l minio    # Deploy the selected object-storage engine on the minio group
```

The inventory group name may differ from `minio_cluster`. Roles calculate actual membership from each host's `minio_cluster` identity. Do not define `minio_cluster` in `all.vars`, or every host will be treated as an object-storage member.

After deployment, use these entry points:

- **S3 API**: `https://sss.pigsty:9000` (configure DNS or `/etc/hosts` explicitly for the domain)
- **Administration UI**: `https://<node-ip>:9001`; the RustFS console is under `/rustfs/console/` on that port
- **Command line**: `mcli ls sss/` (a preconfigured alias is written on the admin node and cluster members)

The default administrator credentials are `minioadmin` / `S3User.MinIO`. They are for demos only and must be changed before production deployment.


--------

## Deployment Modes

All three engines use the same Pigsty inventory model:

| Mode | Description | Use Cases |
|:---|:---|:---|
| [**Single-Node Single-Disk**](/docs/minio/config#single-node-single-disk) (SNSD) | Single node, one data directory | Development, testing, demos |
| [**Single-Node Multi-Disk**](/docs/minio/config#single-node-multi-disk) (SNMD) | Single node, multiple disks | Resource-constrained small deployments |
| [**Multi-Node Multi-Disk**](/docs/minio/config#multi-node-multi-disk) (MNMD) | Multiple nodes with multiple disks per node | **Recommended for production** |
{.full-width}

The multi-pool expansion semantics of `minio_volumes` come from the MinIO/Silo-compatible interface. Before changing RustFS storage pools, verify the upstream support and migration constraints of the version in use.


--------

## Core Capabilities

- **Unified interface**: All three engines share `minio_*` parameters, the S3 port, TLS, and the `mcli` provisioning flow
- **HA topologies**: Supports single-node and multi-node multi-drive deployments, with multiple independent clusters in one inventory
- **Backup repository**: Can serve as a remote pgBackRest S3 repository
- **Security baseline**: Enables HTTPS by default and uses the Pigsty CA to issue a certificate for every instance
- **Observability**: Silo/MinIO use Metrics V3; RustFS uses native OTLP, a separate readiness probe, and dedicated Grafana dashboards
- **Operational compatibility**: Module name, target directories, monitoring labels, and client aliases retain the MINIO namespace
