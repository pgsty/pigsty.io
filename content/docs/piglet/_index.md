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
It integrates PostgreSQL database, JuiceFS distributed storage, Code Server, JupyterLab, Claude Code, Codex CLI and more into one,
enabling zero-friction workflow from **"prompting code"** to **"production deployment"**.

--------

## Key Features

|         Feature          | Description                                                                                                                                                            |
|:------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|       🤖 AI Coding       | Pre-installed **Claude Code**, **Codex CLI**, OpenCode, VS Code, Jupyter full stack, Python/Go/Node.js dev env ready                                                   |
|     🐘 Data Capable      | PostgreSQL 18 + [**562**](/ext/list) extensions, vector/timeseries/geo/graph/analytics, add Supabase for complex apps                                                  |
|    💾 Shared Storage     | [**JuiceFS**](/docs/juice/) stores working directory in database, multi-agent/multi-user collaboration, files never lost, rollback to any point                        |
|     ⏱️ Time Machine      | Database **PITR** + filesystem snapshot sync, messed up? One-click restore to any point in time, keep db and filesystem consistent!                                    |
|     🔀 Instant Clone     | **CoW** sub-second [**Fork Large Database**](/docs/pgsql/admin/db#clone-database), fork existing instances/clusters, no extra storage, rebuild anytime, tinker freely! |
|   🌐 One-Click Deploy    | Built-in **Nginx** handles domains, certs, proxy, static/dynamic sites, from prompt to production in one step!                                                         |
| 📊 Full-Stack Monitoring | **VictoriaMetrics** + **Grafana** panoramic dashboards, Claude Code observability included, all details at your fingertips!                                            |
|  🇨🇳 China Accessible   | Global CDN + mirrors, one config for CC + **GLM-5.2** domestic models, legal and compliant!                                                                            |
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
./vibe.yml             # Deploy Claude Code, Codex CLI, Code-Server, JupyterLab
```

After installation, access the sandbox homepage via IP: `http://<ip>`. Assuming your IP is `10.10.10.10`:

| Tool              | Description                                                                  |
|:------------------|:-----------------------------------------------------------------------------|
| Homepage          | [`http://10.10.10.10/`](http://10.10.10.10/)                                 |
| Code Server       | [`http://10.10.10.10/code`](http://10.10.10.10/code)                         |
| Jupyter Lab       | [`http://10.10.10.10/jupyter`](http://10.10.10.10/jupyter)                   |
| Grafana Dashboard | [`http://10.10.10.10/ui`](http://10.10.10.10/ui)                             |
| Claude Monitor    | [`http://10.10.10.10/ui/d/claude-code`](http://10.10.10.10/ui/d/claude-code) |
{.full-width}

> When deploying on a public cloud server, start with [**Security Recommendations**](/docs/setup/security): run `configure -g`, review the credentials it does not cover, and [**enable the firewall**](/docs/node/param#node_firewall_mode).

--------

## VIBE Components

`vibe.yml` splits the browser IDE, notebook, AI CLIs, and Node.js runtime into independently switchable components:

| Component   | Default                 | Description                                                                                                                                | Run Separately             |
|:------------|:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------|
| Code Server | `code_enabled: true`    | Browser-based VS Code, mounted at `/code` by default                                                                                       | `./vibe.yml -t code`       |
| JupyterLab  | `jupyter_enabled: true` | Notebook and interactive terminal; the role defaults to disabled, while `conf/vibe.yml` explicitly enables it for the sandbox template     | `./vibe.yml -t jupyter`    |
| Node.js     | `nodejs_enabled: true`  | Runtime required by AI CLIs; installed on demand when Claude/Codex is enabled, and uses `npmmirror` for npm by default when `region=china` | `./vibe.yml -t nodejs`     |
| Claude Code | `claude_enabled: true`  | Installs `@anthropic-ai/claude-code`, renders `~/.claude.json` and `~/.claude/settings.json`, and enables monitoring by default            | `./vibe.yml -t claude`     |
| Codex CLI   | `codex_enabled: true`   | Only runs `npm install -g @openai/codex`; it does not manage Codex config or integrate Codex into VIBE observability                       | `./vibe.yml -t codex`      |
| Extra npm   | `npm_packages: []`      | Installs additional global npm packages only; Claude and Codex are installed by their own tasks                                            | `./vibe.yml -t nodejs_pkg` |
{.full-width}

If you do not need a component, set the matching `*_enabled: false` in `pigsty.yml`, or temporarily pass switches such as `./vibe.yml -e codex_enabled=false`.

--------

## Start AI Coding

By default `/fs` is the shared directory stored in PostgreSQL, also the default home for VS Code and Jupyter.
`vibe` renders the `AGENTS.md` environment guide there and creates a `CLAUDE.md -> AGENTS.md` symlink. This directory is the recommended place for Vibe Coding.

You can ssh to the server then `cd /fs`, and normally start the corresponding CLI with `claude` or `codex`. The preconfigured `x` alias starts Codex YOLO mode, while `xx` starts Claude YOLO mode; use them carefully around real data.
You can also start Claude Code from the Code Server or Jupyter terminal, or through VS Code / Jupyter Claude plugins.

![](/img/pigsty/vscode.webp)

Claude here has logs and monitoring metrics integrated with Grafana dashboards, so you can monitor Claude's running status through Grafana.
Codex CLI is package-only in VIBE: the CLI package is installed by default, while login, provider setup, and config files are still managed by Codex itself.

![](/img/pigsty/claude-monitor-1.webp)

-------

## Using Other Models

To make Claude Code use other models, such as GLM-5.2 that does not require overseas network access in China, modify `pigsty.yml` during installation.
Find the `claude_env` section at the bottom and add Anthropic-compatible endpoint variables as needed:

```yaml
claude_env:
  ANTHROPIC_BASE_URL: https://open.bigmodel.cn/api/anthropic
  ANTHROPIC_API_URL: https://open.bigmodel.cn/api/anthropic
  ANTHROPIC_AUTH_TOKEN: your_api_service_token
  ANTHROPIC_DEFAULT_OPUS_MODEL: "glm-5.2[1m]"
  ANTHROPIC_DEFAULT_SONNET_MODEL: "glm-5.2[1m]"
  ANTHROPIC_DEFAULT_HAIKU_MODEL: "glm-4.7"
  CLAUDE_CODE_AUTO_COMPACT_WINDOW: "1000000"
```

Then re-run `./vibe.yml -t claude`. This only affects Claude Code; Codex CLI account and provider config are not managed by VIBE.

![](/img/pigsty/claude-monitor-2.webp)


## Claude Code Observability

To integrate Claude Code metrics and logs from other environments into the PIGLET monitoring system, configure environment variables to send OTEL events to the VictoriaMetrics / VictoriaLogs OTEL endpoints.

```bash
# Claude Code OTEL Configuration
export CLAUDE_CODE_ENABLE_TELEMETRY=1             # Enable monitoring
export OTEL_METRICS_EXPORTER=otlp
export OTEL_LOGS_EXPORTER=otlp
export OTEL_LOG_USER_PROMPTS=1                    # Explicitly enable prompt-content logging when needed
export OTEL_EXPORTER_OTLP_METRICS_PROTOCOL=http/protobuf
export OTEL_EXPORTER_OTLP_LOGS_PROTOCOL=http/protobuf
export OTEL_RESOURCE_ATTRIBUTES="ip=10.10.10.20,job=claude"  # Add your own labels
export OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=http://10.10.10.10:8428/opentelemetry/v1/metrics     # Metrics endpoint, VictoriaMetrics
export OTEL_EXPORTER_OTLP_LOGS_ENDPOINT=http://10.10.10.10:9428/insert/opentelemetry/v1/logs    # Logs endpoint, VictoriaLogs
export OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE=cumulative
```
