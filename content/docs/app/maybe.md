---
title: "Maybe: Personal Finance"
weight: 600
description: Self-host Maybe on Pigsty v4.1 with external PostgreSQL storage.
module: [SOFTWARE]
categories: [Reference]
---

[**Maybe**](https://github.com/maybe-finance/maybe) is an open-source personal finance manager.

Pigsty v4.1 provides the `app/maybe` template (`conf/app/maybe.yml`) to run Maybe as stateless containers while storing business data in external PostgreSQL.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/maybe
vi pigsty.yml                 # must update SECRET_KEY_BASE, DB password, domain
./deploy.yml
./docker.yml
./app.yml
```

Default endpoints:

- `http://<IP>:5002`
- `http://maybe.pigsty`

## Key Settings

In `apps.maybe.conf`, pay attention to:

- `SECRET_KEY_BASE`: must be replaced with a random secret (e.g. `openssl rand -hex 64`)
- `DB_HOST/DB_PORT/DB_USERNAME/DB_PASSWORD/DB_DATABASE`
- `APP_DOMAIN` and `MAYBE_PORT`

## Operations

`app/maybe/Makefile` runs in `/opt/maybe` by default:

```bash
cd /opt/maybe
make up
make restart
make log
make db-setup
```

## References

- Maybe project: https://github.com/maybe-finance/maybe
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/maybe.yml
