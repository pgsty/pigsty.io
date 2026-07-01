---
title: API Reference
weight: 5640
icon: fa-solid fa-book
module: [PG_EXPORTER]
category: [Reference]
---


PG Exporter provides a comprehensive REST API for metrics collection, health checks, traffic routing, and operational control. All endpoints are exposed over HTTP/HTTPS on the configured port (default: `9630`).


--------

## Endpoint Overview

| Endpoint                       | Method   | Description                 |
|--------------------------------|----------|-----------------------------|
| [`/metrics`](#get-metrics)     | GET      | Prometheus metrics endpoint |
| [`/up`](#health-checks)        | GET      | Basic aliveness check       |
| [`/health`](#health-checks)    | GET      | Alias of `/up`              |
| [`/primary`](#traffic-routing) | GET      | Primary server check        |
| [`/replica`](#traffic-routing) | GET      | Replica server check        |
| [`/read`](#traffic-routing)    | GET      | Read traffic routing        |
| [`/reload`](#operational-endpoints) | GET/POST | Reload configuration        |
| [`/explain`](#operational-endpoints) | GET      | Explain query planning      |
| [`/stat`](#operational-endpoints)    | GET      | Runtime statistics          |
{.full-width}


--------

## Metrics Endpoint

### GET /metrics

The primary endpoint that exposes all collected metrics in Prometheus format.

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
pg_exporter_build_info{version="1.3.0",branch="main",revision="<git-sha>",builddate="<build-date>",goversion="go1.26.4",goos="linux",goarch="amd64"} 1

# ... additional metrics
```

#### Response Format

Metrics follow the Prometheus exposition format:

```
# HELP <metric_name> <description>
# TYPE <metric_name> <type>
<metric_name>{<label_name>="<label_value>",...} <value> <timestamp>
```


--------

## Health Checks

Health endpoints provide multiple ways to monitor PG Exporter and the target database state.

### GET /up

Simple aliveness check based on cached background probe state. It does not actively probe the database on every HTTP request.

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

### GET /health

Alias of `/up` with identical behavior.

```bash
curl http://localhost:9630/health
```

### GET /liveness

Kubernetes liveness probe endpoint.

```yaml
livenessProbe:
  httpGet:
    path: /liveness
    port: 9630
  initialDelaySeconds: 30
  periodSeconds: 10
```

### GET /readiness

Kubernetes readiness probe endpoint.

```yaml
readinessProbe:
  httpGet:
    path: /readiness
    port: 9630
  initialDelaySeconds: 5
  periodSeconds: 5
```


--------

## Traffic Routing

These endpoints are designed for load balancers and proxies to route traffic based on server role.

### GET /primary

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

### GET /replica

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

### GET /read

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


--------

## Operational Endpoints

### GET /reload / POST /reload

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

{{% alert title="Note" color="info" %}}
Reload refreshes collector configuration and query plans. Process-level settings such as listen addresses and CLI arguments still require a restart.
{{% /alert %}}

{{% alert title="Security Advice" color="warning" %}}
`/reload`, `/explain`, and `/stat` are management endpoints. If the exporter is reachable beyond localhost or a trusted private network, protect them with `--web.config.file` or restrict access at the reverse proxy or firewall layer.
{{% /alert %}}

### GET /explain

Display planned collector execution details for all configured collectors.

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

### GET /stat

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

This endpoint is useful when identifying slow or problematic collectors.


--------

## Using with Load Balancers

### HAProxy Example

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

### Nginx Example

```nginx
upstream pg_primary {
    server 10.0.0.1:5432;
    server 10.0.0.2:5432 backup;
}

upstream pg_replicas {
    server 10.0.0.2:5432;
    server 10.0.0.3:5432;
}

server {
    listen 5432;

    location / {
        proxy_pass http://pg_primary;
        health_check uri=/primary port=9630;
    }
}
```
