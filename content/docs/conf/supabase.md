---
title: supabase
weight: 830
description: Self-host Supabase using Pigsty-managed PostgreSQL, an open-source Firebase alternative
icon: fa-solid fa-bolt
categories: [Reference]
---

The `supabase` configuration template provides a reference configuration for self-hosting Supabase, using Pigsty-managed PostgreSQL as the underlying storage.

For more details, see **[Supabase Self-Hosting Tutorial](/docs/pgsql/kernel/supabase/)**


--------

## Overview

- Config Name: `supabase`
- Node Count: Single node
- Description: Self-host Supabase using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/)

Usage:

```bash
./configure -c supabase [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/supabase.yml`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml)

{{< readfile file="yaml/supabase.yml" code="true" lang="yaml" >}}

--------

## Installation Demo

{{< asciinema file="demo/supabase.cast" markers="0:Check,11:Install,43:Config,307:Docker,321:Domain,340:App,350:Verify" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}


--------

## Explanation

The `supabase` template provides a complete self-hosted Supabase solution, allowing you to run this open-source Firebase alternative on your own infrastructure.

**Architecture**:
- **PostgreSQL**: Production-grade Pigsty-managed PostgreSQL (with HA support)
- **Docker Containers**: Supabase stateless services (Auth, Storage, Realtime, Edge Functions, etc.)
- **MinIO**: S3-compatible object storage for file storage and PostgreSQL backup
- **Nginx**: Reverse proxy and HTTPS termination

**Key Features**:
- Uses Pigsty-managed PostgreSQL instead of Supabase's built-in database container
- Supports PostgreSQL high availability (can be expanded to three-node cluster)
- Installs all Supabase-required extensions (pg_net, pgjwt, pg_graphql, vector, etc.)
- Integrated MinIO object storage for file uploads and backups
- HTTPS support with Let's Encrypt automatic certificates

**Deployment Steps**:

```bash
curl https://repo.pigsty.io/get | bash   # Download Pigsty
./configure -c supabase                   # Use supabase config template
./deploy.yml                              # Install Pigsty, PostgreSQL, MinIO
./docker.yml                              # Install Docker
./app.yml                                 # Start Supabase containers
```

**Access**:

```bash
# Supabase Studio
https://supa.pigsty   (username: supabase, password: pigsty)

# Direct PostgreSQL connection
psql postgres://supabase_admin:DBUser.Supa@10.10.10.10:5432/postgres
```

**Use Cases**:
- Need to self-host BaaS (Backend as a Service) platform
- Want full control over data and infrastructure
- Need enterprise-grade PostgreSQL HA and backups
- Compliance or cost concerns with Supabase cloud service

**Notes**:
- **Must change JWT_SECRET**: Use at least 32-character random string, and regenerate ANON_KEY and SERVICE_ROLE_KEY
- Configure proper domain names (`SITE_URL`, `API_EXTERNAL_URL`)
- Production environments should enable HTTPS (can use certbot for auto certificates)
- Docker network needs access to PostgreSQL (172.17.0.0/16 HBA rule configured)

