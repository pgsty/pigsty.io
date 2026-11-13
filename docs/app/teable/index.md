# Teable: AI No-Code Database

> Self-host Teable with Pigsty, external PostgreSQL, and Silo.

---

LLMS index: [llms.txt](/llms.txt)

---

[**Teable**](https://teable.io/) is a no-code database platform for team collaboration.

Pigsty provides the `app/teable` template (`conf/app/teable.yml`) with **PostgreSQL + Docker** and a dedicated authenticated Redis cache service (`teable-cache`) in Compose.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/teable
vi pigsty.yml                 # change database and REDIS_PASSWORD credentials, domain, and mail settings
./deploy.yml                  # install infrastructure and PostgreSQL
./docker.yml
./app.yml
```

Default endpoints:

- `http://<IP>:8890`
- `http://tea.pigsty`

## Key Settings

The template writes the following into `/opt/teable/.env`:

- `POSTGRES_HOST` / `POSTGRES_PORT` / `POSTGRES_DB` / `POSTGRES_USER` / `POSTGRES_PASSWORD`
- `PRISMA_DATABASE_URL`
- `PUBLIC_ORIGIN` (public access URL)
- `PUBLIC_DATABASE_PROXY`
- `TEABLE_PORT` (default `8890`)
- `TEABLE_DATA` (default `/data/teable`, for persistent application assets)
- `REDIS_VERSION` (default `7-alpine`) and `REDIS_PASSWORD` (embedded Redis password; change before deployment)

## Cache and Health Checks

Compose starts a dedicated `teable-cache` (`redis:7-alpine`), enables authentication with `REDIS_PASSWORD`, persists AOF in the named volume `teable-cache`, and does not publish Redis to the host. It derives `BACKEND_CACHE_REDIS_URI` from `REDIS_PASSWORD` and `REDIS_PORT`, waits for Redis to pass its health check before starting Teable, and probes the Teable backend `/health` endpoint for readiness.

To use external Redis, explicitly set the complete `BACKEND_CACHE_REDIS_URI`, with special characters in the password URI-encoded. When upgrading an old manually maintained `.env`, remove its hard-coded derived `BACKEND_CACHE_REDIS_URI` line so it does not override the new password or port settings. Back up both PostgreSQL and the `TEABLE_DATA` asset directory.

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
