---
title: demo/minio
weight: 920
description: Four-node x four-drive high-availability multi-node multi-disk MinIO cluster demo
icon: fa-solid fa-box-archive
categories: [Reference]
---

The `demo/minio` configuration template demonstrates how to deploy a four-node x four-drive, 16-disk total high-availability MinIO cluster, providing S3-compatible object storage services.

For more tutorials, see the **[MINIO](/docs/minio/)** module documentation.


--------

## Overview

- Config Name: `demo/minio`
- Node Count: Four nodes
- Description: High-availability multi-node multi-disk MinIO cluster demo
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c demo/minio
```

> Note: This is a four-node template. You need to modify the IP addresses of the other three nodes after generating the configuration.


--------

## Content

Source: [`pigsty/conf/demo/minio.yml`](https://github.com/Vonng/pigsty/blob/main/conf/demo/minio.yml)

{{< readfile file="yaml/demo/minio.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `demo/minio` template is a production-grade reference configuration for MinIO, showcasing Multi-Node Multi-Drive (MNMD) architecture.

**Key Features**:
- **Multi-Node Multi-Drive Architecture**: 4 nodes × 4 drives = 16-drive erasure coding group
- **L2 VIP High Availability**: Virtual IP binding via Keepalived
- **HAProxy Load Balancing**: Unified access endpoint on port 9002
- **Fine-grained Permissions**: Separate users and buckets for different applications

**Access**:

```bash
# Configure MinIO alias with mcli (via HAProxy load balancing)
mcli alias set sss https://sss.pigsty:9002 minioadmin S3User.MinIO

# List buckets
mcli ls sss/

# Use console
# Visit https://m.pigsty or https://m10-m13.pigsty
```

**Use Cases**:
- Environments requiring S3-compatible object storage
- PostgreSQL backup storage (pgBackRest remote repository)
- Data lake for big data and AI workloads
- Production environments requiring high-availability object storage

**Notes**:
- Each node requires 4 independent disks mounted at `/data1` - `/data4`
- Production environments recommend at least 4 nodes for erasure coding redundancy
- VIP requires proper network interface configuration (`vip_interface`)

