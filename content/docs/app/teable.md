---
title: "Teable: AI No-Code Database"
weight: 580
description: Self-host Teable with Pigsty, external PostgreSQL, and Silo.
module: [SOFTWARE]
categories: [Reference]
---

[**Teable**](https://teable.io/) is a no-code database platform for team collaboration.

Pigsty provides the `app/teable` template (`conf/app/teable.yml`). It uses **PostgreSQL + Silo + Docker**. Compose defines only the Teable application and does not include Redis. Provide Redis separately when the selected Teable version requires a cache.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/teable
vi pigsty.yml                 # update passwords, domain, and mail settings
./deploy.yml                  # deploy infra, PostgreSQL, and Silo
./docker.yml
./app.yml
```

Default endpoints:

- `http://<IP>:8890`
- `http://tea.pigsty`

## Key Settings

The template writes the following into `/opt/teable/.env`:

- `POSTGRES_HOST/POSTGRES_PORT/POSTGRES_DB/POSTGRES_USER/POSTGRES_PASSWORD`
- `PRISMA_DATABASE_URL`
- `PUBLIC_ORIGIN` (public URL)
- `PUBLIC_DATABASE_PROXY`
- `TEABLE_PORT` (default `8890`)

- `TEABLE_DATA` (default `/data/teable`, persists application assets)

For external Redis, set `BACKEND_CACHE_PROVIDER=redis` and a complete `BACKEND_CACHE_REDIS_URI` in the application configuration, with a URI-encoded password. `.env` follows Compose interpolation rules and does not create a Redis service automatically.

## Development Cache Template

The development template adds a dedicated Redis instance (`redis:7-alpine`) authenticated with `REDIS_PASSWORD`. It stores AOF data in the `teable-cache` volume and does not publish a Redis host port. Compose generates the cache URI and waits for Redis to become ready before starting Teable.

This setup requires the matching Compose file; adding `REDIS_VERSION` or `REDIS_PASSWORD` alone does not enable it. For either deployment method, replace demo passwords before startup, back up PostgreSQL and `TEABLE_DATA`, and check the application's `/health` endpoint.

## Operations

```bash
cd /opt/teable
make up
make log
make down
```

## References

- Teable docs: https://help.teable.io/
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/teable.yml
