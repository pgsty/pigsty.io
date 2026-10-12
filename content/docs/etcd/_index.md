---
title: "Module: ETCD"
weight: 3400
description: Pigsty deploys etcd as DCS for reliable distributed config storage, supporting PostgreSQL HA.
icon: fas fa-gears
module: [ETCD]
categories: [Reference]
---

ETCD is a distributed, reliable key-value store for critical system configuration data.

Pigsty uses [**etcd**](https://etcd.io/) as a [**DCS**](https://patroni.readthedocs.io/en/latest/dcs_failsafe_mode.html) (Distributed Config Store). It is critical for PostgreSQL high availability and automatic failover.

The [`ETCD`](/docs/etcd) module depends on [`NODE`](/docs/node). The [`PGSQL`](/docs/pgsql) module requires [`ETCD`](/docs/etcd). Install [`NODE`](/docs/node) to manage nodes before you install [`ETCD`](/docs/etcd).

Deploy the [`ETCD`](/docs/etcd) cluster before any [`PGSQL`](/docs/pgsql) cluster. For PostgreSQL high availability, `patroni` and `vip-manager` depend on etcd. They use it for HA and to bind the L2 VIP to the primary.

```mermaid
flowchart LR
    subgraph PGSQL [PGSQL]
        patroni[Patroni]
        vip[VIP Manager]
    end

    subgraph ETCD [ETCD]
        etcd[DCS Service]
    end

    subgraph NODE [NODE]
        node[Software Repo]
    end

    PGSQL -->|depends| ETCD -->|depends| NODE

    style PGSQL fill:#3E668F,stroke:#2d4a66,color:#fff
    style ETCD fill:#5B9CD5,stroke:#4178a8,color:#fff
    style NODE fill:#FCDB72,stroke:#d4b85e,color:#333

    style patroni fill:#2d4a66,stroke:#1e3347,color:#fff
    style vip fill:#2d4a66,stroke:#1e3347,color:#fff
    style etcd fill:#4178a8,stroke:#2d5a7a,color:#fff
    style node fill:#d4b85e,stroke:#b89a4a,color:#333
```

One etcd cluster serves multiple PostgreSQL clusters in each Pigsty deployment.

Pigsty enables RBAC by default. Each PostgreSQL cluster uses separate credentials to isolate tenants. Administrators use the etcd root user, which has full permissions over all PostgreSQL clusters.
