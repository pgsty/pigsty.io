---
title: app/electric
weight: 830
description: Deploy Electric real-time sync service using Pigsty-managed PostgreSQL
icon: fa-solid fa-bolt-lightning
categories: [Reference]
---

The `app/electric` template deploys the Electric SQL synchronization service.
Electric synchronizes data from PostgreSQL to clients in real time.


The preview below includes unreleased application-template updates. See the [Electric application guide](/docs/app/electric/) for port, metrics, and cache requirements.

--------

## Overview

- Config Name: `app/electric`
- Node Count: Single node
- Description: Deploy Electric real-time sync using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/electric [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/electric.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/electric.yml)

<details>
<summary>Development configuration preview: requires matching Electric Compose changes</summary>

This configuration separates listening and published ports and sets persistent storage parameters. Update Compose together with it.

{{< include file="yaml/app/electric.yml" code=true lang="yaml" >}}

</details>


--------

## Development Configuration Explained

The following describes the preview above and its matching Compose file.

**What is Electric**:
- PostgreSQL to client real-time data sync service
- Supports Local-first application architecture
- Real-time syncs data changes via logical replication
- Provides HTTP API for frontend application consumption

**Key Features**:
- Uses Pigsty-managed PostgreSQL as data source
- Captures data changes via Logical Replication
- Supports SSL encrypted connections
- Persists shape metadata and logs in the `electric-data` named volume
- Optional Prometheus metrics endpoint, disabled by default; enable only after configuring regular scraping

**Access**:

```bash
# Electric API endpoint
http://<IP>:8002

# Nginx portal
http://elec.pigsty
```

**Use Cases**:
- Building Local-first applications
- Real-time data sync to clients
- Mobile and PWA data synchronization
- Real-time updates for collaborative applications

**Notes**:
- Give the Electric user `replication` permission.
- Enable PostgreSQL logical replication.
- For production, use SSL connections. The template sets `sslmode=require`.
- The container listens on `ELECTRIC_PORT=3000`; the host publishes `ELECTRIC_PUBLISH_PORT=8002`.
- Storage defaults to `ELECTRIC_STORAGE=FAST_FILE`, with the cache volume mounted at `/var/lib/electric`.
- `ELECTRIC_INSECURE=true` is suitable only for trusted development networks. Disable it and set `ELECTRIC_SECRET` before public exposure.
- The metrics port is neither enabled nor published. If enabled, scrape it continuously to avoid accumulation of unconsumed metrics.
