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
make view                  # check the default /metrics endpoint
```

The default image is the unpinned `pgsty/pg_exporter`. `.env` uses `dbuser_dba`; prefer `dbuser_monitor` with monitoring privileges. The default metrics endpoint is `http://127.0.0.1:9632/metrics`, but the host port mapping is not restricted to loopback.

## Ports and Metrics

```dotenv
PG_EXPORTER_PORT=9632
PG_EXPORTER_LISTEN_ADDRESS=:9630
PG_EXPORTER_TELEMETRY_PATH=/metrics
PG_EXPORTER_URL=postgres://dbuser_monitor:DBUser.Monitor@10.10.10.10:5432/postgres?sslmode=disable
```

`PG_EXPORTER_PORT` controls the published host port. Compose fixes the container target port at `9630`. To change the container listening port, explicitly set the binary's `--web.listen-address` argument in Compose and update the port mapping; changing `.env` alone is insufficient.

`make view` reads the published port from `.env`, but its path is fixed at `/metrics`. After changes, inspect mappings with `docker compose config` and request the actual metrics URL directly.

Only the development template links `PG_EXPORTER_LISTEN_ADDRESS` (requiring `:PORT` format) to the Compose port and lets `make view` select the address and path from the final configuration.

The database account needs the monitoring privileges required by the selected collectors. Replace example passwords before deployment, configure TLS and HBA for the actual network, and restrict access to the metrics port.
