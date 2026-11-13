---
title: demo/minio
weight: 1040
description: A four-node, four-drive-per-node HA S3 object storage example, using Silo by default.
icon: fa-solid fa-box-archive
categories: [Reference]
aliases: [/docs/conf/rustfs/]
---

The `demo/minio` template deploys a four-node HA S3 object storage cluster with four drives per node, for sixteen drives in total. It retains the MINIO module's compatibility naming and explicitly sets `minio_type: silo`. Pigsty `v4.6.0` accepts only this value, and both deployment and removal roles default to `silo`. Before removal, verify this value along with the exact targets, cluster identity, and data drive paths.

For more tutorials, see the **[MINIO](/docs/minio/)** module documentation.


--------

## Overview

- Config Name: `demo/minio`
- Node Count: Four nodes
- Description: HA S3 object storage with multiple nodes and drives (Silo by default)
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c demo/minio
```

> Note: This template has four nodes. After you generate the configuration, change the IP addresses of the other three nodes.


--------

## Content

Source: [`pigsty/conf/demo/minio.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/minio.yml)

{{< include file="yaml/demo/minio.yml" code=true lang="yaml" >}}


--------

## Explanation

`demo/minio` provides a reference configuration for production object storage. It uses the Multi-Node Multi-Drive (MNMD) architecture. Its volume layout, HAProxy health checks, and clients retain MinIO-compatible interfaces.

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
- The `vm_image` and `vm_disks` fields are descriptive metadata, not inputs to Vagrant or Terraform. The `vagrant/spec/minio.rb` example allocates four 32 GiB data disks per node. Configure disks in the provider specification and verify the mounts on existing hosts.
- We recommend at least 4 nodes for erasure coding redundancy in production.
- VIP requires proper network interface configuration (`vip_interface`)
