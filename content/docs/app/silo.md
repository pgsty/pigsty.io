---
title: "Silo: S3 Object Storage"
draft: true
weight: 615
description: Deploy standalone Silo object storage with Docker Compose, providing an S3 API and web console.
module: [SOFTWARE]
categories: [Reference]
---

[**Silo**](https://github.com/pgsty/silo) is S3-compatible object storage maintained by Pigsty. Since August 2026, `app/silo` replaces the former `app/minio` for single-node, application-specific storage. Use the [**MINIO module**](/docs/minio/) for shared backup repositories, bucket and user initialization, monitoring, TLS, or multi-node clusters.

This page is a development draft. The matching `app/silo/` and `conf/app/silo.yml` files are not yet public, so the steps below are not a public deployment entry point. Enable this page after the complete template is released.

## Configuration Template

The [`app/silo` configuration template](/docs/conf/silo/) provides a single-node deployment:

```bash
./configure -c app/silo
vi pigsty.yml              # update passwords, domains, and data directories
./deploy.yml
./docker.yml -l silo
./app.yml -l silo
```

The default S3 API is `http://<IP>:9000`, and the web console is `http://<IP>:9001`. With DNS configured, the `sss.pigsty` and `silo.pigsty` portals are also available.

## Run Compose Directly

On a host with Docker Compose installed:

```bash
cd ~/pigsty/app/silo
vi .env
make up
make health
```

| Parameter | Default | Purpose |
|:----------|:--------|:--------|
| `SILO_IMAGE` | `docker.io/pgsty/silo:latest` | Application image; pin a tag or digest as needed |
| `SILO_ROOT_USER` | `siloadmin` | Root user; change before deployment |
| `SILO_ROOT_PASSWORD` | `S3User.Silo` | Root password; change before deployment |
| `SILO_DATA` | `/data/silo` | Persistent object directory on the host |
| `SILO_PORT` | `9000` | S3 API host port |
| `SILO_CONSOLE_PORT` | `9001` | Console host port |
| `SILO_BROWSER_REDIRECT_URL` | Empty string | Full external console URL |

When accessing the console through a non-default port or reverse proxy, set `SILO_BROWSER_REDIRECT_URL`, for example `https://silo.example.com` or `http://silo.example.com:19001`. The container cannot infer the external hostname and published port.

The APP exposes `SILO_*` settings; Compose maps credentials to compatible `MINIO_ROOT_*` container variables. When sharing a host with the native MINIO module, use separate data directories and ports.

## Operations and Data

```bash
make view     # show access endpoints
make log      # view logs
make info     # inspect container status
make health   # check S3 readiness and the console HTTP endpoint
make stop     # stop the service
make clean    # remove containers, retaining host data
make pull     # pull the configured image
make save     # save the image to /tmp/docker/silo.tgz
make load     # load the cached image
```

Objects reside in `SILO_DATA` and need separate backups; recreating a container is not a data backup. Before migrating from `app/minio`, preserve the original data and configuration, prepare the new deployment, and verify object reads and writes. Never run two services against the same data directory.
