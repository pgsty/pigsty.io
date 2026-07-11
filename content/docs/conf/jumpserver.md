---
title: app/jumpserver
weight: 900
description: Deploy the JumpServer open-source bastion host with Pigsty-managed PostgreSQL
icon: fa-solid fa-shield-halved
categories: [Reference]
---

The `app/jumpserver` template deploys JumpServer Community Edition with Pigsty-managed PostgreSQL 18 as its external database. The current template is validated with JumpServer v4.10.16-ce.


--------

## Overview

- Config Name: `app/jumpserver`
- Node Count: Single node
- Web Port: `8080`
- SSH Port: `2222`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/jumpserver [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/jumpserver.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/jumpserver.yml)

{{< readfile file="yaml/app/jumpserver.yml" code="true" lang="yaml" >}}


--------

## Explanation

- Creates persistent directories under `/data/jumpserver` for Core, Koko, Lion, Chen, Nginx, and Redis
- Uses the fixed Docker subnet `192.168.250.0/24` with matching PostgreSQL and PgBouncer HBA rules
- Creates the `pg-jumpserver` cluster and matching `jumpserver` database/service account
- Runs Redis inside the application Compose stack
- Proxies `jump.pigsty` to `10.10.10.10:8080`

Replace `SECRET_KEY`, `BOOTSTRAP_TOKEN`, Redis/database passwords, and the domain before deployment. Once production data exists, `SECRET_KEY` must remain stable.
