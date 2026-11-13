# PG Exporter: Containerized Metrics

> Run PG Exporter with a standalone Docker Compose template and configure its database connection, listening port, and metrics path.

---

LLMS index: [llms.txt](/llms.txt)

---

[`app/pg_exporter`](https://github.com/pgsty/pigsty/tree/main/app/pg_exporter) provides a standalone PG Exporter container example for collecting metrics from external PostgreSQL instances. Pigsty's PGSQL module already manages a native exporter; choose a separate port for this template to avoid conflicts.

## Quick Start

```bash
cd ~/pigsty/app/pg_exporter
vi .env                    # update the database connection and ports
make up
make view                  # request the configured metrics endpoint
```

The default image is `pgsty/pg_exporter` without a pinned version tag. `.env` uses the least-privilege monitoring account `dbuser_monitor`. The default metrics endpoint is `http://127.0.0.1:9632/metrics`, and the host port mapping binds to all interfaces by default.

## Ports and Metrics

```dotenv
PG_EXPORTER_PORT="9632"
PG_EXPORTER_LISTEN_ADDRESS=":9630"
PG_EXPORTER_TELEMETRY_PATH="/metrics"
PG_EXPORTER_URL="postgres://dbuser_monitor:DBUser.Monitor@10.10.10.10:5432/postgres?sslmode=disable"
```

`PG_EXPORTER_PORT` controls the published host port. The container's `PG_EXPORTER_LISTEN_ADDRESS` must use `:PORT` format (such as `:9730`, without an IP address or hostname). Compose passes it to both `--web.listen-address` and the container target port mapping so they stay aligned.

`make view` uses Python 3 to parse the effective Compose configuration, including environment variables and `COMPOSE_ENV_FILES` overrides, then requests the actual published port and `PG_EXPORTER_TELEMETRY_PATH`.

The database account needs the monitoring privileges required by the selected collectors. Replace example passwords before deployment, configure TLS and HBA for the actual network, and restrict access to the metrics port.
