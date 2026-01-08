---
title: Monitoring
weight: 3260
description: Monitor NODE in Pigsty with dashboards and alerting rules
icon: fa-solid fa-binoculars
categories: [Reference]
---

The NODE module in Pigsty provides 6 monitoring dashboards and comprehensive alerting rules.


----------------

## Dashboards

The NODE module provides 6 monitoring dashboards:

### NODE Overview

Displays an overall overview of all host nodes in the current environment.

[![node-overview.jpg](/img/dashboard/node-overview.jpg)](https://demo.pigsty.io/d/node-overview)


### NODE Cluster

Shows detailed monitoring data for a specific host cluster.

[![node-cluster.jpg](/img/dashboard/node-cluster.jpg)](https://demo.pigsty.io/d/node-cluster)


### Node Instance

Presents detailed monitoring information for a single host node.

[![node-instance.jpg](/img/dashboard/node-instance.jpg)](https://demo.pigsty.io/d/node-instance)


### NODE Alert

Centrally displays alert information for all hosts in the environment.

[![node-alert.jpg](/img/dashboard/node-alert.jpg)](https://demo.pigsty.io/d/node-alert)


### NODE VIP

Monitors detailed status of L2 virtual IPs.

[![node-vip.jpg](/img/dashboard/node-vip.jpg)](https://demo.pigsty.io/d/node-vip)


### Node Haproxy

Tracks the operational status of HAProxy load balancers.

[![node-haproxy.jpg](/img/dashboard/node-haproxy.jpg)](https://demo.pigsty.io/d/node-haproxy)


----------------

## Alert Rules

Pigsty implements the following alerting rules for NODE:

### Availability Alerts

| Rule             | Level | Description                         |
|------------------|:-----:|-------------------------------------|
| `NodeDown`       | CRIT  | Node is offline                     |
| `HaproxyDown`    | CRIT  | HAProxy service is offline          |
| `VectorDown`     | WARN  | Log collecting agent offline (Vector) |
| `DockerDown`     | WARN  | Container engine offline            |
| `KeepalivedDown` | WARN  | Keepalived daemon offline           |

### CPU Alerts

| Rule          | Level | Description              |
|---------------|:-----:|--------------------------|
| `NodeCpuHigh` | WARN  | CPU usage exceeds 70%    |

### Scheduling Alerts

| Rule           | Level | Description                         |
|----------------|:-----:|-------------------------------------|
| `NodeLoadHigh` | WARN  | Normalized load exceeds 100%        |

### Memory Alerts

| Rule             | Level | Description                    |
|------------------|:-----:|--------------------------------|
| `NodeOutOfMem`   | WARN  | Available memory less than 10% |
| `NodeMemSwapped` | WARN  | Swap usage exceeds 1%          |

### Filesystem Alerts

| Rule              | Level | Description                        |
|-------------------|:-----:|-----------------------------------|
| `NodeFsSpaceFull` | WARN  | Disk usage exceeds 90%            |
| `NodeFsFilesFull` | WARN  | Inode usage exceeds 90%           |
| `NodeFdFull`      | WARN  | File descriptor usage exceeds 90% |

### Disk Alerts

| Rule           | Level | Description                   |
|----------------|:-----:|-------------------------------|
| `NodeDiskSlow` | WARN  | Read/write latency exceeds 32ms |

### Network Protocol Alerts

| Rule                 | Level | Description                          |
|----------------------|:-----:|--------------------------------------|
| `NodeTcpErrHigh`     | WARN  | TCP error rate exceeds 1/min         |
| `NodeTcpRetransHigh` | WARN  | TCP retransmission rate exceeds 1%   |

### Time Synchronization Alerts

| Rule            | Level | Description                |
|-----------------|:-----:|----------------------------|
| `NodeTimeDrift` | WARN  | System time not synchronized |
