---
title: "Electric: PostgreSQL Sync Engine"
weight: 645
description: Self-host Electric with Pigsty to sync PostgreSQL data to frontend apps with partial replication and real-time delivery.
module: [SOFTWARE]
categories: [Reference]
---

[**Electric**](https://electric-sql.com/) is a PostgreSQL sync engine. It delivers database changes efficiently to frontend and edge applications.

Pigsty provides the `app/electric` template (`conf/app/electric.yml`). It configures the database, containers, and ingress in one workflow.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/electric
vi pigsty.yml                 # update domain, passwords, secrets
./deploy.yml
./docker.yml
./app.yml
```

Default endpoints:

- `http://<IP>:8002`
- `http://elec.pigsty` (default domain in the template)

The template enables and publishes metrics port `8003` by default. Configure regular scraping. If metrics are not needed, remove `ELECTRIC_PROMETHEUS_PORT` from `pigsty.yml` and the application `.env`, and remove its Compose port mapping before startup. An enabled reporter that is not scraped may keep accumulating metrics.

## Key Settings

`conf/app/electric.yml` writes `apps.electric.conf` into `/opt/electric/.env`. Common parameters:

- `DATABASE_URL`: PostgreSQL connection string used by Electric (replication privileges required)
- `ELECTRIC_PORT`: container listening port and published host port, both defaulting to `8002`
- `ELECTRIC_PROMETHEUS_PORT`: metrics port, enabled by default at `8003`
- `ELECTRIC_INSECURE`: can be `true` for development. Disable it in production and configure proper secrets.

The template uses the unpinned `electricsql/electric` image. Pin a version or digest compatible with the configuration before deploying.

## Cache and Version Differences

Compose does not define a persistent cache volume. To preserve the shape cache across container recreation, configure both storage settings and a volume mount; a directory in `.env` alone is insufficient.

The development template adds an `electric-data` volume, sets the container port to `3000` and the host port to `ELECTRIC_PUBLISH_PORT=8002`, and disables metrics by default. These changes require the matching Compose file. Its Electric 1.7.12 configuration uses `ELECTRIC_PERSISTENT_STATE=FILE`, `ELECTRIC_STORAGE=FAST_FILE`, and `ELECTRIC_STORAGE_DIR=/var/lib/electric`; this version does not accept the old `ELECTRIC_STORAGE=FILE`.

PostgreSQL holds the authoritative business data; a cache volume cannot replace database backups. After cache loss or a PostgreSQL timeline change, clients must still handle `409` / `must-refetch` and resynchronize.

## Operations

```bash
cd /opt/electric
make up
make logs
make down
```

## References

- Electric website: https://electric-sql.com/
- Electric docs: https://electric-sql.com/docs
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/electric.yml
