---
title: Deployment
weight: 5650
icon: fas fa-boxes-packing
module: [PG_EXPORTER]
category: [Task]
---


This guide covers production deployment strategies, best practices, and real-world configurations.

`pg_exporter` itself can be configured through:

1. **Command-line arguments** with higher precedence
2. **Environment variables** with lower precedence

Metric collectors are configured through YAML config files or directories:

- `/etc/pg_exporter.yml` by default
- `/etc/pg_exporter/` for a directory with multiple config files

The configuration file uses YAML and is composed of **collector definitions** that describe what to collect and how to collect it.


--------

## Deployment Design

These are the main production tradeoffs behind `pg_exporter`:

- Local-first connectivity: the default URL is `postgresql:///?sslmode=disable`, which fits same-host deployments
- Observable before connected: non-blocking startup is the default, so HTTP endpoints come up even when the target database is temporarily unavailable
- Controllable failure mode: with `--fail-fast`, startup exits immediately if the target cannot be reached
- Online changes: support hot reload through `POST` / `GET /reload` and `SIGHUP`, with extra `SIGUSR1` support on non-Windows platforms
- Decoupled health probes: `/up` and related endpoints use cached background probe state, so probe storms do not hammer the database
- Shared management surface: `/reload`, `/explain`, and `/stat` are exposed on the same web listener by default, so protect them with `--web.config.file` or keep them inside trusted networks


--------

## Command-Line Flags

All configuration options can be specified through command-line flags:

```bash
pg_exporter \
  --url="postgres://user:pass@localhost:5432/postgres" \
  --config="/etc/pg_exporter/pg_exporter.yml" \
  --web.listen-address=":9630" \
  --auto-discovery \
  --exclude-database="template0,template1" \
  --log.level="info"
```

Run `pg_exporter --help` for the full list of flags:

```bash
Flags:
  -h, --[no-]help                Show context-sensitive help (also try --help-long and --help-man).
  -u, --url=URL                  postgres target url
  -c, --config=CONFIG            path to config dir or file
      --web.listen-address=:9630 ...
                                 Addresses on which to expose metrics and web interface. Repeatable for multiple addresses. Examples: `:9100` or `[::1]:9100` for http, `vsock://:9100` for vsock
      --web.config.file=""       Path to configuration file that can enable TLS or authentication. See: https://github.com/prometheus/exporter-toolkit/blob/master/docs/web-configuration.md
  -l, --label=""                 constant labels: comma separated list of label=value pair ($PG_EXPORTER_LABEL)
  -t, --tag=""                   tags,comma separated list of server tag ($PG_EXPORTER_TAG)
  -C, --[no-]disable-cache       force not using cache ($PG_EXPORTER_DISABLE_CACHE)
  -m, --[no-]disable-intro       disable internal/exporter self metrics (only expose query metrics) ($PG_EXPORTER_DISABLE_INTRO)
  -a, --[no-]auto-discovery      automatically scrape all database for given server ($PG_EXPORTER_AUTO_DISCOVERY)
  -x, --exclude-database="template0,template1,postgres"
                                 excluded databases when enabling auto-discovery ($PG_EXPORTER_EXCLUDE_DATABASE)
  -i, --include-database=""      included databases when auto-discovery is enabled ($PG_EXPORTER_INCLUDE_DATABASE)
  -n, --namespace=""             prefix of built-in metrics, (pg|pgbouncer) by default ($PG_EXPORTER_NAMESPACE)
  -f, --[no-]fail-fast           fail fast instead of waiting during start-up ($PG_EXPORTER_FAIL_FAST)
  -T, --connect-timeout=100      connect timeout in ms, 100 by default ($PG_EXPORTER_CONNECT_TIMEOUT)
  -P, --web.telemetry-path="/metrics"
                                 URL path under which to expose metrics. ($PG_EXPORTER_TELEMETRY_PATH)
  -D, --[no-]dry-run             dry run and print raw configs
  -E, --[no-]explain             explain server planned queries
      --log.level="info"         log level: debug|info|warn|error
      --log.format="logfmt"      log format: logfmt|json
      --[no-]version             Show application version.
```


--------

## Environment Variables

All command-line arguments have corresponding environment variables:

```bash
PG_EXPORTER_URL='postgresql:///?sslmode=disable'
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

pg_exporter
```

Besides `PG_EXPORTER_URL`, these URL-related variables are also supported:

- `PGURL` as a compatibility environment variable for the connection URL
- `PG_EXPORTER_URL_FILE` to read the connection URL from a file, which is useful with container secrets

{{% alert title="Advice" color="info" %}}
If the exporter is exposed beyond localhost or a trusted private network, configure `--web.config.file` to protect both `/metrics` and the management endpoints with authentication and TLS. Otherwise, anyone who can reach the port can read `/explain`, inspect `/stat`, and trigger `/reload`.
{{% /alert %}}


--------

## Deployment Architecture

The simplest setup is one exporter per PostgreSQL instance:

```
┌─────────────┐     ┌──────────────┐     ┌────────────┐
│ Prometheus  │────▶│ PG Exporter  │────▶│ PostgreSQL │
└─────────────┘     └──────────────┘     └────────────┘
                         :9630                :5432
```

### Multi-Database Environment

Use auto-discovery to monitor multiple databases. It is enabled by default.

```
┌─────────────┐     ┌────────────────┐     ┌────────────┐
│ Prometheus  │────▶│ PG Exporter    │────▶│ PostgreSQL │
└─────────────┘     │ with           │     │  ├─ db1    │
                    │ auto-discovery │     │  ├─ db2    │
                    └────────────────┘     │  └─ db3    │
                                           └────────────┘
```


--------

## Production Configuration

### PostgreSQL User Setup

Create a dedicated monitoring user with the minimum required privileges:

```sql
-- Create monitoring role
CREATE ROLE monitor WITH LOGIN PASSWORD 'strong_password' CONNECTION LIMIT 5;

-- Grant necessary permissions
GRANT pg_monitor TO monitor;  -- PostgreSQL 10+ built-in role
GRANT CONNECT ON DATABASE postgres TO monitor;

-- For specific databases
GRANT CONNECT ON DATABASE app_db TO monitor;
GRANT USAGE ON SCHEMA public TO monitor;

-- Additional privileges for extended monitoring
GRANT SELECT ON ALL TABLES IN SCHEMA pg_catalog TO monitor;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA pg_catalog TO monitor;
```


--------

### Connection Security

#### Using SSL/TLS

```bash
PG_EXPORTER_URL='postgres://monitor:password@db.example.com:5432/postgres?sslmode=require&sslcert=/path/to/client.crt&sslkey=/path/to/client.key&sslrootcert=/path/to/ca.crt'
```

#### Using `.pgpass`

```bash
echo "db.example.com:5432:*:monitor:password" > ~/.pgpass
chmod 600 ~/.pgpass

PG_EXPORTER_URL='postgres://monitor@db.example.com:5432/postgres'
```


--------

## Systemd Service Configuration

Complete production systemd setup:

```ini
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

Environment file `/etc/default/pg_exporter`:

```bash
PG_EXPORTER_URL='postgres://:5432/?sslmode=disable'
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

This `/etc/default/pg_exporter` example reflects the packaged environment file. You can append extra variables such as `PG_EXPORTER_DISABLE_INTRO=false` if needed. If `PG_EXPORTER_URL` is omitted entirely, the binary itself still falls back to the local-first default `postgresql:///?sslmode=disable`.


--------

## Service Management

### Start and Stop

```bash
sudo systemctl start pg_exporter
sudo systemctl stop pg_exporter
sudo systemctl restart pg_exporter
sudo systemctl status pg_exporter
sudo systemctl enable pg_exporter
```

### View Logs

```bash
journalctl -u pg_exporter -f
journalctl -u pg_exporter --since "1 hour ago"
journalctl -u pg_exporter -p err
```


--------

## Docker Deployment

### Basic Docker Run

```bash
docker run -d \
  --name pg_exporter \
  --restart unless-stopped \
  -p 9630:9630 \
  -e PG_EXPORTER_URL="postgres://user:pass@host:5432/postgres" \
  pgsty/pg_exporter:latest
```

If the container connects to PostgreSQL over remote TLS, mount `sslrootcert` or a system CA bundle explicitly. The current official image is built from `scratch`, so it does not ship with a generic system trust store.

### Docker Compose

```yaml
version: '3.8'

services:
  pg_exporter:
    image: pgsty/pg_exporter:latest
    container_name: pg_exporter
    restart: unless-stopped
    ports:
      - "9630:9630"
    environment:
      - PG_EXPORTER_URL=postgres://monitor:password@postgres:5432/postgres
      - PG_EXPORTER_AUTO_DISCOVERY=true
      - PG_EXPORTER_EXCLUDE_DATABASE=template0,template1
    volumes:
      - ./pg_exporter.yml:/etc/pg_exporter.yml:ro
    depends_on:
      - postgres
```


--------

## Kubernetes Deployment

### Deployment Example

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: pg-exporter
  labels:
    app: pg-exporter
spec:
  replicas: 1
  selector:
    matchLabels:
      app: pg-exporter
  template:
    metadata:
      labels:
        app: pg-exporter
      annotations:
        prometheus.io/scrape: "true"
        prometheus.io/port: "9630"
    spec:
      containers:
      - name: pg-exporter
        image: pgsty/pg_exporter:latest
        ports:
        - containerPort: 9630
        env:
        - name: PG_EXPORTER_URL
          valueFrom:
            secretKeyRef:
              name: pg-credentials
              key: connection-url
        - name: PG_EXPORTER_AUTO_DISCOVERY
          value: "true"
        livenessProbe:
          httpGet:
            path: /liveness
            port: 9630
          initialDelaySeconds: 30
          periodSeconds: 10
        readinessProbe:
          httpGet:
            path: /readiness
            port: 9630
          initialDelaySeconds: 5
          periodSeconds: 5
        resources:
          limits:
            cpu: 200m
            memory: 256Mi
          requests:
            cpu: 100m
            memory: 128Mi
```

### Service Example

```yaml
apiVersion: v1
kind: Service
metadata:
  name: pg-exporter
  labels:
    app: pg-exporter
spec:
  ports:
  - port: 9630
    targetPort: 9630
    name: metrics
  selector:
    app: pg-exporter
```


--------

## Prometheus Configuration

### Static Targets

```yaml
scrape_configs:
  - job_name: 'postgresql'
    static_configs:
      - targets:
        - 'pg-exporter-1:9630'
        - 'pg-exporter-2:9630'
        - 'pg-exporter-3:9630'
```

### Service Discovery

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


--------

## Monitoring and Alerting

### Recommended Alert Rules

```yaml
groups:
  - name: pg_exporter
    rules:
      - alert: PgExporterDown
        expr: up{job="postgresql"} == 0
        for: 5m
        labels:
          severity: critical
        annotations:
          summary: "PG Exporter is down"
          description: "PG Exporter on {{ $labels.instance }} has been down for more than 5 minutes"

      - alert: PostgreSQLDown
        expr: pg_up == 0
        for: 1m
        labels:
          severity: critical
        annotations:
          summary: "PostgreSQL connection failed"
          description: "Unable to connect to PostgreSQL on {{ $labels.instance }}"

      - alert: PgExporterSlowScrape
        expr: pg_exporter_scrape_duration > 30
        for: 5m
        labels:
          severity: warning
        annotations:
          summary: "PG Exporter scrape is slow"
          description: "Scrape duration on {{ $labels.instance }} has exceeded 30 seconds"
```
