---
title: "Teable: AI No-Code Database"
weight: 580
description: Self-host Teable with Pigsty, external PostgreSQL, and Silo.
module: [SOFTWARE]
categories: [Reference]
---

[**Teable**](https://teable.io/) is a no-code database platform for team collaboration.

Pigsty provides the `app/teable` template (`conf/app/teable.yml`) and depends on **PostgreSQL + Silo + Docker** by default (no Redis dependency).

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
