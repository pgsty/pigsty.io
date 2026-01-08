---
title: "Module: MINIO"
weight: 3600
description: Pigsty has built-in MinIO support, an open-source S3-compatible object storage that can be used for PGSQL cold backup storage.
icon: fas fa-boxes-stacked
module: [MINIO]
categories: [Reference]
---


[MinIO](https://min.io/) is an S3-compatible multi-cloud object storage software, open-sourced under the AGPLv3 license.

MinIO can be used to store documents, images, videos, and backups. Pigsty natively supports deploying various MinIO clusters with native multi-node multi-disk high availability support, easy to scale, secure, and ready to use out of the box.
It has been used in production environments at 10PB+ scale.

MinIO is an [**optional module**](/docs/ref/module) in Pigsty. You can use MinIO as an optional storage repository for PostgreSQL [**backups**](/docs/pgsql/backup/repository/), supplementing the default local POSIX filesystem repository.
If using the MinIO backup repository, the `MINIO` module should be installed before any [`PGSQL`](/docs/pgsql) modules. MinIO requires a trusted CA certificate to work, so it depends on the [`NODE`](/docs/node) module.


--------

## Quick Start

Here's a simple example of MinIO single-node single-disk deployment:

```yaml
# Define MinIO cluster in the config inventory
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }
```

```bash
./minio.yml -l minio    # Deploy MinIO module on the minio group
```

After deployment, you can access MinIO via:

- **S3 API**: `https://sss.pigsty:9000` (requires DNS resolution for the domain)
- **Web Console**: `https://<minio-ip>:9001` (default username/password: `minioadmin` / `S3User.MinIO`)
- **Command Line**: `mcli ls sss/` (alias pre-configured on the admin node)



--------

## Deployment Modes

MinIO supports three major deployment modes:

| Mode | Description | Use Cases |
|:-----|:------------|:----------|
| [**Single-Node Single-Disk**](config#single-node-single-disk) (SNSD) | Single node, single data directory | Development, testing, demo |
| [**Single-Node Multi-Disk**](config#single-node-multi-disk) (SNMD) | Single node, multiple disks | Resource-constrained small-scale deployments |
| [**Multi-Node Multi-Disk**](config#multi-node-multi-disk) (MNMD) | Multiple nodes, multiple disks per node | **Recommended for production** |

Additionally, you can use [multi-pool deployment](config#multi-pool) to scale existing clusters, or deploy [multiple clusters](config#multiple-clusters).


--------

## Key Features

- **S3 Compatible**: Fully compatible with AWS S3 API, seamlessly integrates with various S3 clients and tools
- **High Availability**: Native support for multi-node multi-disk deployment, tolerates node and disk failures
- **Secure**: HTTPS encrypted transmission enabled by default, supports server-side encryption
- **Monitoring**: Out-of-the-box Grafana dashboards and Prometheus alerting rules
- **Easy to Use**: Pre-configured `mcli` client alias, one-click deployment and management


