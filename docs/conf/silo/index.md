# app/silo

> Standalone Silo Docker APP template providing single-node S3 object storage and a console.

---

LLMS index: [llms.txt](/llms.txt)

---

The `app/silo` template deploys a Silo Docker Compose application on one node, replacing the former `app/minio`. See the [**Silo application guide**](/docs/app/silo/) for usage.

## Overview

- Config Name: `app/silo`
- Node Count: Single node
- Application Image: `docker.io/pgsty/silo:latest`
- Persistent Directory: `/data/silo`
- S3 API: Host port `9000`, portal `sss.pigsty`
- Console: Host port `9001`, portal `silo.pigsty`

```bash
./configure -c app/silo
vi pigsty.yml              # update passwords, domains, and data directories
./deploy.yml
./docker.yml -l silo
./app.yml -l silo
```

## Content

Source: [`pigsty/conf/app/silo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/silo.yml)

```yaml
---
#==============================================================#
# File      :   silo.yml
# Desc      :   Pigsty config for running the standalone Silo APP
# Ctime     :   2026-08-29
# Mtime     :   2026-08-29
# Docs      :   https://silo.pgsty.com
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# Silo: S3-Interface Libre Object Storage
# https://silo.pgsty.com
# https://github.com/pgsty/silo
#
# This is an application-scoped Docker Compose deployment. Pigsty's native
# MINIO module also deploys Silo and is preferred for shared backup storage,
# provisioning, monitoring, TLS, and multi-node clusters.
#
# Usage:
#   curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
#   ./configure -c app/silo
#   vi pigsty.yml                 # change credentials, domains, and data path
#   ./deploy.yml
#   ./docker.yml
#   ./app.yml

all:
  children:

    silo:
      hosts: { 10.10.10.10: {} }
      vars:
        app: silo
        apps:
          silo:
            file:
              - { path: /data/silo ,state: directory ,mode: 0755 }
            conf:
              SILO_IMAGE: docker.io/pgsty/silo:latest
              SILO_ROOT_USER: siloadmin
              SILO_ROOT_PASSWORD: S3User.Silo       # CHANGE ME
              SILO_DATA: /data/silo
              SILO_PORT: 9000
              SILO_CONSOLE_PORT: 9001
              SILO_BROWSER_REDIRECT_URL: ''         # e.g. https://silo.pigsty

    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }

  vars:
    version: v4.6.0
    admin_ip: 10.10.10.10
    region: default
    node_tune: oltp
    docker_enabled: true

    infra_portal:
      home: { domain: i.pigsty }
      silo: { domain: sss.pigsty ,endpoint: "10.10.10.10:9000" }
      silo-console: { domain: silo.pigsty ,endpoint: "10.10.10.10:9001" ,websocket: true }

    repo_enabled: false
    node_repo_modules: node,infra

    grafana_admin_password: pigsty
    grafana_view_password: DBUser.Viewer
    pg_admin_password: DBUser.DBA
    pg_monitor_password: DBUser.Monitor
    pg_replication_password: DBUser.Replicator
    patroni_password: Patroni.API
    haproxy_admin_password: pigsty
    minio_secret_key: S3User.MinIO
    etcd_root_password: Etcd.Root

...
```

## Explanation

The template defines the `silo` application group and deploys INFRA and ETCD on the same host. It does not configure a PostgreSQL cluster or create an object-storage cluster managed by the native MINIO module.

`apps.silo.file` creates the data directory, and `apps.silo.conf` writes image, credential, and port settings. The default root user is `siloadmin` with password `S3User.Silo`; change both before deployment. When using the console portal, set `SILO_BROWSER_REDIRECT_URL` to the full external URL.

This template suits single-node object storage dedicated to an application. For shared backup storage, TLS, automatic user and bucket provisioning, monitoring, or multi-node HA, use the [**MINIO module**](/docs/minio/) with [`demo/minio`](/docs/conf/minio/) or [`ha/trio`](/docs/conf/trio/).
