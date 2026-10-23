---
title: Deployment
weight: 5650
icon: fas fa-boxes-packing
module: [PG_EXPORTER]
category: [Task]
description: Production deployment — connection & credentials, systemd / Docker / Kubernetes, auto-discovery and alerting
---

Use this page to deploy `pg_exporter` in production.
It describes process arguments, environment variables, monitoring users, credentials, and deployment with systemd, Docker, or Kubernetes.
It also describes pgBouncer monitoring, auto-discovery, Prometheus scrapes, and alerts.

The exporter reads process configuration from two sources. Command-line arguments take precedence:

1. **Command-line arguments** (`--url`, `--config`, ...)
2. **Environment variables** (every flag has a corresponding `PG_EXPORTER_*` variable)

YAML collector definitions control metric collection.
The default file is `/etc/pg_exporter.yml`. You can also use a configuration directory.
See the [Configuration reference](/docs/pg_exporter/config/).


--------

## Command-Line Arguments

```bash
pg_exporter \
  --url="postgres://monitor:S3cret@localhost:5432/postgres" \
  --config="/etc/pg_exporter.yml" \
  --web.listen-address=":9630" \
  --auto-discovery \
  --log.level="info"
```

The full flag list from `pg_exporter --help`:

```bash
Flags:
  -h, --[no-]help                Show context-sensitive help (also try --help-long and --help-man).
  -u, --url=URL                  postgres target url
  -c, --config=CONFIG            path to config dir or file
      --web.listen-address=:9630 ...
                                 Addresses on which to expose metrics and web interface. Repeatable for multiple addresses. Examples: `:9100` or `[::1]:9100` for http, `vsock://:9100` for vsock
      --web.config.file=""       Path to configuration file that can enable TLS or authentication. See: https://github.com/prometheus/exporter-toolkit/blob/master/docs/web-configuration.md
  -l, --label=""                 constant labels: comma separated list of label=value pair ($PG_EXPORTER_LABEL)
  -t, --tag=""                   tags, comma separated list of server tag ($PG_EXPORTER_TAG)
  -C, --[no-]disable-cache       force not using cache ($PG_EXPORTER_DISABLE_CACHE)
  -m, --[no-]disable-intro       disable internal/exporter self-monitoring metrics (only expose query metrics) ($PG_EXPORTER_DISABLE_INTRO)
  -a, --[no-]auto-discovery      automatically scrape all databases on the target server ($PG_EXPORTER_AUTO_DISCOVERY)
  -x, --exclude-database="template0,template1,postgres"
                                 excluded databases when auto-discovery is enabled ($PG_EXPORTER_EXCLUDE_DATABASE)
  -i, --include-database=""      included databases when auto-discovery is enabled ($PG_EXPORTER_INCLUDE_DATABASE)
  -n, --namespace=""             prefix of built-in metrics, (pg|pgbouncer) by default ($PG_EXPORTER_NAMESPACE)
  -f, --[no-]fail-fast           fail fast instead of waiting during start-up ($PG_EXPORTER_FAIL_FAST)
  -T, --connect-timeout=100      connect timeout in ms, 100 by default ($PG_EXPORTER_CONNECT_TIMEOUT)
  -P, --web.telemetry-path="/metrics"
                                 URL path under which to expose metrics ($PG_EXPORTER_TELEMETRY_PATH)
  -D, --[no-]dry-run             dry run and print raw configs
  -E, --[no-]explain             explain server planned queries
      --log.level="info"         log level: debug|info|warn|error
      --log.format="logfmt"      log format: logfmt|json
      --[no-]version             Show application version.
```

These behaviors affect deployment:

- **Startup policy**: startup is non-blocking by default. If the database is unreachable, HTTP endpoints still start. A background probe retries until recovery. To fail when the database is unreachable, set `--fail-fast`. For example, use this option when systemd or an orchestrator controls restarts.
- **Telemetry path validation**: `--web.telemetry-path` rejects empty paths, conflicts with built-in endpoints, and non-canonical paths such as `//metrics`. v1.5.0 also verifies that the active HTTP mux selects the metrics handler, preventing escaped paths from returning the landing page or a redirect. Prefer an unescaped path such as `/metrics`.

### Connection URL Sources

The exporter checks these sources in order, skipping empty command-line and environment values:

1. `--url` / `-u` command-line argument
2. `PG_EXPORTER_URL` environment variable
3. `PGURL` environment variable
4. Content of the file pointed to by `PG_EXPORTER_URL_FILE` (fits container Secret mounts)
5. Default `postgresql:///?sslmode=disable` (local-first, fits same-host deployment)

Once `PG_EXPORTER_URL_FILE` is selected, an unreadable, empty, or whitespace-only file prevents startup; it does not fall back to the local default.

v1.5.0 validates URL syntax, percent escapes, and query parameter names. Names cannot be empty or contain whitespace or `=`, and URLs cannot contain an unescaped `#`. Invalid input stops startup with a fixed diagnostic that omits the raw connection string, preventing password disclosure or silently discarded TLS settings. Valid URL passwords in user information and `password=` parameters are redacted in logs.

If the URL omits `sslmode`, the exporter appends `sslmode=disable`.
At startup, it also clears libpq service-file environment variables, such as `PGSERVICE` / `PGSERVICEFILE`, and logs this action.
Service files can override an explicit connection target.
Clearing these variables ensures that the exporter connects to the URL shown in the log.


--------

## Monitoring User and Credentials

### Create the Monitoring User

```sql
CREATE ROLE monitor WITH LOGIN PASSWORD 'S3cret' CONNECTION LIMIT 5;
GRANT pg_monitor TO monitor;   -- built-in monitoring role (PostgreSQL 10+)
```

On PostgreSQL 10–13, an administrator must also run the following grant in the exporter's **main connection database** to read subscription OIDs. Granting it only in the database owning the subscription is insufficient. This does not expose the password-bearing `subconninfo` column. PostgreSQL 14+ needs no extra grant under standard catalog ACLs.

```sql
GRANT SELECT (oid) ON pg_catalog.pg_subscription TO monitor;
```

Size `CONNECTION LIMIT` for the number of discovered databases. A limit that is too low can prevent connections to additional databases. Keep a connection limit to prevent connection exhaustion if the configuration is incorrect.
The exporter normally uses one to a few connections. With auto-discovery, it uses one connection per database.

### Manage Passwords with .pgpass

Remove the password from the URL. Use libpq's `.pgpass` file to supply it:

```bash
# Create as the OS user that runs the exporter
echo "localhost:5432:*:monitor:S3cret" > ~/.pgpass
chmod 600 ~/.pgpass

# URL without password
PG_EXPORTER_URL='postgres://monitor@localhost:5432/postgres'
```

> [!NOTE] RPM/DEB package installs
> Packaged services run as the `prometheus` system user.
> From v1.4.0, its HOME is `/var/lib/prometheus`. Libpq looks for `~/.pgpass` there.
> The package does **not** create this directory. Before you use `.pgpass`, run:
> `install -d -o prometheus -g prometheus /var/lib/prometheus`

### TLS for the Database Connection

```bash
PG_EXPORTER_URL='postgres://monitor:S3cret@db.example.com:5432/postgres?sslmode=verify-full&sslrootcert=/etc/pki/ca.crt'
```

### Protecting the HTTP Port

The HTTP port provides `/metrics` and the management endpoints `/reload`, `/explain`, and `/stat`.
Anyone with access to the port can read configuration and runtime state, or start a reload.
On a shared network, enable TLS / Basic Auth with `--web.config.file` ([exporter-toolkit web configuration](https://github.com/prometheus/exporter-toolkit/blob/master/docs/web-configuration.md)).
You can also restrict access through a firewall or reverse proxy.


--------

## Systemd Deployment (RPM/DEB packages)

RPM/DEB packages include a service unit and an environment file.
After installation, edit the environment file and start the service:

```ini
# /usr/lib/systemd/system/pg_exporter.service
[Unit]
Description=Prometheus exporter for PostgreSQL/Pgbouncer server metrics
Documentation=https://pigsty.io/docs/pg_exporter
After=network.target

[Service]
EnvironmentFile=-/etc/default/pg_exporter
User=prometheus
ExecStart=/usr/bin/pg_exporter $PG_EXPORTER_OPTS
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

Environment file `/etc/default/pg_exporter` (package defaults):

```bash
PG_EXPORTER_URL='postgres://:5432/postgres?sslmode=disable'
PG_EXPORTER_CONFIG=/etc/pg_exporter.yml
PG_EXPORTER_LABEL=""
PG_EXPORTER_TAG=""
PG_EXPORTER_DISABLE_CACHE=false
PG_EXPORTER_AUTO_DISCOVERY=true
PG_EXPORTER_EXCLUDE_DATABASE="template0,template1,postgres"
PG_EXPORTER_INCLUDE_DATABASE=""
PG_EXPORTER_NAMESPACE="pg"
PG_EXPORTER_FAIL_FAST=false
PG_EXPORTER_CONNECT_TIMEOUT=100
PG_EXPORTER_TELEMETRY_PATH="/metrics"
PG_EXPORTER_OPTS='--log.level=info'
```

Each command-line flag has an environment variable. Add the variables you need, such as `PG_EXPORTER_DISABLE_INTRO`.
The file uses the `noreplace` package option. Upgrades do not overwrite your changes.

Common operations:

```bash
sudo systemctl enable --now pg_exporter    # start and enable at boot
sudo systemctl status pg_exporter          # check status
journalctl -u pg_exporter -f               # follow logs
curl -X POST localhost:9630/reload         # hot-reload collector config (no restart)
```


--------

## Docker Deployment

```bash
docker run -d \
  --name pg_exporter \
  --restart unless-stopped \
  -p 9630:9630 \
  -e PG_EXPORTER_URL="postgres://monitor:S3cret@host:5432/postgres" \
  pgsty/pg_exporter:1.5.0
```

Docker Compose:

```yaml
services:
  pg_exporter:
    image: pgsty/pg_exporter:1.5.0
    container_name: pg_exporter
    restart: unless-stopped
    ports:
      - "9630:9630"
    environment:
      - PG_EXPORTER_URL=postgres://monitor:S3cret@postgres:5432/postgres
    volumes:
      - ./pg_exporter.yml:/etc/pg_exporter.yml:ro   # optional: custom collector config
    depends_on:
      - postgres
```

> [!WARNING] Note
> The official image is built from `scratch`. It contains no system CA certificates.
> To connect to remote PostgreSQL with `sslmode=verify-ca` / `verify-full`, mount a CA certificate and set `sslrootcert` to its path.
> Without the certificate, TLS verification cannot complete.


--------

## Kubernetes Deployment

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: pg-exporter
  labels: { app: pg-exporter }
spec:
  replicas: 1
  selector:
    matchLabels: { app: pg-exporter }
  template:
    metadata:
      labels: { app: pg-exporter }
    spec:
      containers:
      - name: pg-exporter
        image: pgsty/pg_exporter:1.5.0
        ports:
        - containerPort: 9630
        env:
        - name: PG_EXPORTER_URL
          valueFrom:
            secretKeyRef:
              name: pg-credentials
              key: connection-url
        livenessProbe:
          httpGet: { path: /liveness, port: 9630 }
          initialDelaySeconds: 30
          periodSeconds: 10
        readinessProbe:
          httpGet: { path: /readiness, port: 9630 }
          initialDelaySeconds: 5
          periodSeconds: 5
        resources:
          requests: { cpu: 100m, memory: 128Mi }
          limits: { cpu: 200m, memory: 256Mi }
---
apiVersion: v1
kind: Service
metadata:
  name: pg-exporter
  labels: { app: pg-exporter }
spec:
  ports:
  - { port: 9630, targetPort: 9630, name: metrics }
  selector: { app: pg-exporter }
```

To keep the connection string out of environment variables, set `PG_EXPORTER_URL_FILE` to a Secret-mounted file.


--------

## Auto-Discovery

Auto-discovery is enabled by default.
It lets one exporter instance monitor every database in the target PostgreSQL instance:

```bash
pg_exporter --auto-discovery \
  --exclude-database="template0,template1,postgres" \
  --include-database=""
# The exclusion list above is the default; set --include-database for allowlist mode.
```

Behavior:

- Cluster-level collectors (`tags: [cluster]`) run once on the primary connection
- Database-level collectors run on every discovered database, with metrics distinguished by the `datname` label
- Newly created or dropped databases are added or removed during subsequent prechecks
- v1.5.0 uses `lib/pq` to resolve the actual database identity. Replacing the database name removes conflicting `dbname` / `database` query parameters and preserves special characters, preventing discovered connections from scraping the same database
- Database scrapes remain sequential. Allow enough scrape timeout for prechecks and queries across all databases


--------

## Monitoring pgBouncer

Set the database name in the URL to `pgbouncer`. This name activates pgBouncer mode:

```bash
PG_EXPORTER_URL='postgres://stats_user:S3cret@localhost:6432/pgbouncer' pg_exporter
```

In pgBouncer mode, the exporter uses the `pgbouncer` metric prefix.
It runs only pgBouncer collectors, such as `SHOW STATS` / `SHOW POOLS`.
Usually, you run one exporter for PostgreSQL and another for pgBouncer. Give each exporter a different port.


--------

## Prometheus Scraping and Alerting

### Scrape Configuration

```yaml
scrape_configs:
  - job_name: 'postgresql'
    scrape_interval: 15s
    static_configs:
      - targets: ['pg-1:9630', 'pg-2:9630', 'pg-3:9630']
```

Kubernetes service discovery:

```yaml
scrape_configs:
  - job_name: 'postgresql'
    kubernetes_sd_configs:
      - role: pod
    relabel_configs:
      - source_labels: [__meta_kubernetes_pod_label_app]
        regex: pg-exporter
        action: keep
      - source_labels: [__meta_kubernetes_pod_ip]
        target_label: __address__
        replacement: ${1}:9630
```

Set the scrape interval equal to or greater than the common collector `ttl`.
Most collectors in the default bundle use 10 seconds.
More frequent scrapes return cached results until the TTL expires.

### Alert Rules

The following rules use available metrics:

```yaml
groups:
  - name: pg_exporter
    rules:
      # Exporter process unreachable
      - alert: PgExporterDown
        expr: up{job="postgresql"} == 0
        for: 1m
        labels: { severity: critical }
        annotations:
          summary: "pg_exporter down ({{ $labels.instance }})"

      # Exporter alive but cannot reach the database
      - alert: PostgreSQLDown
        expr: pg_up == 0
        for: 1m
        labels: { severity: critical }
        annotations:
          summary: "PostgreSQL connection failed ({{ $labels.instance }})"

      # Overall scrape duration abnormal (unit: seconds)
      - alert: PgExporterSlowScrape
        expr: pg_exporter_scrape_duration > 10
        for: 5m
        labels: { severity: warning }
        annotations:
          summary: "pg_exporter slow scrape ({{ $labels.instance }})"

      # A specific collector keeps failing (locate by datname/query)
      - alert: PgExporterQueryError
        expr: increase(pg_exporter_query_scrape_error_count[10m]) > 0
        for: 10m
        labels: { severity: warning }
        annotations:
          summary: "Collector {{ $labels.query }} keeps failing on {{ $labels.datname }}"
```

### Role-Based Traffic Routing

Use `/primary`, `/replica`, and `/read` as health probes for HAProxy or similar load balancers.
These endpoints support primary/replica routing to separate read and write traffic.
For endpoint behavior and a complete HAProxy example, see the [API Reference](/docs/pg_exporter/api/#traffic-routing).

Open-source Nginx does not support active HTTP health checks outside the traffic connection.
The `health_check` directive requires NGINX Plus.
To route PostgreSQL traffic by role, use HAProxy or a solution such as Patroni + vip-manager.
