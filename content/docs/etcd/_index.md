---
title: "Module: ETCD"
weight: 3400
description: Pigsty deploys etcd as DCS for reliable distributed config storage, supporting PostgreSQL HA.
icon: fas fa-gears
module: [ETCD]
categories: [Reference]
---


ETCD is a distributed, reliable key-value store for critical system config data.

Pigsty uses [**etcd**](https://etcd.io/) as [**DCS**](https://patroni.readthedocs.io/en/latest/dcs_failsafe_mode.html) (Distributed Config Store), critical for PostgreSQL HA and automatic failover.

The [`ETCD`](/docs/etcd) module depends on [`NODE`](/docs/node) module and is required by [`PGSQL`](/docs/pgsql) module. Install [`NODE`](/docs/node) module to manage nodes before installing [`ETCD`](/docs/etcd).

Deploy [`ETCD`](/docs/etcd) cluster before any [`PGSQL`](/docs/pgsql) cluster—`patroni` and `vip-manager` for PG HA rely on etcd for HA and L2 VIP binding to primary.

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

One etcd cluster per Pigsty deployment serves multiple PG clusters.

Pigsty enables RBAC by default. Each PG cluster uses independent credentials for multi-tenant isolation. Admins use etcd root user with full permissions over all PG clusters.

