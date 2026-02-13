---
title: app/mattermost
weight: 892
description: Mattermost template for one-click team collaboration deployment with Pigsty PostgreSQL and Docker.
icon: fa-solid fa-comments
categories: [Reference]
---

The `app/mattermost` configuration template deploys Mattermost with Pigsty-managed PostgreSQL, Nginx, and monitoring. By default, the app and database run on the same node.

For application usage details, see **[Mattermost: Open-Source IM](/docs/app/mattermost/)**.


--------

## Overview

- Config Name: `app/mattermost`
- Node Count: Single node (default)
- Description: Out-of-the-box Mattermost + PostgreSQL + Docker template
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
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

{{< readfile file="yaml/app/mattermost.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `app/mattermost` template defines three key groups:

- `mattermost`: app host and `apps.mattermost` settings, including `.env` overrides and data directory definition
- `pg-mattermost`: dedicated PostgreSQL cluster, database, and application account
- `infra` / `etcd`: shared Pigsty infrastructure dependencies

**Key Features**:
- Enables Docker runtime by default (`docker_enabled: true`) and prepares it through `./docker.yml`
- Exposes `mm.pigsty` in the Nginx portal (`infra_portal.mattermost`) with WebSocket support
- Includes local Docker subnet HBA rule (`172.17.0.0/16`) for app-to-database access
- Provides optional JuiceFS settings (commented) to mount `/data/mattermost` on PostgreSQL-backed storage

**Notes**:
- Change database credentials, domain names, and application secrets before deployment
- If exposed to public networks, enable HTTPS and enforce ACL and firewall policies
