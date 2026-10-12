---
title: app/insforge
weight: 880
description: Deploy the InsForge Backend-as-a-Service platform with Pigsty-managed PostgreSQL
icon: fa-solid fa-layer-group
categories: [Reference]
---

The `app/insforge` template deploys InsForge OSS.
It uses Pigsty-managed PostgreSQL as the external database.

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

{{< include file="yaml/app/insforge.yml" code=true lang="yaml" >}}


--------

## Explanation

The `app/insforge` template deploys by default:

- InsForge main service: `ghcr.io/insforge/insforge-oss:v2.3.3`, port `7130`
- PostgREST: `postgrest/postgrest:v12.2.12`, loopback endpoint `127.0.0.1:5430`
- Deno Runtime: `denoland/deno:alpine-2.0.6`, loopback endpoint `127.0.0.1:7133`
- PostgreSQL database: `insforge`
- Extensions: `pgcrypto`, `http`, `pg_cron`; also install and preload `insforge_pg_utils` on every database node
- PostgreSQL 18 with `BYPASSRLS` enabled for `project_admin`
- Local Docker-network HBA range: `172.16.0.0/12`
- Nginx entrypoint: `isf.pigsty` -> `10.10.10.10:7130`

For a fresh deployment, initialize INFRA, install PostgreSQL packages and the `pgutils` library, then initialize the database. See the [deployment steps](/docs/app/insforge/#quick-start). When upgrading an existing database to v2.3.3, let the application run migration 065 automatically; do not replay `files/insforge.sql`.

**Access**:

```bash
http://<IP>:7130
http://isf.pigsty
```

The default administration account is `admin@example.com` with password `pigsty`.
For production, replace `JWT_SECRET`, `ENCRYPTION_KEY`, `ROOT_ADMIN_PASSWORD`, and the database password.
Keep encryption and permission settings consistent with `pg_parameters`.
