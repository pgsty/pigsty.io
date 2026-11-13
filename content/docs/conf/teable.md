---
title: app/teable
weight: 850
description: Deploy Teable open-source Airtable alternative using Pigsty-managed PostgreSQL
icon: fa-solid fa-table-cells
categories: [Reference]
---

The `app/teable` template deploys the open-source Teable no-code database with PostgreSQL managed by Pigsty and an embedded Redis cache with authentication. See the [**Teable application guide**](/docs/app/teable/) for details.

--------

## Overview

- Config Name: `app/teable`
- Node Count: Single node
- Description: Deploy Teable using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/teable [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/teable.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/teable.yml)

{{< include file="yaml/app/teable.yml" code=true lang="yaml" >}}

--------

## Explanation

The `app/teable` template provides one-click deployment of the Teable open-source no-code database.

**What is Teable**:
- Open-source Airtable alternative
- No-code database built on PostgreSQL
- Supports table, kanban, calendar, form, and other views
- Provides API and automation workflows

**Key Features**:
- Uses Pigsty-managed PostgreSQL as underlying storage
- Data is stored in real PostgreSQL tables
- Supports direct SQL queries
- Can integrate with other PostgreSQL tools and extensions
- Compose includes an authenticated Redis cache (`redis:7-alpine`) with AOF persistence on a volume and no Redis port published to the host
- The application waits for Redis before starting and exposes a health check through the backend `/health` endpoint

**Access**:

```bash
# Teable Web interface
http://tea.pigsty
http://<IP>:8890

# Or via Nginx proxy
https://tea.pigsty

# Direct SQL access to underlying data
psql postgresql://dbuser_teable:DBUser.Teable@10.10.10.10:5432/teable
```

**Use Cases**:
- Need Airtable-like functionality but want to self-host
- Team collaboration data management
- Need both API and SQL access
- Want data stored in real PostgreSQL

**Notes**:
- Teable user needs superuser privileges
- Must configure `PUBLIC_ORIGIN` to external access address
- Supports email notifications (optional SMTP configuration)
- Change `REDIS_PASSWORD` and the database password before deployment. To use external Redis, override `BACKEND_CACHE_REDIS_URI` in the configuration.
- Back up both PostgreSQL and application assets under `/data/teable`.
