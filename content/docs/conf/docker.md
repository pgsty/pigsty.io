---
title: docker
weight: 270
description: Pigsty Docker single-node template for quickly bootstrapping Pigsty in containers.
icon: fa-brands fa-docker
categories: [Reference]
---

The `docker` template runs Pigsty in a Docker container.
It supplies the minimum single-node infrastructure and PostgreSQL components.

For full workflow details, see **[Docker Deployment](/docs/setup/docker/)**.


--------

## Overview

- Config Name: `docker`
- Node Count: Single node (container runtime)
- Description: Quick-start container template using `127.0.0.1` and trimmed system capabilities for Docker scenarios
- OS Distro: Container image runtime (official Pigsty Docker image recommended)
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`vibe`](/docs/conf/vibe/)

Usage:

```bash
./configure -c docker -i 127.0.0.1 -g
```


--------

## Content

Source: [`pigsty/conf/docker.yml`](https://github.com/pgsty/pigsty/blob/main/conf/docker.yml)

{{< include file="yaml/docker.yml" code=true lang="yaml" >}}


--------

## Explanation

Use the `docker` template for development and validation inside containers.

**Key Features**:
- Disables local repository builds with `repo_enabled: false`. This reduces the build overhead inside the container.
- Simplifies node behavior by disabling NTP, kernel module loading, and `/etc/hosts` rewrite
- Uses PostgreSQL 18 by default with a broad preset extension package bundle (`pg18-*`)
- Allows password access from both `intra` and `world` ranges in `pg_hba_rules` for fast testing
- Keeps optional capabilities (Code-Server, Jupyter, JuiceFS, Claude CLI) as commented settings

**Notes**:
- This template targets development and demonstrations. For production, restrict `pg_hba_rules` and strengthen the password policy.
- Mount `/data` in the container runtime to persist PostgreSQL and component data
