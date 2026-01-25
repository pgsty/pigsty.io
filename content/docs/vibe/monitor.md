---
title: VIBE Monitor
weight: 4850
description: VIBE module monitoring integration, including Claude Code observability and Dashboard usage.
icon: fas fa-chart-line
module: [VIBE]
categories: [Monitor]
---

VIBE module provides complete observability support, especially Claude Code's OpenTelemetry integration for monitoring AI coding assistant usage via Grafana Dashboard.


--------

## Monitoring Architecture

```
Claude Code CLI
    │
    ├── OpenTelemetry Metrics ──► VictoriaMetrics (8428)
    └── OpenTelemetry Logs    ──► VictoriaLogs    (9428)
                                       │
                                       ▼
                               Grafana Dashboard
                               (Claude Code Dashboard)
```


--------

## Claude Code Observability

### OpenTelemetry Config

Claude Code includes OpenTelemetry by default, auto-pushing metrics and logs to local VictoriaMetrics/VictoriaLogs:

Config file `~/.claude/settings.json`:

```json
{
  "otelEndpointMetrics": "http://127.0.0.1:8428/opentelemetry/v1/metrics",
  "otelEndpointLogs": "http://127.0.0.1:9428/insert/opentelemetry/v1/logs",
  "otelResourceAttributes": {
    "ip": "10.10.10.10",
    "job": "claude"
  }
}
```

### Monitoring Metrics

Claude Code reports these main metrics:

| Metric Type   | Description                           |
|:--------------|:--------------------------------------|
| Session       | Session count, duration               |
| Token         | Input/output token count, cost stats  |
| API Calls     | Request count, latency, error rate    |
| Tool Usage    | Tool call counts (Read, Write, Bash, etc.) |
{.full-width}

### Log Data

Claude Code logs include:

- Session start/end events
- User prompts and assistant responses
- Tool call details
- Errors and warnings


--------

## Grafana Dashboard

### Access Dashboard

Claude Code Dashboard accessible at:

```
https://<ip>:3000/d/claude-code
```

Login with Grafana credentials (default: `admin` / `pigsty`).

### Dashboard Features

| Panel          | Description                       |
|:---------------|:----------------------------------|
| Session Overview | Active sessions, total sessions  |
| Token Usage    | Input/output token trends, cost analysis |
| API Performance | Request latency, error rate       |
| Tool Usage Stats | Tool call frequency, duration distribution |
| Session Logs   | Detailed session records and conversations |
{.full-width}


--------

## System Service Monitoring

### Using systemd Monitoring

```bash
# Check Code-Server status
systemctl status code-server

# Check JupyterLab status
systemctl status jupyter

# View service logs
journalctl -u code-server -f
journalctl -u jupyter -f
```

### Port Checks

```bash
# Check Code-Server port (8443)
ss -tlnp | grep 8443

# Check JupyterLab port (8888)
ss -tlnp | grep 8888

# Use curl to check services
curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:8443
curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:8888
```


--------

## Health Checks

### Automated Health Check Script

```bash
#!/bin/bash
# vibe-health-check.sh

echo "=== VIBE Service Health Check ==="

# Code-Server
if systemctl is-active --quiet code-server; then
    echo "[OK] Code-Server: Running"
else
    echo "[ERROR] Code-Server: Not running"
fi

# JupyterLab
if systemctl is-active --quiet jupyter; then
    echo "[OK] JupyterLab: Running"
else
    echo "[ERROR] JupyterLab: Not running"
fi

# Port checks
if ss -tlnp | grep -q ":8443 "; then
    echo "[OK] Code-Server port 8443: Listening"
else
    echo "[ERROR] Code-Server port 8443: Not listening"
fi

if ss -tlnp | grep -q ":8888 "; then
    echo "[OK] JupyterLab port 8888: Listening"
else
    echo "[ERROR] JupyterLab port 8888: Not listening"
fi
```

### Endpoint Checks with curl

```bash
# Check Code-Server
curl -s -o /dev/null -w "%{http_code}\n" \
    --connect-timeout 5 \
    http://127.0.0.1:8443/healthz

# Check JupyterLab
curl -s -o /dev/null -w "%{http_code}\n" \
    --connect-timeout 5 \
    http://127.0.0.1:8888/api/status
```


--------

## Alert Configuration

### Service Down Alerts

Configure VIBE service alerts in Alertmanager:

```yaml
# Example: Code-Server down alert
- alert: CodeServerDown
  expr: up{job="code-server"} == 0
  for: 5m
  labels:
    severity: warning
  annotations:
    summary: "Code-Server service down"
    description: "Code-Server on {{ $labels.instance }} has been down for over 5 minutes"

# Example: JupyterLab down alert
- alert: JupyterLabDown
  expr: up{job="jupyter"} == 0
  for: 5m
  labels:
    severity: warning
  annotations:
    summary: "JupyterLab service down"
    description: "JupyterLab on {{ $labels.instance }} has been down for over 5 minutes"
```


--------

## Log Management

### Log Locations

| Component   | Log Location                            |
|:------------|:----------------------------------------|
| Code-Server | `journalctl -u code-server`             |
| JupyterLab  | `journalctl -u jupyter`                 |
| Claude Code | VictoriaLogs / `~/.claude/logs/`        |
{.full-width}

### Log Queries

**Using journalctl**

```bash
# View recent logs
journalctl -u code-server -n 100

# View specific time range
journalctl -u code-server --since "2024-01-01" --until "2024-01-02"

# Real-time follow
journalctl -u code-server -f
```

**Query Claude logs via VictoriaLogs**

```bash
# Query via Grafana Explore panel
# Or use vlogs API
curl -G 'http://localhost:9428/select/logsql/query' \
    --data-urlencode 'query={job="claude"}'
```


--------

## Resource Monitoring

### View Resource Usage

```bash
# View Code-Server resource usage
systemctl status code-server
ps aux | grep code-server

# View JupyterLab resource usage
systemctl status jupyter
ps aux | grep jupyter

# View memory usage
free -h

# View disk usage
df -h /data
df -h /fs
```

### JuiceFS Storage Monitoring

If using JuiceFS as working directory:

```bash
# View JuiceFS status
juicefs status /fs

# View filesystem usage
df -h /fs

# View file stats
juicefs info /fs
```


--------

## Performance Tuning

### Code-Server Performance Optimization

```yaml
# Increase file handle limit (already in systemd service)
# /etc/systemd/system/code-server.service
LimitNOFILE=65535
```

### JupyterLab Performance Optimization

```python
# /data/jupyter/jupyter_config.py

# Increase max buffer size
c.ServerApp.max_buffer_size = 1073741824  # 1GB

# Configure timeout
c.ServerApp.shutdown_no_activity_timeout = 0  # Disable auto-shutdown
```


