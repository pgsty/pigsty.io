---
title: Monitoring
linkTitle: Monitoring
weight: 4060
description: Monitoring dashboards and alerting rules for the FerretDB module
icon: fa-solid fa-binoculars
categories: [Reference]
---

The [`FERRET`](/docs/ferret) module currently provides one monitoring dashboard.


----------------

## Mongo Overview

[Mongo Overview](https://demo.pigsty.io/d/mongo-overview): Mongo/FerretDB cluster overview

This dashboard provides basic monitoring metrics for FerretDB, including:

- **Instance status**: Running state of FerretDB instances
- **Client connections**: Client connection count and request statistics
- **Resource usage**: CPU, memory, goroutine count, etc.
- **PostgreSQL connection pool**: Backend PostgreSQL connection pool status

[![mongo-overview.jpg](/img/dashboard/mongo-overview.jpg)](https://demo.pigsty.io/d/mongo-overview)

Since FerretDB uses PostgreSQL as its underlying storage engine, for more monitoring metrics please refer to [PostgreSQL Monitoring](/docs/pgsql/monitor).


----------------

## Metrics

FerretDB exposes Prometheus-format metrics through its built-in exporter on the [`mongo_exporter_port`](/docs/ferret/param#mongo_exporter_port) (default 9216) port.

Key metric categories include:

| Metric Prefix             | Description                       |
|:--------------------------|:----------------------------------|
| `ferretdb_*`              | FerretDB core metrics             |
| `ferretdb_client_*`       | Client connection and request stats |
| `ferretdb_postgresql_*`   | PostgreSQL backend status         |
| `go_*`                    | Go runtime metrics                |
| `process_*`               | Process-level metrics             |

For the complete list of metrics, see [Metrics](/docs/ferret/metric).


----------------

## Alerting Rules

The FerretDB module currently uses basic instance liveness alerts:

```yaml
- alert: FerretDBDown
  expr: ferretdb_up == 0
  for: 1m
  labels:
    severity: critical
  annotations:
    summary: "FerretDB instance {{ $labels.ins }} is down"
    description: "FerretDB instance {{ $labels.ins }} on {{ $labels.ip }} has been down for more than 1 minute."
```

Since FerretDB is a stateless proxy layer, the primary monitoring and alerting should focus on the underlying PostgreSQL cluster.
