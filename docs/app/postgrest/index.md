# PostgREST: Auto-Generated API

> Deploy PostgREST with Pigsty Compose templates and auto-generate REST APIs from PostgreSQL schema.

---

LLMS index: [llms.txt](/llms.txt)

---

[PostgREST](https://postgrest.org/) exposes PostgreSQL schemas directly as REST APIs.

Pigsty provides the `app/postgrest` template, with default port `8884`.

## Quick Start

```bash
cd ~/pigsty/app/postgrest
vi .env         # check DB_URI / DB_SCHEMA / JWT
make up
```

Default endpoints:

- `http://<IP>:8884`
- `http://api.pigsty` (if ingress domain is configured)

## Key Settings

Common `.env` parameters:

- `POSTGREST_DB_URI`: database connection string
- `POSTGREST_DB_SCHEMA`: exposed schema (default `pigsty`)
- `POSTGREST_DB_ANON_ROLE`: anonymous role
- `POSTGREST_JWT_SECRET`: JWT secret

## Swagger UI (Optional)

You can run Swagger UI separately to preview APIs:

```bash
docker run --rm --name swagger -p 8882:8080 \
  -e API_URL=http://10.10.10.10:8884 \
  swaggerapi/swagger-ui
```

Then open `http://<IP>:8882`.

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
