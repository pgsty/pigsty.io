---
title: app/insforge
weight: 880
description: Deploy the InsForge Backend-as-a-Service platform with Pigsty-managed PostgreSQL
icon: fa-solid fa-layer-group
categories: [Reference]
---

The `app/insforge` configuration template deploys InsForge OSS and uses Pigsty-managed PostgreSQL as the external database.

For details, see: **[InsForge Deployment Tutorial](/docs/app/insforge/)**


--------

## Overview

- Config Name: `app/insforge`
- Node Count: Single node
- Description: Deploy InsForge App, PostgREST, and Deno Runtime, and create the required PostgreSQL users, roles, databases, and extensions
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`supabase`](/docs/conf/supabase/)

Usage:

```bash
./configure -c app/insforge [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/insforge.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/insforge.yml)

{{< readfile file="yaml/app/insforge.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `app/insforge` template deploys by default:

- InsForge main service: `ghcr.io/insforge/insforge-oss:v2.0.1`, port `7130`
- PostgREST: `postgrest/postgrest:v12.2.12`, port `5430`
- Deno Runtime: port `7133`
- PostgreSQL database: `insforge`
- Extensions: `pgcrypto`, `http`, `pg_cron`
- Nginx entrypoint: `isf.pigsty` -> `10.10.10.10:7130`

**Access**:

```bash
http://<IP>:7130
http://isf.pigsty
```

The default admin account is `admin@example.com` / `pigsty`. For production, change `JWT_SECRET`, `ADMIN_PASSWORD`, and the database password.
