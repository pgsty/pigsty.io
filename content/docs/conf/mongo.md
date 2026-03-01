---
title: mongo
weight: 500
description: DocumentDB + FerretDB template providing Mongo wire compatibility on PostgreSQL.
icon: fa-solid fa-database
categories: [Reference]
---

The `mongo` configuration template deploys a FerretDB + DocumentDB compatibility stack, providing Mongo wire protocol access on top of PostgreSQL.

For a full walkthrough, see: **[FerretDB / Mongo compatibility guide](/docs/ferret/)**.


--------

## Overview

- Config Name: `mongo`
- Node Count: Single node (default)
- Description: Mongo-compatible template based on PostgreSQL 18 + FerretDB + DocumentDB
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`pgsql`](/docs/conf/pgsql/)

Usage:

```bash
./configure -c mongo
./deploy.yml
./mongo.yml -l ferret
```


--------

## Content

Source: [`pigsty/conf/mongo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mongo.yml)

{{< readfile file="yaml/mongo.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `mongo` template includes two core groups:

- `pg-meta`: PostgreSQL primary hosting extensions such as `documentdb`, `pg_cron`, and `rum`
- `ferret`: Mongo-compatible service layer connecting to PostgreSQL through `mongo_pgurl`

**Key Features**:
- Uses PostgreSQL 18 by default (can switch to 16/17/18)
- Enables DocumentDB capabilities in the `postgres` database for quick validation
- Preloads `pg_documentdb`, `pg_documentdb_core`, `pg_documentdb_extended_rum`, and `pg_cron`
- Includes permissive HBA defaults (local trust + intranet password auth) for development and testing

**Notes**:
- The template includes relaxed access examples (such as `world` access); tighten security for production
- For multi-node HA, extend topology and security policy based on this template
