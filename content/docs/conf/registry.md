---
title: app/registry
weight: 870
description: Deploy Docker Registry image proxy cache using Pigsty
icon: fa-brands fa-docker
categories: [Reference]
---

The `app/registry` template provides a reference configuration for Docker Registry as an image proxy. It acts as a Docker Hub pull-through cache by default.


--------

## Overview

- Config Name: `app/registry`
- Node Count: Single node
- Description: Deploy Docker Registry image proxy cache
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/registry [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/registry.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/registry.yml)

{{< include file="yaml/app/registry.yml" code=true lang="yaml" >}}


--------

## Explanation

The `app/registry` template provides one-click deployment of a Docker Registry image proxy.

**What is Registry**:
- Docker's official image registry implementation
- Can serve as Docker Hub pull-through cache
- This template's proxy-cache mode does not accept image pushes
- Supports image caching and local storage

**Key Features**:
- Pins `registry:3.1.2` and `joxit/docker-registry-ui:2.6.0` by default
- Acts as proxy cache for Docker Hub to accelerate image pulls
- Caches images to local storage `/data/registry`
- Provides Web UI to view cached images
- Supports custom cache expiration time

**Configure Docker Client**:

Edit `/etc/docker/daemon.json`:

```json
{
  "registry-mirrors": ["http://d.pigsty"],
  "insecure-registries": ["d.pigsty"]
}
```

Restart Docker:

```bash
sudo systemctl restart docker
```

**Access**:

```bash
# Registry API
http://d.pigsty/v2/_catalog

# Web UI
http://dui.pigsty

# Pull images (automatically uses proxy)
docker pull nginx:latest
```

**Use Cases**:
- Accelerate Docker image pulls (especially in mainland China)
- Reduce external network dependency
- Share a Docker Hub pull cache across hosts

**Notes**:
- Requires sufficient disk space to store cached images
- Default cache TTL is 7 days (`REGISTRY_PROXY_TTL: 168h`)
- Can configure HTTPS certificates (via certbot)
- `registry-mirrors` does not redirect GHCR / Quay; use `REGISTRY_HTTP_PROXY` / `REGISTRY_HTTPS_PROXY` for container egress
- Registry startup still depends on upstream availability; a populated cache is not an independent offline registry
- Preserve configuration and cache before upgrading, then verify manifest/blob digests and cold/hot pulls; see [application details](/docs/app/registry/#proxies-and-upgrades)
