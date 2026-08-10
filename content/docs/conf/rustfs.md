---
title: demo/rustfs
weight: 1045
description: Four-node distributed RustFS object-storage example managed and monitored through the MINIO module.
icon: fa-solid fa-box-archive
categories: [Reference]
---

`demo/rustfs` explicitly sets `minio_type: rustfs` and deploys a RustFS S3-compatible object-storage cluster across four nodes. It reuses the MINIO module's identity, TLS, `mcli`, bucket, and user-provisioning interfaces, while using a separate RustFS package, certificate directory, data format, and native OTLP metrics.


--------

## Overview

- Config name: `demo/rustfs`
- Nodes: 4 object-storage nodes; the first also hosts a single-node INFRA deployment
- Cluster identity: `minio_cluster: rustfs`
- Data directory: `/data/rustfs` on each node
- Client endpoint: `https://rustfs-1.pigsty:9000`, using alias `rustfs`
- Provisioning: creates the `pgsql`, `meta`, and `data` buckets with corresponding example users
- Repository: explicitly includes the RustFS package through `repo_extra_packages: [rustfs]`

```bash
./configure -c demo/rustfs
./deploy.yml
```

You can also target only the four members after NODE and INFRA initialization:

```bash
./minio.yml -l minio
```

`-l minio` is the Ansible group name in the template; actual membership is determined by `minio_cluster: rustfs`.


--------

## Content

Source: [`pigsty/conf/demo/rustfs.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/rustfs.yml)

{{< readfile file="yaml/demo/rustfs.yml" code="true" lang="yaml" >}}


--------

## Explanation

- The MINIO role generates multi-node volume addresses from the four `minio_seq` values and `/data/rustfs`.
- By default, RustFS pushes native `rustfs_*` metrics over OTLP/HTTP to VictoriaMetrics on the first `infra` node every 15 seconds and registers a separate HTTPS readiness probe.
- `minio_endpoint` points directly to the first member and is not an HA endpoint. Production deployments should add a validated load balancer or VIP according to their failure budget.
- All access keys in the template are public demo values and must be replaced before deployment.
- RustFS shares only the S3 and module interfaces with Silo/MinIO; their data formats are not interchangeable in place. Switching an existing cluster's engine requires a validated data-migration and rollback procedure.

See the [MINIO module](/docs/minio/) and [RustFS monitoring guide](/docs/minio/monitor/) for parameters, monitoring, and migration boundaries.
