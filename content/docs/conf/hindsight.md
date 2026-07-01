---
title: app/hindsight
weight: 890
description: Deploy the Hindsight AI long-term memory service with Pigsty-managed PostgreSQL
icon: fa-solid fa-brain
categories: [Reference]
---

The `app/hindsight` configuration template deploys Hindsight and replaces its built-in development database with Pigsty-managed external PostgreSQL.

For details, see: **[Hindsight Deployment Tutorial](/docs/app/hindsight/)**


--------

## Overview

- Config Name: `app/hindsight`
- Node Count: Single node
- Description: Deploy the Hindsight all-in-one container, create an external PostgreSQL database, and configure UI/API entrypoints
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/hindsight [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/hindsight.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/hindsight.yml)

{{< readfile file="yaml/app/hindsight.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `app/hindsight` template deploys by default:

- Hindsight container: `ghcr.io/vectorize-io/hindsight:latest`
- UI port: `9999`
- API port: `8888`
- PostgreSQL database: `hindsight`
- Default vector extension: `vector`
- Nginx entrypoints: `hs.pigsty` -> `9999`, `hs-api.pigsty` -> `8888`

**Access**:

```bash
http://hs.pigsty
http://hs-api.pigsty
http://<IP>:9999
http://<IP>:8888
```

The template sets `HINDSIGHT_API_LLM_PROVIDER=none` by default, so the service can start first. Fact extraction and reflection require configuring a real LLM backend later.
