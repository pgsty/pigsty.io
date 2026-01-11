---
title: INFRA Node Model
weight: 1105
description: Entity-Relationship model for INFRA infrastructure nodes in Pigsty, component composition, and naming conventions.
icon: fa-solid fa-bank
module: [INFRA]
categories: [Concept]
---


The INFRA module plays a special role in Pigsty: it's not a traditional "cluster" but rather a management hub composed of a group of **infrastructure nodes**, providing core services for the entire Pigsty deployment.
Each INFRA node is an **autonomous** infrastructure service unit running core components like Nginx, Grafana, and VictoriaMetrics, collectively providing observability and management capabilities for managed database clusters.

There are two core entities in Pigsty's INFRA module:

- **Node**: A server running infrastructure components—can be bare metal, VM, container, or Pod.
- **Component**: Various infrastructure services running on nodes, such as Nginx, Grafana, VictoriaMetrics, etc.

INFRA nodes typically serve as Admin Nodes, the control plane of Pigsty.


----------------

## Component Composition

Each INFRA node runs the following core components:

| Component                                                          | Port       | Description                                       |
|:-------------------------------------------------------------------|:---------|:--------------------------------------------------|
| [**Nginx**](/docs/concept/arch/infra#nginx)                        | `80/443` | Web portal, local repo, unified reverse proxy     |
| [**Grafana**](/docs/concept/arch/infra#grafana)                    | `3000`   | Visualization platform, dashboards, data apps     |
| [**VictoriaMetrics**](/docs/concept/arch/infra#victoriametrics)    | `8428`   | Time-series database, Prometheus API compatible   |
| [**VictoriaLogs**](/docs/concept/arch/infra#victorialogs)          | `9428`   | Log database, receives structured logs from Vector |
| [**VictoriaTraces**](/docs/concept/arch/infra#victoriatraces)      | `10428`  | Trace storage for slow SQL / request tracing      |
| [**VMAlert**](/docs/concept/arch/infra#vmalert)                    | `8880`   | Alert rule evaluator based on VictoriaMetrics     |
| [**Alertmanager**](/docs/concept/arch/infra#alertmanager)          | `9059`   | Alert aggregation and dispatch                    |
| [**Blackbox Exporter**](/docs/concept/arch/infra#blackboxexporter) | `9115`   | ICMP/TCP/HTTP black-box probing                   |
| [**DNSMASQ**](/docs/concept/arch/infra#dnsmasq)                    | `53`     | DNS server for internal domain resolution         |
| [**Chronyd**](/docs/concept/arch/infra#chronyd)                    | `123`    | NTP time server                                   |
{.full-width}

These components together form Pigsty's observability infrastructure.


----------------

## Examples

Let's look at a concrete example with a two-node INFRA deployment:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
    10.10.10.11: { infra_seq: 2 }
```

The above config fragment defines a two-node INFRA deployment:

|      <span class="text-secondary">**Group**</span>         | <span class="text-secondary">**Description**</span> |
|:----------------------------------------------------------:|-----------------------------------------------------|
|                       **`infra`**                          | INFRA infrastructure node group                     |
|         <span class="text-danger">**Node**</span>          | <span class="text-danger">**Description**</span>    |
|                      **`infra-1`**                         | `10.10.10.10` INFRA node #1                         |
|                      **`infra-2`**                         | `10.10.10.11` INFRA node #2                         |
{.full-width}

For production environments, deploying at least two INFRA nodes is recommended for infrastructure component redundancy.


----------------

## Identity Parameters

Pigsty uses the [**`INFRA_ID`**](/docs/infra/param#infra_id) parameter group to assign deterministic identities to each INFRA module entity. One parameter is required:

| Parameter                                          |  Type  | Level | Description                      | Format                                  |
|:---------------------------------------------------|:------:|:-----:|:---------------------------------|:----------------------------------------|
| [**`infra_seq`**](/docs/infra/param#infra_seq)     | `int`  | Node  | INFRA node sequence, required    | Natural number, starting from 1, unique within group |
{.full-width}

With node sequence assigned at node level, Pigsty automatically generates unique identifiers for each entity based on rules:

| Entity   | Generation Rule             | Example                 |
|----------|:----------------------------|:------------------------|
| **Node** | `infra-{{ infra_seq }}`     | `infra-1`, `infra-2`    |
{.full-width}

The INFRA module assigns `infra-N` format identifiers to nodes for distinguishing multiple infrastructure nodes in the monitoring system.
However, this doesn't change the node's hostname or system identity; nodes still use their existing hostname or IP address for identification.


----------------

## Service Portal

INFRA nodes provide unified web service entry through Nginx. The [**`infra_portal`**](/docs/infra/param#infra_portal) parameter defines services exposed through Nginx.

The default configuration only defines the home server:

```yaml
infra_portal:
  home : { domain: i.pigsty }
```

Pigsty automatically configures reverse proxy endpoints for enabled components (Grafana, VictoriaMetrics, AlertManager, etc.). If you need to access these services via separate domains, you can explicitly add configurations:

```yaml
infra_portal:
  home         : { domain: i.pigsty }
  grafana      : { domain: g.pigsty, endpoint: "${admin_ip}:3000", websocket: true }
  prometheus   : { domain: p.pigsty, endpoint: "${admin_ip}:8428" }   # VMUI
  alertmanager : { domain: a.pigsty, endpoint: "${admin_ip}:9059" }
```

| Domain        | Service         | Description            |
|:--------------|:----------------|:-----------------------|
| `i.pigsty`    | Home            | Pigsty homepage        |
| `g.pigsty`    | Grafana         | Monitoring dashboard   |
| `p.pigsty`    | VictoriaMetrics | TSDB Web UI            |
| `a.pigsty`    | Alertmanager    | Alert management UI    |
{.full-width}

Accessing Pigsty services via domain names is recommended over direct IP + port.


----------------

## Deployment Scale

The number of INFRA nodes depends on deployment scale and HA requirements:

| Scale      | INFRA Nodes | Description                            |
|:-----------|:------------|:---------------------------------------|
| Dev/Test   | 1           | Single-node deployment, all on one node |
| Small Prod | 1-2         | Single or dual node, can share with other services |
| Medium Prod | 2-3        | Dedicated INFRA nodes, redundant components |
| Large Prod | 3+          | Multiple INFRA nodes, component separation |
{.full-width}

In [**singleton deployment**](/docs/setup/install), INFRA components share the same node with PGSQL, ETCD, etc.
In small-scale deployments, INFRA nodes typically also serve as "[**Admin Node**](/docs/concept/arch/node#admin-node)" / backup admin node and local software repository (`/www/pigsty`).
In larger deployments, these responsibilities can be separated to dedicated nodes.


----------------

## Monitoring Label System

Pigsty's monitoring system collects metrics from INFRA components themselves. Unlike database modules, each **component** in the INFRA module is treated as an independent monitoring object, distinguished by the `cls` (class) label.

| Label | Description                           | Example         |
|:------|:--------------------------------------|:----------------|
| `cls` | Component type, each forming a "class" | `nginx`         |
| `ins` | Instance name, format `{component}-{infra_seq}` | `nginx-1` |
| `ip`  | INFRA node IP running the component   | `10.10.10.10`   |
| `job` | VictoriaMetrics scrape job, fixed as `infra` | `infra`    |
{.full-width}

Using a two-node INFRA deployment (`infra_seq: 1` and `infra_seq: 2`) as example, component monitoring labels are:

| Component           | `cls`          | `ins` Example                             | Port    |
|:--------------------|:---------------|:------------------------------------------|:--------|
| **Nginx**           | `nginx`        | `nginx-1`, `nginx-2`                      | `9113`  |
| **Grafana**         | `grafana`      | `grafana-1`, `grafana-2`                  | `3000`  |
| **VictoriaMetrics** | `vmetrics`     | `vmetrics-1`, `vmetrics-2`                | `8428`  |
| **VictoriaLogs**    | `vlogs`        | `vlogs-1`, `vlogs-2`                      | `9428`  |
| **VictoriaTraces**  | `vtraces`      | `vtraces-1`, `vtraces-2`                  | `10428` |
| **VMAlert**         | `vmalert`      | `vmalert-1`, `vmalert-2`                  | `8880`  |
| **Alertmanager**    | `alertmanager` | `alertmanager-1`, `alertmanager-2`        | `9059`  |
| **Blackbox**        | `blackbox`     | `blackbox-1`, `blackbox-2`                | `9115`  |
{.full-width}

All INFRA component metrics use a unified `job="infra"` label, distinguished by the `cls` label:

```text
nginx_up{cls="nginx", ins="nginx-1", ip="10.10.10.10", job="infra"}
grafana_info{cls="grafana", ins="grafana-1", ip="10.10.10.10", job="infra"}
vm_app_version{cls="vmetrics", ins="vmetrics-1", ip="10.10.10.10", job="infra"}
vlogs_rows_ingested_total{cls="vlogs", ins="vlogs-1", ip="10.10.10.10", job="infra"}
alertmanager_alerts{cls="alertmanager", ins="alertmanager-1", ip="10.10.10.10", job="infra"}
```


