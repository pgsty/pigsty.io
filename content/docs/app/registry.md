---
title: "Registry: Container Image Mirror"
weight: 625
description: Deploy Docker Registry mirror service to accelerate Docker image pulls, especially useful for users in China.
module: [SOFTWARE]
categories: [Reference]
---

[**Docker Registry**](https://docs.docker.com/registry/) mirror service caches images from Docker Hub and other registries.

Particularly useful for users in China or regions with slow Docker Hub access, significantly reducing image pull times.

## Quick Start

```bash
cd ~/pigsty/app/registry
make up     # Start Registry mirror service
```

Access URL: http://registry.pigsty or http://10.10.10.10:5000

## Features

- **Image Caching**: Cache images from Docker Hub and other registries
- **Web Interface**: Optional image management UI
- **High Performance**: Local caching dramatically improves pull speed
- **Storage Management**: Configurable cleanup and management policies
- **Health Checks**: Built-in health check endpoints

## Configure Docker

Configure Docker to use the local mirror:

```bash
# Edit /etc/docker/daemon.json
{
  "registry-mirrors": ["http://10.10.10.10:5000"]
}

# Restart Docker
systemctl restart docker
```

## Storage Management

Image data is stored in the `/data/registry` directory. Reserve at least 100GB of space.

## Related Links

- Docker Registry Documentation: https://docs.docker.com/registry/
- GitHub Repository: https://github.com/distribution/distribution
