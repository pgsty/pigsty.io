---
title: API Reference
weight: 5640
icon: fa-solid fa-book
module: [PG_EXPORTER]
category: [Reference]
---


`pg_exporter` provides four types of HTTP endpoints: metrics, health checks, traffic routing, and operational management.
The default listen port is `:9630`. The following table lists all endpoints:

| Endpoint                       | Method   | Description                 |
|--------------------------------|----------|-----------------------------|
| [`/metrics`](#get-metrics)     | GET      | Prometheus metrics endpoint (path configurable via `--web.telemetry-path`) |
| [`/up`](#health-checks)        | GET      | Aliveness check; aliases `/health`, `/liveness`, `/readiness`, `/read` |
| [`/primary`](#traffic-routing) | GET      | Primary check; aliases `/leader`, `/master`, `/read-write`, `/rw` |
| [`/replica`](#traffic-routing) | GET      | Replica check; aliases `/standby`, `/slave`, `/read-only`, `/ro` |
| [`/reload`](#operational-endpoints) | GET/POST | Hot-reload collector configuration |
| [`/explain`](#operational-endpoints) | GET      | Show per-collector planning decisions |
| [`/stat`](#operational-endpoints)    | GET      | Per-collector runtime statistics (hits / errors / duration) |
| `/version`                     | GET      | Version and build information (plain text) |
| `/`                            | GET      | Landing page linking to the metrics endpoint |
{.full-width .wide .expand}

Health and routing endpoints return the cached state from background probes: `primary`, `replica`, `down`, `starting`, or `unknown`.
They do not query the database for each HTTP request. In v1.5.0, each response reads one atomic state snapshot, so its HTTP status and body always describe the same state. The cached state can still lag behind the database. A successful PgBouncer probe maps to `primary`; it does not describe the role of its PostgreSQL backend.

## Metrics Endpoint {#metrics-endpoint}

### GET /metrics {#get-metrics}

This endpoint returns all collected metrics in Prometheus format.

#### Request

```bash
curl http://localhost:9630/metrics
```

#### Response

```prometheus
# HELP pg_up last scrape was able to connect to the server: 1 for yes, 0 for no
# TYPE pg_up gauge
pg_up 1

# HELP pg_version server version number
# TYPE pg_version gauge
pg_version 140000

# HELP pg_in_recovery server is in recovery mode? 1 for yes 0 for no
# TYPE pg_in_recovery gauge
pg_in_recovery 0

# HELP pg_exporter_build_info A metric with a constant '1' value labeled with version, revision, branch, goversion, builddate, goos, and goarch from which pg_exporter was built.
# TYPE pg_exporter_build_info gauge
pg_exporter_build_info{version="v1.6.1",branch="main",revision="<git-sha>",builddate="<build-date>",goversion="go1.27.4",goos="linux",goarch="amd64"} 1

# ... additional metrics
```

#### Response Format

Metrics follow the Prometheus exposition format:

```text
# HELP <metric_name> <description>
# TYPE <metric_name> <type>
<metric_name>{<label_name>="<label_value>",...} <value> <timestamp>
```

Since v1.6.0, at most two metrics requests are admitted across collection, waiting, and response writing. Scrapes still run serially; one request can wait within its remaining budget, and further concurrent requests receive HTTP 503. The budget defaults to 30 seconds and is shortened by a valid, finite, positive `X-Prometheus-Scrape-Timeout-Seconds` header. A request canceled while waiting does not start SQL work.

After request cancellation, the exporter does not start the next collector or database. A collector already started with a positive timeout keeps its shared predicate-and-query deadline and caches a successful refresh. A negative timeout disables that deadline, so the query cancels with the request. An interrupted scrape returns 503 if the connection still accepts a response. Driver and network blocking mean these deadlines are not hard wall-clock caps; configure `connect_timeout` in the DSN to bound connection handshakes.

Interrupted rounds do not increment `pg_exporter_scrape_error_count` or `pg_exporter_server_scrape_error_count`, and log INFO `interrupted`; query error counters and fatal-query ERROR logs remain active. A real failure that overlaps request cancellation can therefore be omitted from those two round counters. Without request cancellation, connection/precheck failures and fatal query failures (including their own timeouts) still count as errors; non-fatal failures remain visible in query-level counters.

Failed refreshes keep the existing failure TTL. In particular, a fatal collector with a negative timeout caches a fatal failure when canceled; later active scrapes can count that cached failure and report `pg_up 0` until a refresh succeeds. Keep positive timeouts on fatal collectors. See [Scrape Lifetime](https://exp.pgsty.com/design/scrape-lifetime/) for rationale.

#### Self-Monitoring Metrics

Built-in PostgreSQL metrics default to the `pg` prefix; PgBouncer uses `pgbouncer`. `--namespace` changes these prefixes, and invalid namespaces are rejected at startup. It does not rename metrics defined in YAML.

| Metric | Type | Labels | Meaning |
|:---|:---|:---|:---|
| `pg_up` | Gauge | — | Primary-target availability seen by scrapes; see interruption rules below |
| `pg_version` | Gauge | — | Primary target version number |
| `pg_in_recovery` | Gauge | — | `1` on standby, `0` on primary; use when `pg_up = 1` |
| `pg_exporter_build_info` | Gauge | version, revision, branch, builddate, goversion, goos, goarch | Constant `1` with build metadata labels |
| `pg_exporter_up` | Gauge | — | Constant `1` |
| `pg_exporter_uptime` | Gauge | — | Seconds since exporter initialization |
| `pg_exporter_scrape_total_count` | Counter | — | Scrape rounds |
| `pg_exporter_scrape_error_count` | Counter | — | Rounds where the primary target had a connection or fatal collector error |
| `pg_exporter_scrape_duration` | Gauge | — | Duration of the last complete scrape round, in seconds |
| `pg_exporter_last_scrape_time` | Gauge | — | Unix timestamp when the last scrape round finished |
| `pg_exporter_server_scrape_duration` | Gauge | datname | Duration of the database's last scrape round, in seconds |
| `pg_exporter_server_scrape_total_seconds` | Gauge | datname | Cumulative scrape duration for the database, in seconds |
| `pg_exporter_server_scrape_total_count` | Gauge | datname | Scrape rounds for the database |
| `pg_exporter_server_scrape_error_count` | Gauge | datname | Connection or fatal collector errors for the database |
| `pg_exporter_query_scrape_total_count` | Gauge | datname, query | Collector invocations, including cache hits and predicate skips |
| `pg_exporter_query_scrape_error_count` | Gauge | datname, query | Collector invocation errors |
| `pg_exporter_query_scrape_hit_count` | Gauge | datname, query | Result cache hits |
| `pg_exporter_query_scrape_metric_count` | Gauge | datname, query | Samples in the collector's current result |
| `pg_exporter_query_scrape_duration` | Gauge | datname, query | Duration of the last actual execution, in seconds; unchanged on cache hit |
| `pg_exporter_query_scrape_predicate_skip_count` | Gauge | datname, query | Skips because a predicate returned `false`, `NULL`, or zero rows |
| `pg_exporter_query_cache_ttl` | Gauge | datname, query | Remaining result cache lifetime, in seconds |
{.full-width .wide .expand}

These series also receive configured constant labels. On `pg_exporter_build_info`, build values for `version`, `revision`, `branch`, `builddate`, `goversion`, `goos`, and `goarch` take precedence over user labels. Invalid labels on built-in database/query samples cause a warning and that sample is skipped to avoid a panic. Cumulative database/collector counters are exposed as Gauges. Replanning a server resets collector statistics; configuration reload also triggers replanning. Recreating a database connection object resets that database's statistics.

`--disable-intro` suppresses all built-in metrics in this table, including `pg_up`. YAML metrics, Go/process metrics, and HTTP health endpoints remain available.

On interruption, `pg_up` preserves the primary target's previous availability state, or stays `1` if the current precheck already succeeded. If the first precheck is interrupted before succeeding, it remains `0` and recovers on a later successful scrape. Interrupted child databases follow the same per-database rule without incrementing primary-target error counters.

## Health Checks {#health-checks}

Health endpoints provide multiple ways to monitor PG Exporter and the target database state.

### GET /up {#get-up}

After initialization, HTTP health state is updated only by the once-per-second background probe. Slow scrapes do not hold the probe lock or overwrite newer probe results. HTTP health requests read the snapshot without running SQL. `pg_up` and `pg_in_recovery` remain scrape metrics: a fatal collector failure can set `pg_up` to `0` while `/up` still returns 200 if the database is reachable. Connection pool limits are three for the PostgreSQL main target, two for PgBouncer, and one per discovered database.

#### Response Codes

| Code | Status | Description |
|------|--------|-------------|
| 200  | OK     | Target is available (`primary` / `replica`) |
| 503  | Service Unavailable | Target is unavailable (`down` / `starting` / `unknown`) |
{.full-width}

#### Example

```bash
# Check whether the service is healthy
curl -I http://localhost:9630/up

HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
```

### GET /health {#get-health}

Alias of `/up` with identical behavior.

```bash
curl http://localhost:9630/health
```

### GET /liveness and GET /readiness {#get-liveness-and-get-readiness}

These aliases use the same handler and behavior as `/up`. Use them for Kubernetes probes:

```yaml
livenessProbe:
  httpGet: { path: /liveness, port: 9630 }
  initialDelaySeconds: 30
  periodSeconds: 10
readinessProbe:
  httpGet: { path: /readiness, port: 9630 }
  initialDelaySeconds: 5
  periodSeconds: 5
```

Both endpoints return 503 when the target database is unreachable.
To prevent a database failure from restarting the exporter Pod, use a TCP liveness probe on the listen port.

## Traffic Routing {#traffic-routing}

Load balancers and proxies use these endpoints to route traffic by server role.

### GET /primary {#get-primary}

Check whether the server is a primary instance.

#### Response Codes

| Code | Status | Description |
|------|--------|-------------|
| 200  | OK     | Server is primary and accepting writes |
| 404  | Not Found | Server is not primary and is acting as a replica |
| 503  | Service Unavailable | Server is unavailable (`down` / `starting` / `unknown`) |
{.full-width}

#### Aliases

- `/leader`
- `/master`
- `/read-write`
- `/rw`

#### Example

```bash
# Check whether the server is primary
curl -I http://localhost:9630/primary

# Use in HAProxy
backend pg_primary
  option httpchk GET /primary
  server pg1 10.0.0.1:5432 check port 9630
  server pg2 10.0.0.2:5432 check port 9630
```

### GET /replica {#get-replica}

Check whether the server is a replica instance.

#### Response Codes

| Code | Status | Description |
|------|--------|-------------|
| 200  | OK     | Server is a replica and in recovery |
| 404  | Not Found | Server is not a replica and is acting as primary |
| 503  | Service Unavailable | Server is unavailable (`down` / `starting` / `unknown`) |
{.full-width}

#### Aliases

- `/standby`
- `/read-only`
- `/ro`

`/slave` remains compatible, but `/replica` is the preferred name.

#### Example

```bash
# Check whether the server is a replica
curl -I http://localhost:9630/replica

# Use in a load balancer
backend pg_replicas
  option httpchk GET /replica
  server pg2 10.0.0.2:5432 check port 9630
  server pg3 10.0.0.3:5432 check port 9630
```

### GET /read {#get-read}

Check whether the server can handle read traffic. Both primaries and replicas may return success.

#### Response Codes

| Code | Status | Description |
|------|--------|-------------|
| 200  | OK     | Server is healthy and can handle reads |
| 503  | Service Unavailable | Server is unavailable (`down` / `starting` / `unknown`) |
{.full-width}

#### Example

```bash
# Check whether the server can serve reads
curl -I http://localhost:9630/read

# Route reads to any healthy server
backend pg_read
  option httpchk GET /read
  server pg1 10.0.0.1:5432 check port 9630
  server pg2 10.0.0.2:5432 check port 9630
  server pg3 10.0.0.3:5432 check port 9630
```

## Operational Endpoints {#operational-endpoints}

### GET /reload / POST /reload {#get-reload-post-reload}

Reload configuration without restarting the exporter.

#### Request

```bash
# POST is recommended
curl -X POST http://localhost:9630/reload

# GET remains supported for compatibility
curl http://localhost:9630/reload
```

#### Response

```text
server reloaded
```

#### Response Codes

| Code | Status | Description |
|------|--------|-------------|
| 200  | OK     | Reload completed successfully |
| 500  | Internal Server Error | Reload failed and returns `fail to reload: ...` |
| 405  | Method Not Allowed | Non-GET/POST request, with `Allow: GET, POST` |
{.full-width}

#### Use Cases

- Update collector definitions
- Change query parameters
- Modify cache TTL values
- Add or remove collectors

> [!NOTE] Note
> Reload updates collector configuration, query plans, caches, and query statistics. A parsing failure preserves the previous plan and caches. Empty YAML is a valid empty configuration; a successful reload clears the collectors. Directory mode permits partial file loading; see [Configuration Loading](/docs/pg_exporter/config/#configuration-loading).
> To change process settings, such as listen addresses or CLI arguments, restart the exporter.

> [!WARNING] Security Advice
> `/reload`, `/explain`, and `/stat` are management endpoints.
> If the exporter is reachable outside localhost or a trusted private network, protect these endpoints.
> Use `--web.config.file`, or restrict access through a reverse proxy or firewall.

### GET /explain {#get-explain}

Display the collectors selected in the primary target's current plan. Predicates run during refresh and are not evaluated by this endpoint.

#### Request

```bash
curl http://localhost:9630/explain
```

#### Response

```text
##
# SYNOPSIS
#       pg.pg_primary_only_*
#
# DESCRIPTION
#       PostgreSQL basic information (on primary)
#
# OPTIONS
#       Tags       [cluster, primary]
#       TTL        1
#       Priority   110
#       Timeout    100ms
#       Fatal      true
#       Version    100000 ~ higher
#       Source     pg_exporter.yml

...
```

### GET /stat {#get-stat}

Show runtime statistics, including collector execution times and success/error counters.

#### Request

```bash
curl http://localhost:9630/stat
```

#### Response

```text
name                     total      hit        error      skip       metric     ttl/s  duration/ms
pg                       12         0          0          0          15         1      4.231000
pg_db                    12         11         0          0          28         10     0.153000
pg_activity              12         0          1          0          8          0      7.842000
...
```

Use this endpoint to identify slow or failed collectors.

## Using with Load Balancers {#using-with-load-balancers}

### HAProxy Example {#haproxy-example}

```haproxy
# Primary backend for write traffic
backend pg_primary
  mode tcp
  option httpchk GET /primary
  http-check expect status 200
  server pg1 10.0.0.1:5432 check port 9630 inter 3000 fall 2 rise 2
  server pg2 10.0.0.2:5432 check port 9630 inter 3000 fall 2 rise 2 backup

# Replica backend for read traffic
backend pg_replicas
  mode tcp
  balance roundrobin
  option httpchk GET /replica
  http-check expect status 200
  server pg2 10.0.0.2:5432 check port 9630 inter 3000 fall 2 rise 2
  server pg3 10.0.0.3:5432 check port 9630 inter 3000 fall 2 rise 2

# Read backend for any server that can handle reads
backend pg_read
  mode tcp
  balance leastconn
  option httpchk GET /read
  http-check expect status 200
  server pg1 10.0.0.1:5432 check port 9630 inter 3000 fall 2 rise 2
  server pg2 10.0.0.2:5432 check port 9630 inter 3000 fall 2 rise 2
  server pg3 10.0.0.3:5432 check port 9630 inter 3000 fall 2 rise 2
```

### A Note on Nginx {#a-note-on-nginx}

Open-source Nginx does not support active HTTP health checks outside the traffic connection.
The `health_check` directive requires NGINX Plus.
PostgreSQL traffic also requires the `stream` module instead of `http` proxying.
To route PostgreSQL traffic by role, use HAProxy as shown above, or a solution such as Patroni + vip-manager.
