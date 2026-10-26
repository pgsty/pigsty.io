---
title: "PostgREST: Auto-Generated API"
weight: 640
date: 2022-05-21
description: Deploy PostgREST with Pigsty Compose templates and auto-generate REST APIs from PostgreSQL schema.
module: [SOFTWARE]
categories: [Reference]
---

[PostgREST](https://postgrest.org/) exposes PostgreSQL schemas directly as REST APIs.

Pigsty provides the `app/postgrest` template as a Pigsty CMDB API example using the read-only `dbuser_view` role. It publishes port `8884` on all host interfaces by default. Restrict it to loopback as shown below before starting.

## Quick Start

```bash
cd ~/pigsty/app/postgrest
vi .env         # check DB_URI / DB_SCHEMA / JWT
vi docker-compose.yml
```

Replace the `postgrest` service's port mapping with:

```yaml
ports:
  - "127.0.0.1:${POSTGREST_SERVER_PORT}:${POSTGREST_SERVER_PORT}"
```

Then run `make up`. After this change:

- Direct endpoint: `http://127.0.0.1:8884`
- For remote access, use an SSH tunnel or an authenticated Nginx portal at `http://api.pigsty`

## Key Settings

Common `.env` parameters:

- `POSTGREST_DB_URI`: database connection string
- `POSTGREST_DB_SCHEMA`: exposed schema (default `pigsty`)
- `POSTGREST_DB_ANON_ROLE`: anonymous role
- `POSTGREST_JWT_SECRET`: JWT secret

Set `POSTGREST_JWT_SECRET` to a random value of at least 32 characters. A JWT secret alone does not disable anonymous access: `POSTGREST_DB_ANON_ROLE` still determines database privileges for unauthenticated requests. Start with `make up` to apply Compose settings; `make run` is a separate `docker run` command and does not use the port mapping above.

## Swagger UI (Optional)

You can run Swagger UI separately to preview APIs:

```bash
docker run --rm --name swagger -p 127.0.0.1:8883:8080 \
  -e API_URL=http://127.0.0.1:8884 \
  swaggerapi/swagger-ui
```

Open `http://127.0.0.1:8883`. If the services run on a remote host, forward both ports first:

```bash
ssh -L 8883:127.0.0.1:8883 -L 8884:127.0.0.1:8884 your-server
```

## Common Commands

```bash
make up
make log
make stop
make clean
```

## References

- PostgREST docs: https://postgrest.org/en/stable/
- Pigsty template: https://github.com/pgsty/pigsty/tree/main/app/postgrest
