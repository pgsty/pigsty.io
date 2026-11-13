---
title: demo/remote
weight: 1070
description: Monitor remote PostgreSQL and cloud RDS with pg_exporter instances on an INFRA node
icon: fa-solid fa-satellite-dish
categories: [Reference]
---

`demo/remote` declares multiple `pg_exporters` on an INFRA node. These exporters monitor remote PostgreSQL, PolarDB, or cloud RDS instances. The template does not deploy a local PostgreSQL cluster.


--------

## Overview

- Config Name: `demo/remote`
- Local Node Count: One INFRA node
- Example Exporter Ports: `20001`-`20016`
- Related: [PG Exporter](/docs/pg_exporter/)

```bash
./configure -c demo/remote [-i <infra_ip>]
# Configure the remote targets and credentials in pigsty.yml, then:
./infra.yml
./pgsql-monitor.yml -l infra
```


--------

## Content

Source: [`pigsty/conf/demo/remote.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/remote.yml)

{{< include file="yaml/demo/remote.yml" code=true lang="yaml" >}}


--------

## Explanation

Each `pg_exporters` entry uses a unique local listening port and specifies the remote instance's `pg_cluster`, `pg_seq`, `pg_host`, and optional connection settings. The template shows complete URLs, separate credentials, database allowlists, and automatic discovery. On INFRA nodes, `pgsql-monitor.yml` renders a separate `pg_exporter_<ins>.service` for each entry, running as the `prometheus` system user. Its connection environment file `/etc/default/pg_exporter_<ins>` has mode `0600`.

All hostnames and credentials are placeholders. Keep only the entries you need. Use a monitoring account with the minimum required privileges. Never commit real RDS passwords.
