# Kong: API Gateway

> Deploy Kong with Pigsty Compose templates and PostgreSQL backend storage.

---

LLMS index: [llms.txt](/llms.txt)

---

[Kong](https://konghq.com/) is an open-source API gateway.

Pigsty's `app/kong` template stores configuration in PostgreSQL and runs a one-time migration job (`kong-migration`) automatically.

## Quick Start

```bash
cd ~/pigsty/app/kong
vi .env         # check KONG_PG_* and port settings
make
```

Default ports:

- Proxy HTTP: `8000`
- Proxy HTTPS: `8443`
- Admin API: `8001`

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
