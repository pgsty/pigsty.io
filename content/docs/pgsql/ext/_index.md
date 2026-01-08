---
title: Extensions
weight: 2100
description: Harness the synergistic power of PostgreSQL extensions
icon: fas fa-puzzle-piece
module: [PGSQL]
categories: [Reference]
tags: [Extension]
---

Pigsty provides [**440+** extensions](https://pgext.cloud/list), covering 16 major categories including time-series, geospatial, vector, full-text search, analytics, and feature enhancements, ready to use out-of-the-box.

Using extensions in Pigsty involves four core steps: [**Download**](download), [**Install**](install), [**Config/Load**](config), and [**Create**](create).

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_databases:
      - name: meta
        extensions: [ postgis, timescaledb, vector ]   # Create: Create extensions in database
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain' # Config: Preload extension libraries
    pg_extensions: [ postgis, timescaledb, pgvector ]  # Install: Install extension packages
```

![](/img/pigsty/ecosystem.gif)

