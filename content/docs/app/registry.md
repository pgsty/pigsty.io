---
title: "Registry: Container Image Cache"
weight: 615
description: Deploy a Docker Registry pull-through cache and optional web UI with Pigsty.
module: [SOFTWARE]
categories: [Reference]
---

Pigsty provides the `app/registry` template (`conf/app/registry.yml`) for:

- Docker Registry cache service (default `5000`)
- Optional management UI (default `5080`)

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/registry
vi pigsty.yml                 # update domains, certs, and ports if needed
./deploy.yml
./docker.yml
./app.yml
```

Default endpoints:

- Registry API: `http://<IP>:5000` or `http://d.pigsty`
- Registry UI: `http://<IP>:5080` or `http://dui.pigsty`

Image data is stored in `/data/registry` by default.

## Docker Client Configuration

If you run HTTP without TLS, Docker must trust the registry explicitly:

```json
{
  "registry-mirrors": ["http://d.pigsty"],
  "insecure-registries": ["d.pigsty:5000"]
}
```

After editing `/etc/docker/daemon.json`, restart Docker:

```bash
systemctl restart docker
```

## Operations

`app/registry/Makefile` runs in `/opt/registry` by default:

```bash
cd /opt/registry
make up
make status
make health
make log
```

## References

- Docker Registry docs: https://docs.docker.com/registry/
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/registry.yml
