---
title: demo/minio
weight: 1040
description: Four-node x four-drive HA S3 object-storage cluster demo; current source defaults to Silo.
icon: fa-solid fa-box-archive
categories: [Reference]
aliases: [/docs/conf/rustfs/]
---

`demo/minio` demonstrates a highly available S3 object-storage cluster with four nodes and four drives per node, for 16 drives total. The template retains MINIO module compatibility naming and explicitly sets `minio_type: silo`; the current v4.5.0 source accepts only this value, and both deployment and removal roles default to `silo`. Still verify it together with the exact target, cluster identity, and data paths before removal.

For more tutorials, see the **[MINIO](/docs/minio/)** module documentation.


--------

## Overview

- Config Name: `demo/minio`
- Node Count: Four nodes
- Description: High-availability multi-node multi-drive S3 object-storage demo (currently defaults to Silo)
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c demo/minio
```

> Note: This is a four-node template. You need to modify the IP addresses of the other three nodes after generating the configuration.


--------

## Content

Source: [`pigsty/conf/demo/minio.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/minio.yml)

{{< readfile file="yaml/demo/minio.yml" code="true" lang="yaml" >}}


--------

## Explanation

`demo/minio` is a reference configuration for production object storage using the Multi-Node Multi-Drive (MNMD) architecture. Its volume layout, HAProxy health checks, and clients retain MinIO-compatible interfaces.

**Key Features**:
- **Multi-Node Multi-Drive Architecture**: 4 nodes × 4 drives = 16-drive erasure coding group
- **L2 VIP High Availability**: Virtual IP binding via Keepalived
- **HAProxy Load Balancing**: Unified access endpoint on port 9002
- **Fine-grained Permissions**: Separate users and buckets for different applications

**Access**:

```bash
# Configure the S3 alias with mcli (via HAProxy load balancing)
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
