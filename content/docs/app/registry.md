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

The default images are `registry:3.1.2` and `joxit/docker-registry-ui:2.6.0`. The template is a pull-through cache for one upstream, Docker Hub by default. This mode does not accept image pushes.

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
  "insecure-registries": ["d.pigsty"]
}
```

`registry-mirrors` applies to Docker Hub pulls. It does not redirect explicit GHCR, Quay, or other registry references. For direct access through `http://<IP>:5000`, set both the mirror address and `insecure-registries` to the corresponding `<IP>:5000` endpoint.

After editing `/etc/docker/daemon.json`, restart Docker:

```bash
systemctl restart docker
```

## Proxies and Upgrades

Configure the Docker daemon's image-pull proxy separately from the Registry container's upstream proxy. The latter uses `REGISTRY_HTTP_PROXY` / `REGISTRY_HTTPS_PROXY` with an address reachable from the container. Host `127.0.0.1` is not the container's route to the host.

Registry 3.1.2 contacts its upstream during startup. A populated cache does not become an offline registry if the upstream is unavailable at restart. Keep the default unauthenticated cache on a trusted network. If upstream private credentials are configured, protect the cache endpoint too, to avoid exposing private images to all cache users.

Version 3.1.2 includes manifest/blob digest validation fixes. Preserve configuration and a cache copy before upgrading, then check `/v2/`, the UI backend, and cold/hot pulls by digest. See the [3.1.2 release notes](https://github.com/distribution/distribution/releases/tag/v3.1.2).

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
