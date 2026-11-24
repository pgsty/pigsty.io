# PostgREST: Auto-Generated API

> Deploy PostgREST with Pigsty Compose templates and auto-generate REST APIs from PostgreSQL schema.

---

LLMS index: [llms.txt](/llms.txt)

---

[PostgREST](https://postgrest.org/) exposes PostgreSQL schemas directly as REST APIs.

Pigsty's `app/postgrest` template exposes a sample Pigsty CMDB API through the read-only `dbuser_view` user. Compose binds `POSTGREST_SERVER_PORT` (default `8884`) to host loopback `127.0.0.1` only.

## Quick Start

```bash
cd ~/pigsty/app/postgrest
vi .env         # check POSTGREST_DB_URI / DB_SCHEMA / JWT_SECRET / SERVER_PORT
make up
```

Default endpoint:

- Direct endpoint: `http://127.0.0.1:8884`
- For remote access, use an SSH tunnel or an authenticated Nginx portal at `http://api.pigsty`

## Key Settings

Common `.env` parameters:

- `POSTGREST_SERVER_PORT`: service listening port and loopback mapping port, default `8884`
- `POSTGREST_DB_URI`: database connection string
- `POSTGREST_DB_SCHEMA`: exposed schema (default `pigsty`)
- `POSTGREST_DB_ANON_ROLE`: anonymous role
- `POSTGREST_JWT_SECRET`: JWT secret

Set `POSTGREST_JWT_SECRET` to a random value of at least 32 characters. Setting a JWT secret alone does not disable anonymous access; `POSTGREST_DB_ANON_ROLE` still determines permissions for unauthenticated requests. `make run` is an alias for `make up` and uses the same Compose loopback binding.

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
