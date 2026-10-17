# E-R Model of Infra Cluster

> Entity-Relationship model for INFRA infrastructure nodes in Pigsty, component composition, and naming conventions.

---

LLMS index: [llms.txt](/llms.txt)

---

The INFRA module is a management hub made of **infrastructure nodes**, rather than a traditional cluster. It provides core services for the deployment. Each node is an **autonomous** service unit that runs components such as Nginx, Grafana, and VictoriaMetrics. Together, these nodes provide observability and management for database clusters.

There are two core entities in Pigsty's INFRA module:

- **Node**: A server that runs infrastructure components. It can be a physical server, VM, container, or Pod.
- **Component**: An infrastructure service on a node, such as Nginx, Grafana, or VictoriaMetrics.

INFRA nodes usually also serve as administration nodes, which form the Pigsty control plane.


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

This example defines a two-node INFRA deployment:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
    10.10.10.11: { infra_seq: 2 }
```

The configuration defines these entities:

|      <span class="text-secondary">**Group**</span>         | <span class="text-secondary">**Description**</span> |
|:----------------------------------------------------------:|-----------------------------------------------------|
|                       **`infra`**                          | INFRA infrastructure node group                     |
|         <span class="text-danger">**Node**</span>          | <span class="text-danger">**Description**</span>    |
|                      **`infra-1`**                         | `10.10.10.10` INFRA node #1                         |
|                      **`infra-2`**                         | `10.10.10.11` INFRA node #2                         |
{.full-width}

For production, use at least two INFRA nodes for component redundancy.


----------------

## Identity Parameters

The [**`INFRA_ID`**](/docs/infra/param#infra_id) parameter group assigns deterministic identities to INFRA entities. One parameter is required:

| Parameter                                          |  Type  | Level | Description                      | Format                                  |
|:---------------------------------------------------|:------:|:-----:|:---------------------------------|:----------------------------------------|
| [**`infra_seq`**](/docs/infra/param#infra_seq)     | `int`  | Node  | INFRA node sequence, required    | Natural number, starting from 1, unique within group |
{.full-width}

Set the node sequence number at node level. Pigsty generates unique identifiers with these rules:

| Entity   | Generation Rule             | Example                 |
|----------|:----------------------------|:------------------------|
| **Node** | `infra-{{ infra_seq }}`     | `infra-1`, `infra-2`    |
{.full-width}

INFRA assigns `infra-N` identifiers to distinguish infrastructure nodes in monitoring. This does not change their hostname or system identity. Nodes retain their existing hostname or IP address for identification.


----------------

## Service Portal

INFRA nodes provide web access through Nginx. [**`infra_portal`**](/docs/infra/param#infra_portal) defines the services that Nginx exposes.

The default configuration only defines the home server:

```yaml
infra_portal:
  home : { domain: i.pigsty }
```

Pigsty configures reverse proxy endpoints for enabled components, including Grafana, VictoriaMetrics, and AlertManager. To access them through separate domains, add explicit configuration:

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

Use domain names to access Pigsty services where possible, instead of an IP address and port.


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

In a [**single-node deployment**](/docs/setup/install), INFRA shares a node with PGSQL, ETCD, and other modules. Small deployments usually use INFRA nodes as the [**administration node**](/docs/concept/arch/node#admin-node), backup administration node, and local software repository (`/www/pigsty`). Larger deployments can assign these responsibilities to dedicated nodes.


----------------

## Monitoring Label System

Pigsty collects metrics from INFRA components themselves. Unlike database modules, INFRA treats each **component** as a separate monitoring object. The `cls` (class) label distinguishes component types.

| Label | Description                           | Example         |
|:------|:--------------------------------------|:----------------|
| `cls` | Component type, each forming a "class" | `nginx`         |
| `ins` | Instance name, format `{component}-{infra_seq}` | `nginx-1` |
| `ip`  | INFRA node IP running the component   | `10.10.10.10`   |
| `job` | VictoriaMetrics scrape job, fixed as `infra` | `infra`    |
{.full-width}

A two-node INFRA deployment with `infra_seq: 1` and `infra_seq: 2` uses these component labels:

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

All INFRA component metrics have `job="infra"`. The `cls` label distinguishes components:

```text
nginx_up{cls="nginx", ins="nginx-1", ip="10.10.10.10", job="infra"}
grafana_info{cls="grafana", ins="grafana-1", ip="10.10.10.10", job="infra"}
vm_app_version{cls="vmetrics", ins="vmetrics-1", ip="10.10.10.10", job="infra"}
vlogs_rows_ingested_total{cls="vlogs", ins="vlogs-1", ip="10.10.10.10", job="infra"}
alertmanager_alerts{cls="alertmanager", ins="alertmanager-1", ip="10.10.10.10", job="infra"}
```
