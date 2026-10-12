---
title: Extensions
weight: 2100
description: Use PostgreSQL extensions with Pigsty
aliases:
  - /ext/
icon: fas fa-puzzle-piece
module: [PGSQL]
categories: [Reference]
---

Pigsty provides [**{{< param pgext_count >}} packaged extensions**](/ext/list) that are ready to use.
The extensions cover 16 major categories, including time-series, geospatial, vector, full-text search, analytics, and feature enhancements.

To use extensions in Pigsty, complete four steps: [**Download**](/docs/pgsql/ext/download), [**Install**](/docs/pgsql/ext/install), [**Config/Load**](/docs/pgsql/ext/config), and [**Create**](/docs/pgsql/ext/create).

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

![Pigsty PostgreSQL extension ecosystem](/img/pigsty/ecosystem.png)
