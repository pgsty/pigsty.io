---
title: demo/remote
weight: 1070
description: Monitor remote PostgreSQL and cloud RDS with pg_exporter instances on an INFRA node
icon: fa-solid fa-satellite-dish
categories: [Reference]
---

`demo/remote` deploys no local PostgreSQL cluster. Instead, it declares multiple `pg_exporters` on an INFRA node to monitor remote PostgreSQL, PolarDB, or cloud RDS instances.


--------

## Overview

- Config Name: `demo/remote`
- Local Node Count: One INFRA node
- Example Exporter Ports: `20001`-`20016`
- Related: [PG Exporter](/docs/pg_exporter/)

```bash
./configure -c demo/remote [-i <infra_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/remote.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/remote.yml)

{{< include file="yaml/demo/remote.yml" code=true lang="yaml" >}}


--------

## Explanation

Each `pg_exporters` entry uses a unique local listen port and declares the remote instance's `pg_cluster`, `pg_seq`, `pg_host`, and optional connection settings. The template demonstrates complete URLs, split credentials, database allowlists, and auto-discovery.

All hostnames and credentials are placeholders. Keep only the entries you need, use a least-privilege monitoring account, and never commit real RDS passwords.
