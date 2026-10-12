---
title: app/dify
weight: 820
description: Deploy Dify AI application development platform using Pigsty-managed PostgreSQL
icon: fa-solid fa-brain
categories: [Reference]
---

The `app/dify` template deploys the Dify AI application development platform.
It uses Pigsty-managed PostgreSQL and pgvector for vector storage.

For more details, see **[Dify Deployment Tutorial](/docs/app/dify)**


--------

## Overview

- Config Name: `app/dify`
- Node Count: Single node
- Description: Deploy Dify using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/dify [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/dify.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/dify.yml)

{{< include file="yaml/app/dify.yml" code=true lang="yaml" >}}


--------

## Explanation

The `app/dify` template supplies the Dify deployment configuration.
The current image is Dify v1.17.1; basic functionality was validated on Linux amd64 with PostgreSQL 18.6 on 2026-10-08.

**What is Dify**:
- Open-source LLM application development platform
- Supports RAG, Agent, Workflow and other AI application modes
- Provides visual Prompt orchestration and application building interface
- Supports multiple LLM backends (OpenAI, Claude, local models, etc.)

**Key Features**:
- Uses Pigsty-managed PostgreSQL instead of Dify's built-in database
- Uses pgvector as vector storage (replaces Weaviate/Qdrant)
- Enables the `collaboration` Compose profile and WebSocket sidecar
- Supports HTTPS and custom domain names
- API and plugin files use `/data/dify`; Redis, Sandbox dependencies, and Agent named volumes also need backups

**Access**:

```bash
# Direct Dify Web access
http://<IP>:5001

# Or via Nginx proxy
https://dify.pigsty
```

**Use Cases**:
- Enterprise internal AI application development platform
- RAG knowledge base Q&A systems
- LLM-driven automated workflows
- AI Agent development and deployment

**Notes**:
- Replace `SECRET_KEY` and the three `DIFY_AGENT_*` development secrets; see the [deployment checklist](/docs/app/dify/#checklist).
- Dify v1.16 and later support PostgreSQL 18's `uuidv7()` without a local migration patch.
- Configure LLM API keys (e.g., OpenAI API Key)
- Permit PostgreSQL access from the Docker networks. The template supplies an HBA rule for `172.16.0.0/12`.
- Configure a proxy if necessary to speed up Python package downloads.
