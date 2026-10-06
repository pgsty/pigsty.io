# app/registry

> Deploy Docker Registry image proxy and private registry using Pigsty

---

LLMS index: [llms.txt](/llms.txt)

---

The `app/registry` configuration template provides a reference configuration for deploying Docker Registry as an image proxy, usable as Docker Hub mirror acceleration or private image registry.


--------

## Overview

- Config Name: `app/registry`
- Node Count: Single node
- Description: Deploy Docker Registry image proxy and private registry
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

```yaml
---
#==============================================================#
# File      :   registry.yml
# Desc      :   pigsty config for running Docker Registry Mirror
# Ctime     :   2025-07-01
# Mtime     :   2026-07-09
# Docs      :   https://pigsty.io/docs/app/registry
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# tutorial: https://pigsty.io/docs/app/registry
# how to use this template:
#
#  curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
# ./configure -c app/registry   # use this registry config template
# vi pigsty.yml                 # IMPORTANT: CHANGE DOMAIN & CREDENTIALS!
# ./deploy.yml                  # install pigsty
# ./docker.yml                  # install docker & docker-compose
# ./app.yml                     # install registry with docker-compose
#
# To replace domain name:
#   sed -ie 's/registry.pigsty/registry.your-domain.com/g' pigsty.yml

#==============================================================#
# Usage Instructions:
#==============================================================#
#
# 1. Deploy the registry:
#    ./configure -c app/registry && ./deploy.yml && ./docker.yml && ./app.yml
#
# 2. Configure Docker clients to use the mirror:
#    Edit /etc/docker/daemon.json:
#    {
#      "registry-mirrors": ["https://registry.your-domain.com"],
#      "insecure-registries": ["registry.your-domain.com"]
#    }
#
# 3. Restart Docker daemon:
#    sudo systemctl restart docker
#
# 4. Test the registry:
#    docker pull nginx:latest  # This will now use your mirror
#
# 5. Access the web UI (optional):
#    https://registry-ui.your-domain.com
#
# 6. Monitor the registry:
#    curl https://registry.your-domain.com/v2/_catalog
#    curl https://registry.your-domain.com/v2/nginx/tags/list
#
#==============================================================#


all:
  children:

    # the docker registry mirror application
    registry:
      hosts: { 10.10.10.10: {} }
      vars:
        app: registry                    # specify app name to be installed
        apps:                            # define all applications
          registry:
            file:                        # create data directory for registry
              - { path: /data/registry ,state: directory ,mode: 0755 }
            conf:                        # environment variables for registry
              REGISTRY_IMAGE: registry:3.1.1
              REGISTRY_UI_IMAGE: joxit/docker-registry-ui:2.6.0
              REGISTRY_DATA: /data/registry
              REGISTRY_PORT: 5000
              REGISTRY_UI_PORT: 5080
              REGISTRY_STORAGE_DELETE_ENABLED: true
              REGISTRY_LOG_LEVEL: info
              REGISTRY_PROXY_REMOTEURL: https://registry-1.docker.io
              REGISTRY_PROXY_TTL: 168h

    # basic infrastructure
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }

  vars:
    #----------------------------------------------#
    # INFRA : https://pigsty.io/docs/infra/param
    #----------------------------------------------#
    version: v4.5.0                      # pigsty version string
    admin_ip: 10.10.10.10                # admin node ip address
    region: default                      # upstream mirror region: default,china,europe
    infra_portal:                        # infra services exposed via portal
      home : { domain: i.pigsty }        # default domain name

      # Docker Registry Mirror service configuration
      registry:                          # nginx server config for registry
        domain: d.pigsty                 # REPLACE IT WITH YOUR OWN DOMAIN!
        endpoint: "10.10.10.10:5000"     # registry service endpoint: IP:PORT
        websocket: false                 # registry doesn't need websocket
        certbot: d.pigsty                # certbot cert name, apply with `make cert`

      # Optional: Registry Web UI
      registry-ui:                       # nginx server config for registry UI
        domain: dui.pigsty               # REPLACE IT WITH YOUR OWN DOMAIN!
        endpoint: "10.10.10.10:5080"     # registry UI endpoint: IP:PORT
        websocket: false                 # UI doesn't need websocket
        certbot: d.pigsty                # certbot cert name for UI

    #----------------------------------------------#
    # NODE : https://pigsty.io/docs/node/param
    #----------------------------------------------#
    repo_enabled: false
    node_repo_modules: node,infra,pgsql
    node_tune: oltp                     # node tuning specs: oltp,olap,tiny,crit

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 18                      # Default PostgreSQL Major Version is 18
    pg_conf: oltp.yml                   # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    pg_packages: [ pgsql-main, pgsql-common ]   # pg kernel and common utils
    #pg_extensions: [ pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]

    #----------------------------------------------#
    # PASSWORD : https://pigsty.io/docs/setup/security/
    #----------------------------------------------#
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


--------

## Explanation

The `app/registry` template provides a one-click deployment solution for Docker Registry image proxy.

**What is Registry**:
- Docker's official image registry implementation
- Can serve as Docker Hub pull-through cache
- Can also serve as private image registry
- Supports image caching and local storage

**Key Features**:
- Pins `registry:3.1.1` and `joxit/docker-registry-ui:2.6.0` by default
- Acts as proxy cache for Docker Hub to accelerate image pulls
- Caches images to local storage `/data/registry`
- Provides Web UI to view cached images
- Supports custom cache expiration time

**Configure Docker Client**:

Edit `/etc/docker/daemon.json`:

```json
{
  "registry-mirrors": ["http://d.pigsty"],
  "insecure-registries": ["d.pigsty:5000"]
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
