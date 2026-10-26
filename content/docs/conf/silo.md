---
title: app/silo
draft: true
weight: 875
description: Standalone Silo Docker APP template providing single-node S3 object storage and a console.
icon: fa-solid fa-box-archive
categories: [Reference]
---

The `app/silo` template deploys a Silo Docker Compose application on one node, replacing the former `app/minio`. See the [**Silo application guide**](/docs/app/silo/) for usage.

This page is a development draft. The YAML below requires the unpublished `app/silo/` files and cannot deploy the application on its own. Enable this page after the complete template is released.

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

Development source: `conf/app/silo.yml`.

{{< include file="yaml/app/silo.yml" code=true lang="yaml" >}}

## Explanation

The template defines the `silo` application group and deploys INFRA and ETCD on the same host. It does not configure a PostgreSQL cluster or create an object-storage cluster managed by the native MINIO module.

`apps.silo.file` creates the data directory, and `apps.silo.conf` writes image, credential, and port settings. The default root user is `siloadmin` with password `S3User.Silo`; change both before deployment. When using the console portal, set `SILO_BROWSER_REDIRECT_URL` to the full external URL.

This template suits single-node object storage dedicated to an application. For shared backup storage, TLS, automatic user and bucket provisioning, monitoring, or multi-node HA, use the [**MINIO module**](/docs/minio/) with [`demo/minio`](/docs/conf/minio/) or [`ha/trio`](/docs/conf/trio/).
