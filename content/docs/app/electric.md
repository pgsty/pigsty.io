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

The Prometheus endpoint is disabled by default and its port is not published. Enable `ELECTRIC_PROMETHEUS_PORT` only when regular scraping is configured: an enabled reporter that is never scraped retains metrics and can eventually exhaust memory.

## Key Settings

`conf/app/electric.yml` writes `apps.electric.conf` into `/opt/electric/.env`. Common parameters:

- `DATABASE_URL`: PostgreSQL connection string for Electric; requires `REPLICATION` privileges
- `ELECTRIC_PORT`: port inside the container, default `3000`
- `ELECTRIC_PUBLISH_PORT`: published host port, default `8002`
- `ELECTRIC_PERSISTENT_STATE`: defaults to `FILE` to retain synchronization state across container recreation
- `ELECTRIC_STORAGE`: defaults to `FAST_FILE`; Electric 1.7.12+ accepts `MEMORY` or `FAST_FILE`, and the old `FILE` value prevents startup
- `ELECTRIC_STORAGE_DIR`: absolute persistence path inside the container, default `/var/lib/electric`
- `ELECTRIC_INSECURE`: defaults to `true` for development; set it to `false` and configure `ELECTRIC_SECRET` before exposing a production deployment

The template follows the unpinned upstream `electricsql/electric` image (the verified snapshot uses sync-service `1.7.12`). Pin an image version or digest for controlled production upgrades.

## Cache and Persistence

Compose mounts the named volume `electric-data` at `ELECTRIC_STORAGE_DIR` (default `/var/lib/electric`). It retains shape handles and logs when a container is recreated at the same version and the PostgreSQL timeline is unchanged.

PostgreSQL holds the authoritative application data; the Electric cache volume does not replace database backups. Losing the volume or changing PostgreSQL instance identity or timeline invalidates cached shapes. Clients must handle `409` / `must-refetch`, discard their local cache, and synchronize again.

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
