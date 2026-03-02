---
title: Monitoring
weight: 4850
description: VIBE monitoring, focusing on Claude Code observability.
icon: fas fa-chart-line
module: [VIBE]
categories: [Reference]
---

VIBE monitoring mainly focuses on Claude Code OpenTelemetry data.
Code-Server and JupyterLab do not expose Prometheus metrics; use systemd and logs for health checks.

--------

## Claude Code Observability

VIBE writes default OpenTelemetry env vars into `~/.claude/settings.json`:

```json
{
  "env": {
    "CLAUDE_CODE_ENABLE_TELEMETRY": 1,
    "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": 1,
    "OTEL_LOG_USER_PROMPTS": 1,
    "OTEL_METRICS_EXPORTER": "otlp",
    "OTEL_LOGS_EXPORTER": "otlp",
    "OTEL_EXPORTER_OTLP_PROTOCOL": "http/protobuf",
    "OTEL_EXPORTER_OTLP_METRICS_ENDPOINT": "http://127.0.0.1:8428/opentelemetry/v1/metrics",
    "OTEL_EXPORTER_OTLP_LOGS_ENDPOINT": "http://127.0.0.1:9428/insert/opentelemetry/v1/logs",
    "OTEL_RESOURCE_ATTRIBUTES": "ip=<host>,job=claude"
  }
}
```

`claude_env` is merged with the defaults, and can be used for API keys or custom endpoints.

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

Via VictoriaLogs:

```bash
curl -G 'http://127.0.0.1:9428/select/logsql/query' \
  --data-urlencode 'query=job:claude'
```
