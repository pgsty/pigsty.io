---
title: app/electric
weight: 830
description: Deploy Electric real-time sync service using Pigsty-managed PostgreSQL
icon: fa-solid fa-bolt-lightning
categories: [Reference]
---

The `app/electric` template deploys the Electric SQL synchronization service.
Electric synchronizes data from PostgreSQL to clients in real time.


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

{{< include file="yaml/app/electric.yml" code=true lang="yaml" >}}


--------

## Explanation

Use `app/electric` to configure and deploy the Electric SQL service.

**What is Electric**:
- PostgreSQL to client real-time data sync service
- Supports Local-first application architecture
- Real-time syncs data changes via logical replication
- Provides HTTP API for frontend application consumption

**Key Features**:
- Uses Pigsty-managed PostgreSQL as data source
- Captures data changes via Logical Replication
- Supports SSL encrypted connections
- Built-in Prometheus metrics endpoint

**Access**:

```bash
# Electric API endpoint
http://elec.pigsty:8002

# Prometheus metrics
http://elec.pigsty:8003/metrics
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
