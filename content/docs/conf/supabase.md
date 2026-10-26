---
title: supabase
weight: 805
description: Self-host Supabase using Pigsty-managed PostgreSQL, an open-source Firebase alternative
icon: fa-solid fa-bolt
categories: [Reference]
---

The `supabase` template provides a reference configuration to self-host Supabase. It uses PostgreSQL managed by Pigsty for the underlying storage.

For more details, see **[Supabase Self-Hosting Tutorial](/docs/app/supabase/)**


--------

## Overview

- Config Name: `supabase`
- Node Count: Single node
- Description: Self-host Supabase using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `d12`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- PostgreSQL: `15`, `16`, `17`, `18` (template default: `18`)
- Supabase: use the matching application image set
- API Gateway: Kong by default
- Related: [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/)

Usage:

```bash
./configure -c supabase [-i <primary_ip>]
```


--------

## Content

Source: [`conf/supabase.yml`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml), used with `app/supabase/` from the same version.

<details>
<summary>Development configuration preview: Supabase 0.8.2 has no complete public deployment entry point</summary>

This configuration requires the matching development application files, database baseline, and migration scripts. Do not use it alone to replace stable configuration. See the [application guide](/docs/app/supabase/) for gateway and upgrade differences.

{{< include file="yaml/supabase.yml" code=true lang="yaml" >}}

</details>

--------

## Installation Demo

{{< asciinema file="demo/supabase.cast" markers="0:Check,11:Install,43:Config,307:Docker,321:Domain,340:App,350:Verify" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}


--------

## Explanation

The `supabase` template provides a complete self-hosted Supabase configuration. Run this open-source Firebase alternative on your own infrastructure.

**Architecture**:
- **PostgreSQL**: Production-grade Pigsty-managed PostgreSQL (with HA support)
- **Docker Containers**: Supabase stateless services (Auth, Storage, Realtime, Edge Functions, etc.)
- **API Gateway**: The `kong` service provides HTTP port `8000`; the development version switches to Envoy
- **Silo**: S3-compatible object storage deployed by the MINIO module for file storage and PostgreSQL backup
- **Nginx**: Reverse proxy and HTTPS termination

**Key Features**:
- Uses Pigsty-managed PostgreSQL instead of Supabase's built-in database container
- Defaults to external PG18
- Supports PostgreSQL high availability (can be expanded to three-node cluster)
- Installs all Supabase-required extensions (pg_net, pgjwt, pg_graphql, vector, etc.)
- Stores internal analytics data in the dedicated `_supabase` database and advances processing with the scheduled `supa-kick` task
- Integrated Silo object storage for file uploads and backups
- HTTPS support with Let's Encrypt automatic certificates

**Deployment Steps**:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./configure -c supabase                   # Use supabase config template
vi pigsty.yml                            # Change domains, passwords, and keys
./deploy.yml                              # Install Pigsty, PostgreSQL, Silo
./docker.yml -l supabase                  # Install Docker on the supabase group
./app.yml -l supabase                     # Start containers on the supabase group
```

**Access**:

```bash
# Supabase Studio
http://<IP>:8000
http://supa.pigsty   (username: supabase, password: pigsty)

# Direct PostgreSQL connection
psql postgres://supabase_admin:DBUser.Supa@10.10.10.10:5432/postgres
```

**Use Cases**:
- Need to self-host BaaS (Backend as a Service) platform
- Want full control over data and infrastructure
- Need enterprise-grade PostgreSQL HA and backups
- Compliance or cost concerns with Supabase cloud service

**Notes**:
- **Must change JWT_SECRET**: Use a random string with at least 32 characters. Regenerate ANON_KEY and SERVICE_ROLE_KEY.
- Configure proper domain names (`SITE_URL`, `API_EXTERNAL_URL`)
- Production environments should enable HTTPS (can use certbot for auto certificates)
- Docker networks need PostgreSQL access. The template uses `172.17.0.0/16` in Docker HBA rules; adjust it to the actual container network.
- Check migration steps for the target version before upgrading. Do not replay the fresh-install baseline `files/supabase.sql` on an existing database.
