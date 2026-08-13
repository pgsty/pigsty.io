---
title: demo/saas
weight: 1080
description: Legacy single-node SaaS bundle with PostgreSQL, Silo, Redis, and multiple application entrypoints
icon: fa-solid fa-layer-group
categories: [Reference]
---

`demo/saas` is a legacy feature-rich single-node example with predefined business users, databases, and application entrypoints. It demonstrates how PostgreSQL, Silo, Redis, Docker, and the portal can be combined.


--------

## Overview

- Config Name: `demo/saas`
- Node Count: Single node
- Modules: INFRA, ETCD, MINIO, PGSQL, REDIS, DOCKER
- Related: [`rich`](/docs/conf/rich/), [`supabase`](/docs/conf/supabase/)

```bash
./configure -c demo/saas [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/saas.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/saas.yml)

{{< readfile file="yaml/demo/saas.yml" code="true" lang="yaml" >}}


--------

## Explanation

The template contains placeholder database users and databases for Grafana, Bytebase, Kong, Gitea, Wiki, NocoDB, and Odoo. It uses Silo as the pgBackRest repository and includes a Redis replica example and multiple portal domains.

This compatibility/reference bundle does not install every listed application automatically. For new deployments, prefer [`rich`](/docs/conf/rich/) plus the relevant `app/*` template. Remove unused users, databases, and entrypoints and replace all passwords first.
