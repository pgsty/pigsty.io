# Kong: API Gateway

> Deploy Kong with Pigsty Compose templates and PostgreSQL backend storage.

---

LLMS index: [llms.txt](/llms.txt)

---

[Kong](https://konghq.com/) is an open-source API gateway.

Pigsty's `app/kong` template stores configuration in PostgreSQL. For a new empty database, explicitly run the one-time `kong-migration` initialization job. Normal startup does not run it automatically.

## Quick Start

The Admin API is published on all host interfaces by default. Before startup, change its port mapping in `docker-compose.yml` to `"127.0.0.1:${KONG_ADMIN_PORT}:${KONG_ADMIN_PORT}"`, retaining the two proxy port mappings.

```bash
cd ~/pigsty/app/kong
vi .env         # check KONG_PG_* and port settings
vi docker-compose.yml # restrict the Admin API host binding
make bootstrap  # only when initializing a new empty database
make up
```

Ports after the change above:

- Proxy HTTP: `8000`
- Proxy HTTPS: `8443`
- Admin API: `127.0.0.1:8001`, host loopback only; use an SSH tunnel for remote administration

`make bootstrap` runs `kong migrations bootstrap`; it is not an upgrade command for an existing database. The template defaults to `kong:latest`. Before upgrading, record the image version, back up the database, and follow the Kong migration procedure for that version.

## Database Preparation

```bash
bin/pgsql-user pg-meta dbuser_kong
bin/pgsql-db   pg-meta kong
```

Connection string example:

```bash
postgres://dbuser_kong:DBUser.Kong@10.10.10.10:5432/kong
```

## Common Commands

```bash
make log
make stop
make clean
make pull
```

## References

- Kong docs: https://docs.konghq.com/
- Pigsty template: https://github.com/pgsty/pigsty/tree/main/app/kong
