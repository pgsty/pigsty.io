---
title: app/immich
weight: 895
description: Deploy Immich photo and video management with Pigsty-managed PostgreSQL and VectorChord
icon: fa-solid fa-images
categories: [Reference]
---

The `app/immich` template deploys Immich.
It uses Pigsty-managed PostgreSQL 18 for metadata and vector indexes.
The template follows `v3`. On 2026-10-08, validation of Immich 3.3.0 on Linux amd64 with PostgreSQL 18.6 used a new media library and covered uploads, thumbnails, and machine-learning inference.


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

{{< include file="yaml/app/immich.yml" code=true lang="yaml" >}}


--------

## Explanation

- Persists application media under `/data/immich/library`
- Creates the `pg-immich` PostgreSQL cluster and matching database/service account
- Installs `pgvector` and `vchord`, then creates `vchord` and `earthdistance`, plus `pg_trgm` in `public`
- Preloads `vchord.so` and sets `DB_VECTOR_EXTENSION: vectorchord`
- Uses a local Valkey 9 service pinned by digest to match Immich 3.3.0's official Compose, rather than a Pigsty Redis cluster
- Proxies `photo.pigsty` to `10.10.10.10:2283`

Before deployment, change the database password, domain, and media path.
Make sure that the target platform supplies a `vchord` package for PostgreSQL 18.
