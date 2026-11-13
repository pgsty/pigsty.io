---
title: app/mattermost
weight: 860
description: Mattermost template for one-click team collaboration deployment with Pigsty PostgreSQL and Docker.
icon: fa-solid fa-comments
categories: [Reference]
---

The `app/mattermost` template deploys Mattermost and its database on the same node by default, using Pigsty for PostgreSQL, Nginx, and monitoring. See the [**Mattermost application guide**](/docs/app/mattermost/) for details.

--------

## Overview

- Config Name: `app/mattermost`
- Node Count: Single node (default)
- Description: Deployment template for Mattermost, PostgreSQL, and Docker
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- Application Image Architecture: `x86_64` (the official Team Edition image provides only `linux/amd64`; ARM64 emulation is for testing only)
- Related: [`app/odoo`](/docs/conf/odoo/), [`app/registry`](/docs/conf/registry/), [`supabase`](/docs/conf/supabase/)

Usage:

```bash
./configure -c app/mattermost
./deploy.yml
./docker.yml
./app.yml
```


--------

## Content

Source: [`pigsty/conf/app/mattermost.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/mattermost.yml)

{{< include file="yaml/app/mattermost.yml" code=true lang="yaml" >}}

--------

## Explanation

The `app/mattermost` template defines three key groups:

- `mattermost`: app host and `apps.mattermost` settings, including `.env` overrides and data directory definition
- `pg-mattermost`: dedicated PostgreSQL cluster, database, and application account
- `infra` / `etcd`: shared Pigsty infrastructure dependencies

- Enables Docker runtime by default (`docker_enabled: true`) and prepares it through `./docker.yml`
- Exposes `mm.pigsty` in the Nginx portal (`infra_portal.mattermost`) with WebSocket support
- Includes a local Docker subnet HBA rule (`172.16.0.0/12`) allowing only the application account to access the `mattermost` database
- `apps.mattermost.file` creates data directories owned by `2000:2000`; Compose publishes the Web port and Calls media ports (`CALLS_PORT`, default `8443/TCP` and `8443/UDP`).
- Provides optional JuiceFS settings (commented) to mount `/data/mattermost` on PostgreSQL-backed storage

**Notes**:
- Change database credentials, domain names, and application secrets before deployment
- If the service is accessible from public networks, enable HTTPS and enforce ACL and firewall policies.
- Calls media traffic requires TCP and UDP. `node_firewall_public_port` opens only TCP; see the [application guide](/docs/app/mattermost/) for details.
