---
title: "InsForge: AI Backend-as-a-Service"
weight: 566
description: Self-host InsForge OSS with Pigsty v4.3 and keep state in external PostgreSQL.
module: [SOFTWARE]
categories: [Reference]
---

[**InsForge**](https://github.com/InsForge/InsForge) is an open-source Backend-as-a-Service platform for AI coding agents, providing authentication, REST APIs, edge functions, realtime subscriptions, and an LLM gateway.

Pigsty v4.3 provides the `app/insforge` configuration template (`conf/app/insforge.yml`), using external PostgreSQL by default and launching stateless services through Docker Compose.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/insforge
vi pigsty.yml                 # required: JWT_SECRET, admin password, database password, domain
./deploy.yml
./docker.yml
./app.yml
```

Default access URLs:

- `http://<IP>:7130`
- `http://isf.pigsty`

The default admin account is `admin@example.com` / `pigsty`; change it for production.

## Key Settings

`conf/app/insforge.yml` overrides `/opt/insforge/.env` through `apps.insforge.conf`. Key parameters:

- `JWT_SECRET`: JWT signing secret, must be replaced with a random value of at least 32 characters
- `ADMIN_EMAIL` / `ADMIN_PASSWORD`: initial admin account
- `POSTGRES_HOST` / `POSTGRES_PORT` / `POSTGRES_DB` / `POSTGRES_USER` / `POSTGRES_PASSWORD`
- `OPENROUTER_API_KEY`: optional LLM gateway setting
- `AWS_*` / `S3_*`: optional object storage settings

Default service ports:

- InsForge App + Dashboard: `7130`
- PostgREST: `5430`
- Auth: `7132`
- Deno Runtime: `7133`

## Operations

```bash
cd /opt/insforge
make up
make view
make log
make stop
```

## References

- InsForge project: https://github.com/InsForge/InsForge
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/insforge.yml
