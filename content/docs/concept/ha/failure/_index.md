---
title: Failure Model
weight: 30
description: Detailed analysis of worst-case, best-case, and average RTO calculation logic and results across three classic failure detection/recovery paths
icon: fa-solid fa-bomb
module: [PGSQL]
categories: [Concept]
---

Patroni failures can be classified into 10 categories by failure target, and further consolidated into five categories based on detection path, which are detailed in this section.

| #  | Failure Scenario              | Description                            | Final Path                           |
|----|-------------------------------|----------------------------------------|--------------------------------------|
| 1  | PG process crash              | crash, OOM killed                      | **Active Detection**                 |
| 2  | PG connection refused         | max_connections                        | **Active Detection**                 |
| 3  | PG zombie                     | Process alive but unresponsive         | **Active Detection** (timeout)       |
| 4  | Patroni process crash         | kill -9, OOM                           | **Passive Detection**                |
| 5  | Patroni zombie                | Process alive but stuck                | **Watchdog**                         |
| 6  | Node down                     | Power outage, hardware failure         | **Passive Detection**                |
| 7  | Node zombie                   | IO hang, CPU starvation                | **Watchdog**                         |
| 8  | Primary ↔ DCS network failure | Firewall, switch failure               | **Network Partition**                |
| 9  | Storage failure               | Disk failure, disk full, mount failure | **Active Detection** or **Watchdog** |
| 10 | Manual switchover             | Switchover/Failover                    | **Manual Trigger**                   |
{.full-width}

However, for RTO calculation purposes, all failures ultimately converge to two paths. This section explores the upper bound, lower bound, and average RTO for these two scenarios.

- [**Passive election triggered after Patroni loses contact**](/docs/concept/ha/failure/passive)
- [**Patroni actively detects failure and triggers switchover**](/docs/concept/ha/failure/active)

```mermaid
flowchart LR
    A([Primary Failure]) --> B{Patroni<br/>Detected?}

    B -->|PG Crash| C[Attempt Local Restart]
    B -->|Node Down| D[Wait TTL Expiration]

    C -->|Success| E([Local Recovery])
    C -->|Fail/Timeout| F[Release Leader Lock]

    D --> F
    F --> G[Replica Election]
    G --> H[Execute Promote]
    H --> I[HAProxy Detects]
    I --> J([Service Restored])

    style A fill:#dc3545,stroke:#b02a37,color:#fff
    style E fill:#198754,stroke:#146c43,color:#fff
    style J fill:#198754,stroke:#146c43,color:#fff
```
