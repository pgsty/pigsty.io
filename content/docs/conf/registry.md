---
title: app/registry
weight: 895
description: Deploy Docker Registry image proxy and private registry using Pigsty
icon: fa-brands fa-docker
categories: [Reference]
---

The `app/registry` configuration template provides a reference configuration for deploying Docker Registry as an image proxy, usable as Docker Hub mirror acceleration or private image registry.


--------

## Overview

- Config Name: `app/registry`
- Node Count: Single node
- Description: Deploy Docker Registry image proxy and private registry
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/registry [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/registry.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/registry.yml)

{{< readfile file="yaml/app/registry.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `app/registry` template provides a one-click deployment solution for Docker Registry image proxy.

**What is Registry**:
- Docker's official image registry implementation
- Can serve as Docker Hub pull-through cache
- Can also serve as private image registry
- Supports image caching and local storage

**Key Features**:
- Acts as proxy cache for Docker Hub to accelerate image pulls
- Caches images to local storage `/data/registry`
- Provides Web UI to view cached images
- Supports custom cache expiration time

**Configure Docker Client**:

```bash
# Edit /etc/docker/daemon.json
{
  "registry-mirrors": ["https://d.pigsty"],
  "insecure-registries": ["d.pigsty"]
}

# Restart Docker
sudo systemctl restart docker
```

**Access**:

```bash
# Registry API
https://d.pigsty/v2/_catalog

# Web UI
http://dui.pigsty:5080

# Pull images (automatically uses proxy)
docker pull nginx:latest
```

**Use Cases**:
- Accelerate Docker image pulls (especially in mainland China)
- Reduce external network dependency
- Enterprise internal private image registry
- Offline environment image distribution

**Notes**:
- Requires sufficient disk space to store cached images
- Default cache TTL is 7 days (`REGISTRY_PROXY_TTL: 168h`)
- Can configure HTTPS certificates (via certbot)

