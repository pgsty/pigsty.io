---
title: Monitoring
weight: 4850
description: VIBE monitoring, focusing on Claude Code observability.
icon: fas fa-chart-line
module: [VIBE]
categories: [Reference]
---

VIBE monitoring mainly uses Claude Code OpenTelemetry data. Code-Server and JupyterLab do not expose Prometheus metrics. Use systemd and logs to check their health.

--------

## Claude Code Observability

VIBE merges default OpenTelemetry variables into `~/.claude/settings.json` without destroying existing settings. Metrics/logs go to control-plane `admin_ip` on `vmetrics_port: 8428` and `vlogs_port: 9428`, falling back to `127.0.0.1` if `admin_ip` is undefined:

```json
{
  "env": {
    "CLAUDE_CODE_ENABLE_TELEMETRY": "1",
    "OTEL_METRICS_EXPORTER": "otlp",
    "OTEL_LOGS_EXPORTER": "otlp",
    "OTEL_EXPORTER_OTLP_METRICS_PROTOCOL": "http/protobuf",
    "OTEL_EXPORTER_OTLP_LOGS_PROTOCOL": "http/protobuf",
    "OTEL_EXPORTER_OTLP_METRICS_ENDPOINT": "http://<admin_ip>:8428/opentelemetry/v1/metrics",
    "OTEL_EXPORTER_OTLP_LOGS_ENDPOINT": "http://<admin_ip>:9428/insert/opentelemetry/v1/logs",
    "OTEL_RESOURCE_ATTRIBUTES": "ip=<host>,job=claude"
  }
}
```

`claude_env` merges with these defaults and existing user settings, and can supply API keys or replace model endpoints.

--------

## Grafana Dashboard

Grafana includes `claude-code` dashboard by default:

- Portal: `https://<domain>/ui/d/claude-code`
- Direct: `http://<ip>:3000/d/claude-code`

--------

## Runtime Checks

```bash
systemctl status code-server
systemctl status jupyter
journalctl -u code-server -f
journalctl -u jupyter -f
```

Port checks:

```bash
ss -tlnp | grep 8443
ss -tlnp | grep 8888
```

--------

## Claude Logs Query

Query VictoriaLogs on the control plane (`<admin_ip>`):

```bash
curl -G 'http://<admin_ip>:9428/select/logsql/query' \
  --data-urlencode 'query=job:claude'
```
