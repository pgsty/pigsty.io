# vibe

> VIBE AI coding sandbox config template, integrating Code-Server, JupyterLab, Claude Code, Codex CLI, and JuiceFS

---

LLMS index: [llms.txt](/llms.txt)

---

The `vibe` config template provides a ready-to-use **AI coding sandbox**, integrating Code-Server (Web VS Code), JupyterLab, Claude Code observability, Codex CLI, JuiceFS distributed filesystem, and a feature-rich PostgreSQL database.


--------

## Overview

- Config Name: `vibe`
- Node Count: Single node
- Description: VIBE AI coding sandbox with Code-Server + JupyterLab + Claude Code + Codex CLI + JuiceFS + PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c vibe [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/vibe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/vibe.yml)

```yaml
---
#==============================================================#
# File      :   vibe.yml
# Desc      :   Pigsty ai vibe coding sandbox
# Ctime     :   2026-01-19
# Mtime     :   2026-06-28
# Docs      :   https://pigsty.io/docs/conf/vibe
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# VIBE CODING SANDBOX
# PostgreSQL with related extensions
# Code-Server, Jupyter, Claude Code, optional Codex CLI
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c vibe
#   ./deploy.yml
#   ./juice.yml     # pgfs: juicefs on pgsql, mount on /fs
#   ./vibe.yml      # code-server, jupyter, claude-code, and codex cli

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    pgsql: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } } ,vars: { pg_cluster: pgsql }}

    # optional modules
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}
    #redis-ms:
    #  hosts: { 10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { }, 6380: { replica_of: '10.10.10.10 6379' } } } }
    #  vars: { redis_cluster: redis-ms ,redis_password: 'redis.ms' ,redis_max_memory: 64MB }

  vars:
    #----------------------------------------------#
    # INFRA: https://pigsty.io/docs/infra
    #----------------------------------------------#
    version: v4.5.0                     # pigsty version string
    admin_ip: 10.10.10.10               # admin node ip address
    region: default                     # upstream mirror region: default,china,europe
    infra_portal:                       # infra services exposed via portal
      home : { domain: i.pigsty }       # default domain name
    dns_enabled: false                  # disable dns service
    #blackbox_enabled: false            # disable blackbox exporter
    #alertmanager_enabled: false        # disable alertmanager
    infra_extra_services:               # home page navigation entries
      - { name: Code Server  ,url: '/code'             ,desc: 'VS Code Server'       ,icon: 'code'     }
      - { name: Jupyter      ,url: '/jupyter'          ,desc: 'Jupyter Notebook'     ,icon: 'jupyter'  }
      - { name: Claude Code  ,url: '/ui/d/claude-code' ,desc: 'Claude Observability' ,icon: 'claude'   }

    #----------------------------------------------#
    # NODE: https://pigsty.io/docs/node
    #----------------------------------------------#
    nodename_overwrite: false           # do not overwrite node hostname on single node mode
    node_tune: oltp                     # node tuning specs: oltp,olap,tiny,crit
    node_dns_method: none               # do not setup dns
    node_repo_modules: node,infra,pgsql # add these repos directly to the singleton node
    node_packages: [ openssh-server, juicefs, restic, rclone, uv, opencode, golang, asciinema, tmux ]
    docker_enabled: true                # enable docker service
    node_firewall_mode: zone            # default: trust intranet, expose selected public ports
    node_firewall_public_port: [22, 80, 443, 5432]    # expose 5432 for remote access, remove in production!
    #docker_registry_mirrors: ["https://docker.1panel.live","https://docker.1ms.run","https://docker.xuanyuan.me","https://registry-1.docker.io"]

    #----------------------------------------------#
    # PGSQL: https://pigsty.io/docs/pgsql
    #----------------------------------------------#
    pg_version: 18                      # Default PostgreSQL Major Version is 18
    pg_conf: oltp.yml                   # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    pg_packages: [ pgsql-main, patroni, pgbackrest, pg-exporter, pgbackrest-exporter ]
    pg_extensions: [ pg18-main ,pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]
    pg_users:
      - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
      - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
    pg_databases:
      - { name: meta, baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [ postgis, timescaledb, vector, age ]}
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain, pg_wait_sampling'
    pg_hba_rules:
      - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
      # WARNING: devbox only. Remove world access in production.
      - { user: all ,db: all ,addr: world ,auth: pwd ,title: 'everyone world access with password'    ,order: 900 }
    pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # make a full backup every 1am
    patroni_mode: remove                # remove patroni after deployment
    pgbouncer_enabled: false            # disable pgbouncer pool
    pgbouncer_exporter_enabled: false   # disable pgbouncer_exporter on pgsql hosts?
    pgbackrest_exporter_enabled: false  # disable pgbackrest_exporter
    pg_default_services: []             # do not provision pg services
    #pg_reload: false                   # do not reload patroni/service

    #----------------------------------------------#
    # PASSWORD : https://pigsty.io/docs/setup/security/
    #----------------------------------------------#
    grafana_admin_password: pigsty
    grafana_view_password: DBUser.Viewer
    pg_admin_password: DBUser.DBA
    pg_monitor_password: DBUser.Monitor
    pg_replication_password: DBUser.Replicator
    patroni_password: Patroni.API
    haproxy_admin_password: pigsty

    #----------------------------------------------#
    # OPTIONAL VIBE COMPONENTS
    #----------------------------------------------#
    code_enabled: true                # install & enable code-server via vibe role
    code_password: DBUser.Meta
    jupyter_enabled: true             # enable jupyter (disabled by default, enable for vibe sandbox)
    jupyter_password: DBUser.Meta
    juice_instances:
      jfs:
        path  : /fs
        meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
        data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
        port  : 9567

    # Claude Code is the default coding agent. Node.js is installed on demand when agents are enabled.
    nodejs_enabled: true              # standalone nodejs runtime
    npm_packages: []                  # extra global npm packages
    codex_enabled: true
    claude_enabled: true
    #claude_env:                      # use 3rd party Anthropic-compatible API service
    #  ANTHROPIC_BASE_URL: https://open.bigmodel.cn/api/anthropic
    #  ANTHROPIC_API_URL: https://open.bigmodel.cn/api/anthropic
    #  ANTHROPIC_AUTH_TOKEN: your_api_service_token
    #  ANTHROPIC_DEFAULT_OPUS_MODEL: "glm-5.2[1m]"
    #  ANTHROPIC_DEFAULT_SONNET_MODEL: "glm-5.2[1m]"
    #  ANTHROPIC_DEFAULT_HAIKU_MODEL: "glm-4.7"
    #  CLAUDE_CODE_AUTO_COMPACT_WINDOW: "1000000"

...
```


--------

## Explanation

The `vibe` template is an **AI-era Web coding sandbox**, enabling development, data analysis, AI app building all in browser.

**Core Components**:

| Component       | Description                             | Access Method             |
|-----------------|----------------------------------------|---------------------------|
| **Code-Server** | Web version of VS Code, full-featured code editor | `http://<ip>/code`    |
| **JupyterLab**  | Interactive data science notebook, Python/SQL | `http://<ip>/jupyter` |
| **Claude Code** | AI coding runtime and observability entrypoint (`claude_env` customizable) | Terminal / Dashboard |
| **Codex CLI**   | OpenAI agentic coding CLI; VIBE installs it but does not manage its configuration | Terminal |
| **JuiceFS**     | PostgreSQL-based distributed filesystem | Mount point `/fs`        |
| **PostgreSQL 18** | Feature-rich database with `pg18-main` + categorized extension package groups | Port `5432` |

**Node tools explicitly installed by this template** (`node_packages`):

- `openssh-server`, `juicefs`, `restic`, `rclone`
- `uv`, `opencode`, `golang`
- `asciinema`, `tmux`

**PostgreSQL Extensions**:

This template installs PostgreSQL 18 extension groups by category:

```text
pg18-main, pg18-time, pg18-gis, pg18-rag, pg18-fts, pg18-olap,
pg18-feat, pg18-lang, pg18-type, pg18-util, pg18-func, pg18-admin,
pg18-stat, pg18-sec, pg18-fdw, pg18-sim, pg18-etl
```

By default, the `meta` database enables `postgis`, `timescaledb`, and `vector`; other extensions can be enabled as needed.


--------

## VIBE Module Components

The VIBE module provides AI coding sandbox capability; `vibe.yml` explicitly enables Code-Server and Jupyter and installs Claude Code and Codex CLI by default.

**Code-Server**: VS Code in browser

- Full VS Code functionality, extension support
- HTTPS access via Nginx reverse proxy
- Supports Open VSX and Microsoft extension marketplaces
- Explicit template params: `code_enabled`, `code_password`
- Optional params: `code_port`, `code_data`, `code_gallery`

**JupyterLab**: Interactive computing environment

- Python/SQL/Markdown notebook support
- Pre-configured Python venv with data science libraries
- HTTPS access via Nginx reverse proxy
- Explicit template params: `jupyter_enabled`, `jupyter_password`
- Optional params: `jupyter_port`, `jupyter_data`, `jupyter_venv`

**Claude Code**: AI coding assistant runtime

- Uses module default behavior to bootstrap Claude runtime
- Supports endpoint/API key overrides through `claude_env`
- Provides `claude-code` dashboard for usage monitoring

**Codex CLI**: AI coding assistant

- Controlled by `codex_enabled`, which defaults to `true`
- VIBE installs `@openai/codex` only; it does not write Codex configuration or connect Codex to the Claude Code dashboard


--------

## JuiceFS Filesystem

This template uses **JuiceFS** for distributed filesystem capability, with a special feature: **both metadata and data stored in PostgreSQL**.

**Architecture Features**:

- **Metadata Engine**: Uses PostgreSQL for filesystem metadata storage
- **Data Storage**: Uses PostgreSQL Large Object for file data storage
- **Mount Point**: Default mount at `/fs` (controlled by `juice_instances.jfs.path`)
- **Monitoring Port**: `9567` provides Prometheus metrics

**Use Cases**:

- Persistent storage for code projects
- Working directory for Jupyter Notebooks
- Storage for AI models and datasets
- File sharing across instances (when scaled to multiple nodes)

**Config Example**:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port  : 9567
```


--------

## Deployment Steps

```bash
# 1. Download Pigsty
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty

# 2. Use vibe config template
./configure -c vibe

# 3. Modify passwords (important!)
vi pigsty.yml
# Change code_password, jupyter_password, database, and infrastructure defaults

# 4. Deploy infrastructure and PostgreSQL
./deploy.yml

# 5. Optional: deploy the JuiceFS filesystem
./juice.yml -l 10.10.10.10

# 6. Deploy VIBE (Code-Server, JupyterLab, Claude Code, Codex CLI)
./vibe.yml -l 10.10.10.10
```


--------

## Access Methods

After deployment, access via browser:

```bash
# Code-Server (VS Code Web)
https://<domain>/code/
# Use the rotated code_password

# JupyterLab
https://<domain>/jupyter/
# Use the rotated jupyter_password token

# Claude Code Dashboard
https://<domain>/ui/d/claude-code
# Use the rotated Grafana administrator credentials

# PostgreSQL
psql 'host=<ip> port=5432 dbname=meta user=dbuser_meta sslmode=require'
```


--------

## Use Cases

- **AI App Development**: Build RAG, Agent, LLM applications
- **Data Science**: Use JupyterLab for data analysis and visualization
- **Remote Development**: Setup Web IDE environment on cloud servers
- **Teaching Demos**: Provide consistent dev environment for students
- **Rapid Prototyping**: Quickly validate ideas without local env setup
- **Claude Code Observability**: Monitor AI coding assistant usage


--------

## Notes

- **Must change passwords**: `code_password` and `jupyter_password` defaults are for testing only
- **Jupyter boundary**: The template listens on `0.0.0.0:8888`, allows any Origin, disables XSRF checks, and relies on the token by default; restrict the port and portal sources and never expose it directly to the Internet
- **Network security**: This template exposes `5432` (`node_firewall_public_port`) and includes `addr: world` HBA by default; remove those public paths for production and add portal Basic Auth when appropriate
- **Resource requirements**: Recommend at least 2 cores 4GB memory, SSD disk
- **Simplified architecture**: This template disables Patroni, PgBouncer etc HA components, suitable for single-node dev env
- **Claude API**: Using Claude Code requires configuring API key in `claude_env`
