---
title: "Electric: PostgreSQL Sync Engine"
weight: 645
description: Self-host Electric with Pigsty to sync PostgreSQL data to frontend apps with partial replication and real-time delivery.
module: [SOFTWARE]
categories: [Reference]
---

[**Electric**](https://electric-sql.com/) is a PostgreSQL sync engine focused on efficiently delivering database changes to frontend and edge applications.

Pigsty provides the `app/electric` template (`conf/app/electric.yml`) to bootstrap database, container, and ingress settings in one flow.

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

Metrics port defaults to `8003` (`ELECTRIC_PROMETHEUS_PORT`).

## Key Settings

`conf/app/electric.yml` writes `apps.electric.conf` into `/opt/electric/.env`. Common parameters:

- `DATABASE_URL`: PostgreSQL connection string used by Electric (replication privileges required)
- `ELECTRIC_PORT`: Electric HTTP port (default `8002`)
- `ELECTRIC_PROMETHEUS_PORT`: metrics port (default `8003`)
- `ELECTRIC_INSECURE`: can be `true` in dev; disable in prod and use proper secrets

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
