---
title: "Piglet Runtime: AI Runtime Sandbox"
linkTitle: "piglet.run"
weight: 8000
description: "Pigsty Lightweight Runtime, AI Coding sandbox, spin up your cloud coding environment with one click"
icon: fas fa-piggy-bank fa-shake
module: [PIGLET]
---

— **Pigsty Lightweight Runtime, AI Coding Sandbox**

PIGLET is a lightweight runtime environment based on Pigsty, designed for **AI Web Coding** cloud sandbox.
It integrates PostgreSQL database, JuiceFS distributed storage, VS Code, JupyterLab and more into one,
enabling zero-friction workflow from **"prompting code"** to **"production deployment"**.

--------

## Key Features

|         Feature          | Description                                                                                                                                                            |
|:------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|       🤖 AI Coding       | Pre-installed **Claude Code**, OpenCode, VS Code, Jupyter full stack, Python/Go/Node.js dev env ready                                                                  |
|     🐘 Data Capable      | PostgreSQL 18 + [**510**](/ext/list) extensions, vector/timeseries/geo/graph/analytics, add Supabase for complex apps                                   |
|    💾 Shared Storage     | [**JuiceFS**](/docs/juice/) stores working directory in database, multi-agent/multi-user collaboration, files never lost, rollback to any point                        |
|     ⏱️ Time Machine      | Database **PITR** + filesystem snapshot sync, messed up? One-click restore to any point in time, keep db and filesystem consistent!                                    |
|     🔀 Instant Clone     | **CoW** sub-second [**Fork Large Database**](/docs/pgsql/admin/db#clone-database), fork existing instances/clusters, no extra storage, rebuild anytime, tinker freely! |
|   🌐 One-Click Deploy    | Built-in **Nginx** handles domains, certs, proxy, static/dynamic sites, from prompt to production in one step!                                                         |
| 📊 Full-Stack Monitoring | **VictoriaMetrics** + **Grafana** panoramic dashboards, Claude Code observability included, all details at your fingertips!                                            |
|  🇨🇳 China Accessible   | Global CDN + China mirrors dual-channel, no VPN needed, one config for CC + **GLM-4.7** domestic models, legal and compliant!                                          |
{.full-width}

--------

## Quick Start

[**Prepare**](/docs/deploy/prepare) a [**node**](/docs/deploy/prepare#node) with [**SSH access**](/docs/deploy/admin#ssh),
running a [**compatible Linux distro**](/docs/ref/linux/), execute with an [**admin user**](/docs/deploy/admin) having passwordless [**`ssh`**](/docs/deploy/admin#ssh) and [**`sudo`**](/docs/deploy/admin#sudo):

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./configure -c vibe -g # Use vibe mode, generate random passwords!
./deploy.yml           # Deploy infrastructure and PostgreSQL
./juice.yml            # Deploy JuiceFS filesystem
./vibe.yml             # Deploy Claude, Code-Server, JupyterLab
```

After installation, access the sandbox homepage via IP: `http://<ip>`. Assuming your IP is `10.10.10.10`:

| Tool              | Description                                                                  |
|:------------------|:-----------------------------------------------------------------------------|
| Homepage          | [`http://10.10.10.10/`](http://10.10.10.10/)                                 |
| VS Code Server    | [`http://10.10.10.10/code`](http://10.10.10.10/code)                         |
| Jupyter Lab       | [`http://10.10.10.10/jupyter`](http://10.10.10.10/jupyter)                   |
| Grafana Dashboard | [`http://10.10.10.10/ui`](http://10.10.10.10/ui)                             |
| Claude Monitor    | [`http://10.10.10.10/ui/d/claude-code`](http://10.10.10.10/ui/d/claude-code) |
{.full-width}

> Tip: If deploying on a public cloud server, check [**Security Best Practices**](/docs/setup/security), change passwords (`configure -g`), and [**enable firewall**](/docs/node/param#node_firewall_mode).

--------

## Start AI Coding

By default `/fs` is the shared directory stored in PostgreSQL, also the default home for VS Code and Jupyter.
The home directory contains `CLAUDE.md`/`AGENTS.md` environment docs, recommended for AI Coding in this directory.

You can ssh to the server then `cd /fs`, use `x` to start `claude`, use `xx` to start Claude in YOLO mode.
You can also start claude directly via VS Code and Jupyter's Claude plugins or terminal.

![](/img/pigsty/vscode.webp)

Claude here has logs and monitoring metrics integrated with Grafana dashboards, monitor Claude's running status through Grafana.

![](/img/pigsty/claude-monitor-1.webp)

-------

## Using Other Models

To use other models like GLM 4.7 (no VPN required in China), modify `pigsty.yml` config during installation,
find `claude_env` section at the bottom, add environment variables as needed:

```yaml
claude_env:
  ANTHROPIC_BASE_URL: https://open.bigmodel.cn/api/anthropic
  ANTHROPIC_API_URL: https://open.bigmodel.cn/api/anthropic
  ANTHROPIC_AUTH_TOKEN: your_api_service_token
  ANTHROPIC_DEFAULT_OPUS_MODEL: "glm-5"
  ANTHROPIC_DEFAULT_SONNET_MODEL: "glm-5"
  ANTHROPIC_DEFAULT_HAIKU_MODEL: "glm-4.7-flash"
```

Then re-run `./vibe.yml`.

![](/img/pigsty/claude-monitor-2.webp)


## Claude Code Observability

To integrate Claude Code from other environments into the monitoring system, configure environment variables to send OTEL events to VictoriaMetrics / VictoriaLogs OTEL endpoints.
Claude Code can self-vibe to handle this configuration.

```bash
# Claude Code OTEL Configuration
export CLAUDE_CODE_ENABLE_TELEMETRY=1             # Enable monitoring
export OTEL_METRICS_EXPORTER=otlp
export OTEL_LOGS_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_PROTOCOL=http/protobuf
export OTEL_LOG_USER_PROMPTS=1                    # Set to 0 to hide prompts
export OTEL_RESOURCE_ATTRIBUTES="job=claude"      # Add your own labels
export OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=http://10.10.10.10:8428/opentelemetry/v1/metrics     # Metrics endpoint, VictoriaMetrics
export OTEL_EXPORTER_OTLP_LOGS_ENDPOINT=http://10.10.10.10:9428/insert/opentelemetry/v1/logs    # Logs endpoint, VictoriaLogs
export OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE=cumulative
```
