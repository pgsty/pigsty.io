---
title: app/jumpserver
weight: 900
description: Deploy the JumpServer open-source bastion host with Pigsty-managed PostgreSQL
icon: fa-solid fa-shield-halved
categories: [Reference]
---

The `app/jumpserver` template deploys JumpServer Community Edition.
It uses Pigsty-managed PostgreSQL 18 as its external database.
The current validation uses JumpServer v5.0.0-ce.


--------

## Overview

- Config Name: `app/jumpserver`
- Node Count: Single node
- Web Port: `8080`
- SSH Port: `2222`
- KoKo Website Proxy Port: `5001`
- Image Namespace: `registry.cn-beijing.aliyuncs.com/jumpservice`
- Tested Platform: Linux amd64; external PostgreSQL 18.6
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/jumpserver [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/jumpserver.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/jumpserver.yml)

{{< include file="yaml/app/jumpserver.yml" code=true lang="yaml" >}}


--------

## Explanation

- Creates persistent directories under `/data/jumpserver` for Core, KoKo, Kael, Chen, Nginx, and Redis
- Uses the fixed Docker subnet `192.168.250.0/24` with matching PostgreSQL and PgBouncer HBA rules
- Creates the `pg-jumpserver` cluster and matching `jumpserver` database/service account
- Runs Redis inside the application Compose stack
- Proxies `jump.pigsty` to `10.10.10.10:8080`

Before deployment, replace `SECRET_KEY`, `BOOTSTRAP_TOKEN`, `CHAT_AI_DELEGATION_SECRET`, Redis and database passwords, and the domain.
After production data exists, keep `SECRET_KEY` unchanged.

The one-shot init service migrates the database and validates the host key before Core starts. Celery and connection components wait for Core health. `jms_init` should be `Exited (0)`. See the [JumpServer application guide](/docs/app/jumpserver/) for installation, the 4.10.19 upgrade, backup, recovery, and acceptance checks.
