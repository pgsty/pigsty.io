---
title: app/immich
weight: 895
description: Deploy Immich photo and video management with Pigsty-managed PostgreSQL and VectorChord
icon: fa-solid fa-images
categories: [Reference]
---

The `app/immich` template deploys Immich with Pigsty-managed PostgreSQL 18 for metadata and vector indexes. The current template is validated with Immich v3.0.1.


--------

## Overview

- Config Name: `app/immich`
- Node Count: Single node
- Application Port: `2283`
- Data Directory: `/data/immich/library`
- Related: [`meta`](/docs/conf/meta/), [`app/registry`](/docs/conf/registry/)

Usage:

```bash
./configure -c app/immich [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/immich.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/immich.yml)

{{< readfile file="yaml/app/immich.yml" code="true" lang="yaml" >}}


--------

## Explanation

- Persists application media under `/data/immich/library`
- Creates the `pg-immich` PostgreSQL cluster and matching database/service account
- Installs `pgvector` and `vchord`, then creates `vchord` and `earthdistance` in the database
- Preloads `vchord.so` and sets `DB_VECTOR_EXTENSION: vectorchord`
- Uses the local Valkey service from the application Compose stack rather than a Pigsty Redis cluster
- Proxies `photo.pigsty` to `10.10.10.10:2283`

Change the database password, domain, and media path before deployment. The target platform must also provide a `vchord` package matching PostgreSQL 18.
