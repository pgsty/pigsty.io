---
title: app/dify
weight: 820
description: Deploy Dify AI application development platform using Pigsty-managed PostgreSQL
icon: fa-solid fa-brain
categories: [Reference]
---

The `app/dify` configuration template provides a reference configuration for self-hosting Dify AI application development platform, using Pigsty-managed PostgreSQL and pgvector as vector storage.

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

The `app/dify` template provides a one-click deployment solution for Dify and is currently validated with Dify v1.15.0.

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
- Data persisted to independent directory `/data/dify`

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
- Must change `SECRET_KEY`, generate with `openssl rand -base64 42`
- Configure LLM API keys (e.g., OpenAI API Key)
- Docker networks need access to PostgreSQL (the template configures a `172.16.0.0/12` HBA rule)
- Recommend configuring proxy to accelerate Python package downloads
