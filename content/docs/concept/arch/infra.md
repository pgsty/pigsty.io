---
title: Infrastructure
weight: 202
description: Infrastructure module architecture, components, and functionality in Pigsty.
icon: fas fa-bank
module: [INFRA]
categories: [Concept]
---

Production HA PostgreSQL needs monitoring, alerts, logs, time synchronization, DNS, and software repositories. The [**INFRA module**](/docs/infra) provides these services. It is optional but strongly recommended.

--------

## Overview

The following [**single-node deployment**](/docs/setup/install) diagram shows [**INFRA**](/docs/infra) components on the right:


| Component                                 | Type            | Description                                                                                                    |
|:------------------------------------------|-----------------|:---------------------------------------------------------------------------------------------------------------|
| [**Nginx**](#nginx)                       | Web Server      | Unified entry for [**WebUI**](/docs/setup/webui), [**local repo**](#repo), reverse proxy for internal services |
| [**Repo**](#repo)                         | Software Repo   | APT/DNF repository with all RPM/DEB packages needed for deployment                                             |
| [**Grafana**](#grafana)                   | Visualization   | Displays metrics, logs, and traces; hosts dashboards, reports, and custom data apps                            |
| [**VictoriaMetrics**](#victoriametrics)   | Time Series DB  | Scrapes all metrics, Prometheus API compatible, provides VMUI query interface                                  |
| [**VictoriaLogs**](#victorialogs)         | Log Platform    | Centralized log storage; all nodes run Vector by default, pushing logs here                                    |
| [**VictoriaTraces**](#victoriatraces)     | Tracing         | Collects slow SQL, service traces, and other tracing data                                                      |
| [**VMAlert**](#vmalert)                   | Eval Rule/Alert | Evaluates alerting rules, pushes events to Alertmanager                                                        |
| [**AlertManager**](#alertmanager)         | Alert Manager   | Aggregates alerts, dispatches notifications via email, Webhook, etc.                                           |
| [**BlackboxExporter**](#blackboxexporter) | Blackbox Probe  | Probes reachability of IPs/VIPs/URLs                                                                           |
| [**DNSMASQ**](#dnsmasq)                   | DNS Service     | Provides DNS resolution for domains used within Pigsty [Optional]                                              |
| [**Chronyd**](#chronyd)                   | Time Sync       | Provides NTP time synchronization to ensure consistent time across nodes [Optional]                            |
| [**CA**](/docs/concept/sec/ca)            | Certificate     | Issues encryption certificates within the environment                                                          |
| [**Ansible**](/docs/setup/playbook)       | Orchestration   | Batch, declarative, agentless tool for managing large numbers of servers                                       |

[![pigsty-arch](/img/pigsty/arch.png)](/docs/infra/)

----------------

## Nginx

**Nginx** provides access to Pigsty WebUI services. HTTP and HTTPS use [**`80`**](/docs/infra/param#nginx_port) and [**`443`**](/docs/infra/param#nginx_ssl_port) by default. See the [**Live Demo**](https://demo.pigsty.io/).


|              IP Access (replace)               |              Domain (HTTP)               |               Domain (HTTPS)               |                      Public Demo                       |
|:----------------------------------------------:|:----------------------------------------:|:------------------------------------------:|:------------------------------------------------------:|
| [**`http://10.10.10.10`**](http://10.10.10.10) | [**`http://i.pigsty`**](http://i.pigsty) | [**`https://i.pigsty`**](https://i.pigsty) | [**`https://demo.pigsty.io`**](https://demo.pigsty.io) |
{.full-width}


**Nginx** exposes the **Grafana**, **VictoriaMetrics** (VMUI), **AlertManager**, and **HAProxy** web interfaces. It also serves the **local software repository** and other static files.

**Nginx** configures local web servers or reverse proxy servers based on definitions in [**`infra_portal`**](/docs/infra/param/#infra_portal).

```yaml
infra_portal:
  home : { domain: i.pigsty }
```

The default administration homepage is `i.pigsty`. Its endpoints proxy these components:

| Endpoint     | Component                           | Native Port | Notes                             | Public Demo                                                    |
|:-------------|:------------------------------------|:------------|:----------------------------------|----------------------------------------------------------------|
| `/`          | [**Nginx**](/docs/infra/)           | `80/443`    | Homepage, local repo, file server | [`demo.pigsty.io`](https://demo.pigsty.io)                     |
| `/ui/`       | [**Grafana**](#grafana)             | `3000`      | Grafana dashboard entry           | [`demo.pigsty.io/ui/`](https://demo.pigsty.io/ui/)             |
| `/vmetrics/` | [**VictoriaMetrics**](/docs/infra/) | `8428`      | Time series DB Web UI             | [`demo.pigsty.io/vmetrics/`](https://demo.pigsty.io/vmetrics/) |
| `/vlogs/`    | [**VictoriaLogs**](/docs/infra/)    | `9428`      | Log DB Web UI                     | [`demo.pigsty.io/vlogs/`](https://demo.pigsty.io/vlogs/)       |
| `/vtraces/`  | [**VictoriaTraces**](/docs/infra/)  | `10428`     | Tracing Web UI                    | [`demo.pigsty.io/vtraces/`](https://demo.pigsty.io/vtraces/)   |
| `/vmalert/`  | [**VMAlert**](/docs/infra/)         | `8880`      | Alert rule management             | [`demo.pigsty.io/vmalert/`](https://demo.pigsty.io/vmalert/)   |
| `/alertmgr/` | [**AlertManager**](/docs/infra/)    | `9059`      | Alert management Web UI           | [`demo.pigsty.io/alertmgr/`](https://demo.pigsty.io/alertmgr/) |
| `/blackbox/` | [**Blackbox**](/docs/infra/)        | `9115`      | Blackbox probe                    |                                                                |
{.full-width}

[![Pigsty online demo homepage](/img/pigsty/home.png)](https://demo.pigsty.io)

Configure **Nginx** as a file server or reverse proxy. HTTPS supports self-signed and publicly trusted certificates.

For more information, see: [**Tutorial: Nginx—Expose Web Services via Proxy**](/docs/infra/admin/portal/) and [**Tutorial: Certbot—Request and Renew HTTPS Certificates**](/docs/infra/admin/cert)




----------------

## Repo

During installation, Pigsty creates a **local software repository** on the infrastructure node to speed later installations. See the [**Live Demo**](https://demo.pigsty.io/pigsty/).

The default directory is [**`/www/pigsty`**](/docs/infra/param#repo_home). **Nginx** serves it at `/pigsty`:

|                     IP Access (replace)                      |                     Domain (HTTP)                      |                      Domain (HTTPS)                      |                             Public Demo                              |
|:------------------------------------------------------------:|:------------------------------------------------------:|:--------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`http://10.10.10.10/pigsty`**](http://10.10.10.10/pigsty) | [**`http://i.pigsty/pigsty`**](http://i.pigsty/pigsty) | [**`https://i.pigsty/pigsty`**](https://i.pigsty/pigsty) | [**`https://demo.pigsty.io/pigsty`**](https://demo.pigsty.io/pigsty) |
{.full-width}

For [**offline installation**](/docs/setup/offline), copy a prepared local software repository into the target environment. If **`/www/pigsty/repo_complete`** exists, deployment skips upstream downloads and uses that repository. [sow](https://sow.pgsty.com) generates this file as a completion marker and SHA-256 manifest. To force a rebuild, run `./infra.yml -t repo_build -e repo_build=true`.

[![repo](/img/pigsty/repo.webp)](https://demo.pigsty.io/pigsty/)

For more information, see: [**Config: INFRA - REPO**](/docs/infra/param/#repo)



------

## Grafana

**Grafana** visualizes Pigsty metrics, logs, and other monitoring data. See the [**Live Demo**](https://demo.pigsty.io/ui/).

**Grafana** listens on port `3000` by default and is proxied via **Nginx** at the `/ui` path:

|                 IP Access (replace)                  |                 Domain (HTTP)                  |                  Domain (HTTPS)                  |                         Public Demo                          |
|:----------------------------------------------------:|:----------------------------------------------:|:------------------------------------------------:|:------------------------------------------------------------:|
| [**`http://10.10.10.10/ui`**](http://10.10.10.10/ui) | [**`http://i.pigsty/ui`**](http://i.pigsty/ui) | [**`https://i.pigsty/ui`**](https://i.pigsty/ui) | [**`https://demo.pigsty.io/ui`**](https://demo.pigsty.io/ui) |
{.full-width}

Pigsty includes dashboards for **VictoriaMetrics**, **Logs**, and **Traces**. URL links let you move between summary and detail views for diagnosis.

**Grafana** also supports low-code visualization. Pigsty installs **ECharts**, victoriametrics-datasource, and victorialogs-datasource plugins by default. **Vector**/**Victoria** data sources use the names `vmetrics-*`, `vlogs-*`, and `vtraces-*` for custom dashboards.

![dashboard](/img/dashboard/pigsty.jpg)

For more information, see: [**Config: INFRA - GRAFANA**](/docs/infra/param/#grafana).



----------------

## VictoriaMetrics

**VictoriaMetrics** collects and stores Pigsty monitoring metrics as time-series data. See the [**Live Demo**](https://demo.pigsty.io/vmetrics/).

The default port is `8428`. Access it through **Nginx** at `/vmetrics` or the `p.pigsty` domain:

|                       IP Access (replace)                        |              Domain (HTTP)               |                        Domain (HTTPS)                        |                               Public Demo                                |
|:----------------------------------------------------------------:|:----------------------------------------:|:------------------------------------------------------------:|:------------------------------------------------------------------------:|
| [**`http://10.10.10.10/vmetrics`**](http://10.10.10.10/vmetrics) | [**`http://p.pigsty`**](http://p.pigsty) | [**`https://i.pigsty/vmetrics`**](https://i.pigsty/vmetrics) | [**`https://demo.pigsty.io/vmetrics`**](https://demo.pigsty.io/vmetrics) |
{.full-width}

**VictoriaMetrics** supports the **Prometheus** API, PromQL, remote read/write protocols, and the Alertmanager API. Its **VMUI** supports direct queries for metric exploration. It also supplies data to **Grafana**.

[![vmetrics](/img/pigsty/vmetrics.webp)](https://demo.pigsty.io/vmetrics/vmui)

For more information, see: [**Config: INFRA - VMETRICS**](/docs/infra/param/#vmetrics_enabled)


----------------

## VictoriaLogs

**VictoriaLogs** centrally stores structured logs from all Pigsty nodes. See the [**Live Demo**](https://demo.pigsty.io/vlogs/).

It listens on port `9428` by default, mounted at **Nginx** `/vlogs` path:

|                    IP Access (replace)                     |                    Domain (HTTP)                     |                     Domain (HTTPS)                     |                            Public Demo                             |
|:----------------------------------------------------------:|:----------------------------------------------------:|:------------------------------------------------------:|:------------------------------------------------------------------:|
| [**`http://10.10.10.10/vlogs`**](http://10.10.10.10/vlogs) | [**`http://i.pigsty/vlogs`**](http://i.pigsty/vlogs) | [**`https://i.pigsty/vlogs`**](https://i.pigsty/vlogs) | [**`https://demo.pigsty.io/vlogs`**](https://demo.pigsty.io/vlogs) |
{.full-width}

Managed nodes run **Vector** by default. It collects system, PostgreSQL, Patroni, Pgbouncer, and other logs, structures them, and sends them to **VictoriaLogs**. The built-in Web UI supports search and filtering. Use the **Grafana** victorialogs-datasource plugin for visual analysis.

[![vlogs](/img/pigsty/vmlogs.webp)](https://demo.pigsty.io/vlogs/select/vmui)

For more information, see: [**Config: INFRA - VLOGS**](/docs/infra/param/#vlogs_enabled)


----------------

## VictoriaTraces

**VictoriaTraces** is used for collecting trace data and slow SQL records. [**Live Demo**](https://demo.pigsty.io/vtraces/)

It listens on port `10428` by default, mounted at **Nginx** `/vtraces` path:

|                      IP Access (replace)                       |                      Domain (HTTP)                       |                       Domain (HTTPS)                       |                              Public Demo                               |
|:--------------------------------------------------------------:|:--------------------------------------------------------:|:----------------------------------------------------------:|:----------------------------------------------------------------------:|
| [**`http://10.10.10.10/vtraces`**](http://10.10.10.10/vtraces) | [**`http://i.pigsty/vtraces`**](http://i.pigsty/vtraces) | [**`https://i.pigsty/vtraces`**](https://i.pigsty/vtraces) | [**`https://demo.pigsty.io/vtraces`**](https://demo.pigsty.io/vtraces) |
{.full-width}

**VictoriaTraces** provides a **Jaeger**-compatible interface for service traces and slow SQL queries. Use it with **Grafana** to locate performance limits and trace their causes.

For more information, see: [**Config: INFRA - VTRACES**](/docs/infra/param/#vtraces_enabled)


----------------

## VMAlert

**VMAlert** evaluates alert rules and sends triggered events to **Alertmanager**. See the [**Live Demo**](https://demo.pigsty.io/vmalert/).

It listens on port `8880` by default, mounted at **Nginx** `/vmalert` path:

|                      IP Access (replace)                       |                      Domain (HTTP)                       |                       Domain (HTTPS)                       |                              Public Demo                               |
|:--------------------------------------------------------------:|:--------------------------------------------------------:|:----------------------------------------------------------:|:----------------------------------------------------------------------:|
| [**`http://10.10.10.10/vmalert`**](http://10.10.10.10/vmalert) | [**`http://i.pigsty/vmalert`**](http://i.pigsty/vmalert) | [**`https://i.pigsty/vmalert`**](https://i.pigsty/vmalert) | [**`https://demo.pigsty.io/vmalert`**](https://demo.pigsty.io/vmalert) |
{.full-width}

**VMAlert** periodically evaluates rules against **VictoriaMetrics** data. Pigsty includes rules for common failures in PGSQL, NODE, REDIS, and other modules.

[![vmalert](/img/pigsty/vmalert.webp)](https://demo.pigsty.io/vmalert/vmalert/groups)

For more information, see: [**Config: INFRA - VMALERT**](/docs/infra/param/#vmalert_enabled)


----------------

## AlertManager

**AlertManager** handles alert event aggregation, deduplication, grouping, and dispatch. [**Live Demo**](https://demo.pigsty.io/alertmgr/)

It listens on port `9059` by default, mounted at **Nginx** `/alertmgr` path, and also accessible via the `a.pigsty` domain:

|                       IP Access (replace)                        |              Domain (HTTP)               |                        Domain (HTTPS)                        |                               Public Demo                                |
|:----------------------------------------------------------------:|:----------------------------------------:|:------------------------------------------------------------:|:------------------------------------------------------------------------:|
| [**`http://10.10.10.10/alertmgr`**](http://10.10.10.10/alertmgr) | [**`http://a.pigsty`**](http://a.pigsty) | [**`https://i.pigsty/alertmgr`**](https://i.pigsty/alertmgr) | [**`https://demo.pigsty.io/alertmgr`**](https://demo.pigsty.io/alertmgr) |
{.full-width}

**AlertManager** supports email, Webhook, Slack, PagerDuty, WeChat Work, and other notification channels. Routing rules select destinations by severity and module. Silencing and inhibition are also supported.

[![alertmanager](/img/pigsty/alertmanager.webp)](https://demo.pigsty.io/alertmgr/)

For more information, see: [**Config: INFRA - AlertManager**](/docs/infra/param/#alertmanager_enabled)


--------

## BlackboxExporter

**Blackbox Exporter** probes targets to check reachability.

It listens on port `9115` by default, mounted at **Nginx** `/blackbox` path:

|                       IP Access (replace)                        |                       Domain (HTTP)                        |                        Domain (HTTPS)                        |                               Public Demo                                |
|:----------------------------------------------------------------:|:----------------------------------------------------------:|:------------------------------------------------------------:|:------------------------------------------------------------------------:|
| [**`http://10.10.10.10/blackbox`**](http://10.10.10.10/blackbox) | [**`http://i.pigsty/blackbox`**](http://i.pigsty/blackbox) | [**`https://i.pigsty/blackbox`**](https://i.pigsty/blackbox) | [**`https://demo.pigsty.io/blackbox`**](https://demo.pigsty.io/blackbox) |
{.full-width}

Probe methods include ICMP Ping, TCP ports, and HTTP/HTTPS endpoints. Check VIP reachability, service ports, and external dependencies to determine the scope of a failure.

[![blackbox](/img/pigsty/blackbox.webp)](https://demo.pigsty.io/blackbox/)

For more information, see: [**Config: INFRA - BLACKBOX**](/docs/infra/param/#blackbox_exporter)


--------

## Ansible

**Ansible** runs Pigsty deployment, configuration, and management playbooks.

Installation adds **Ansible** to the administration/infrastructure node. Declarative configuration specifies the target state. Idempotent playbooks can run repeatedly to reach that state without additional side effects.

**Ansible** provides:
- **Agentless execution**: Connect through SSH without installing an agent on managed nodes.
- **Declarative configuration**: Describe the target state; configuration also documents it.
- **Idempotent operations**: Repeated runs produce consistent results and can retry partial failures.

For more information, see: [**Playbooks: Pigsty Playbook**](/docs/setup/playbook)


--------

## DNSMASQ

**DNSMASQ** provides DNS resolution on [**INFRA nodes**](/docs/concept/arch/node#infra-node), resolving domain names to their corresponding IP addresses.

DNSMASQ listens on port `53` (UDP/TCP) by default, providing DNS resolution for all nodes. Records are stored in the `/etc/dnsmasq.d/pigsty` directory.

Other modules register domain names with **DNSMASQ** during deployment. Client nodes can use infrastructure nodes as DNS servers and access services by name. DNS is optional; **Pigsty also works without it**.

- [**`dns_records`**](/docs/infra/param/#dns_records): Default DNS records written to INFRA nodes
- [**`node_dns_servers`**](/docs/node/param/#node_dns_servers): Configure DNS servers for nodes, defaults to INFRA node via [**`admin_ip`**](/docs/infra/param/#admin_ip) (can also be [**disabled**](/docs/node/param#node_dns_method))

For more information, see: [**Config: INFRA - DNS**](/docs/infra/param/#dns) and [**Tutorial: DNS—Configure Domain Resolution**](/docs/infra/admin/domain)


--------

## Chronyd

**Chronyd** synchronizes node clocks through NTP. Its time-source service uses UDP port `123` by default.

Distributed systems need synchronized clocks. Logs need comparable timestamps, certificate checks need accurate time, and **PostgreSQL** streaming replication is sensitive to clock drift. In isolated networks, other nodes can synchronize to an infrastructure node acting as their NTP server.

All nodes run chronyd by default, using public [**`pool.ntp.org`**](/docs/node/param#node_ntp_servers) servers. The [**Node module**](/docs/node) manages chronyd. In isolated networks, use [**`admin_ip`**](/docs/infra/param/#admin_ip) to select the [**INFRA node**](/docs/concept/arch/node#infra-node) as the internal time source.

For more information, see: [**Config: NODE - TIME**](/docs/node/param/#node_time)


--------

## INFRA Node vs Regular Node

In Pigsty, the relationship between nodes and infrastructure is a **weak circular dependency**: node_monitor → infra → node

[**NODE**](/docs/node) does not itself require [**INFRA**](/docs/infra). Its node_monitor functions require the infrastructure monitoring platform and services.

[**`infra.yml`**](/docs/infra/playbook#infrayml) and [**`deploy`**](/docs/setup/playbook) resolve this dependency through these steps:

- Initialize [**NODE**](/docs/node) on [**regular nodes**](/docs/concept/arch/node#regular-node). Skip monitoring because the infrastructure is not ready.
- Initialize [**INFRA**](/docs/infra) on the [**INFRA node**](/docs/concept/arch/node#infra-node) to provide monitoring.
- Configure monitoring on [**regular nodes**](/docs/concept/arch/node#regular-node) to connect to that platform.

Alternatively, use [**phased deployment**](/docs/setup/config#adding-infrastructure): initialize infrastructure nodes before regular nodes.

### How Are Nodes Coupled to Infrastructure?

Regular nodes use [**`admin_ip`**](/docs/infra/param/#admin_ip) to select an [**INFRA node**](#infra-node) for infrastructure services.

For example, global `admin_ip = 10.10.10.10` normally directs all nodes to infrastructure at that address.

Change this address to switch infrastructure providers for many nodes. These parameters **may** reference `${admin_ip}`:

| Parameter                                                                |           Module           | Default Value                   | Description            |
|:-------------------------------------------------------------------------|:--------------------------:|---------------------------------|------------------------|
| [**`repo_endpoint`**](/docs/infra/param/#repo_endpoint)                  | [**`INFRA`**](/docs/infra) | `http://${admin_ip}:80`         | Software repo URL      |
| [**`repo_upstream`**](/docs/infra/param/#repo_upstream)`.baseurl`        | [**`INFRA`**](/docs/infra) | `http://${admin_ip}/pigsty`     | Local repo baseurl     |
| [**`infra_portal`**](/docs/infra/param/#infra_portal)`.endpoint`         | [**`INFRA`**](/docs/infra) | `${admin_ip}:<port>`            | Nginx proxy backend    |
| [**`dns_records`**](/docs/infra/param/#dns_records)                      | [**`INFRA`**](/docs/infra) | `["${admin_ip} i.pigsty", ...]` | DNS records            |
| [**`node_default_etc_hosts`**](/docs/node/param/#node_default_etc_hosts) |  [**`NODE`**](/docs/node)  | `["${admin_ip} i.pigsty"]`      | Default static DNS     |
| [**`node_etc_hosts`**](/docs/node/param/#node_etc_hosts)                 |  [**`NODE`**](/docs/node)  | `[]`                            | Custom static DNS      |
| [**`node_dns_servers`**](/docs/node/param/#node_dns_servers)             |  [**`NODE`**](/docs/node)  | `["${admin_ip}"]`               | Dynamic DNS servers    |
| [**`node_ntp_servers`**](/docs/node/param/#node_ntp_servers)             |  [**`NODE`**](/docs/node)  | `["pool pool.ntp.org iburst"]`  | NTP servers (optional) |
{.full-width}

For example, `local` uses the Nginx software repository at `admin_ip:80/pigsty`. DNS uses [**DNSMASQ**](#dnsmasq) at `admin_ip:53`. Both choices are optional. Nodes can install from Internet repositories, as most single-node templates do. They can also leave DNS unconfigured because Pigsty does not require it.


--------

## INFRA Node vs ADMIN Node

The [**ADMIN node**](/docs/concept/arch/node#admin-node) usually also serves as the [**INFRA node**](/docs/concept/arch/node#infra-node), including in [**single-node deployments**](/docs/setup/install). With multiple infrastructure nodes, the first `infra` member usually administers the environment and others provide backups. You can also separate the roles.

For example, [**large production deployments**](/docs/deploy) can use 1–2 small DBA-managed VMs for administration. Use 2–3 high-capacity physical servers, or more, for monitoring infrastructure. Set [**admin_ip**](/docs/infra/param/#admin_ip) to an infrastructure node address. The parameter retains its historical name from when administration and infrastructure roles were combined.

For [**local management of cloud nodes**](/docs/setup), install Ansible on your laptop and select cloud servers as managed targets. The laptop is the administration node. Cloud servers provide infrastructure.

```yaml
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 , ansible_host: your_ssh_alias } } }  # <--- Use ansible_host to point to cloud node (fill in ssh alias)
    etcd:    { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }    # SSH connection will use: ssh your_ssh_alias
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } }
  vars:
    version: v4.5.0
    admin_ip: 10.10.10.10
    region: default
```


--------

## Multiple INFRA Nodes

One infrastructure node usually meets the requirements. Failure of its INFRA module does not interrupt database services on other nodes.

For higher monitoring and alerting availability, use multiple infrastructure nodes. Two nodes can provide redundancy and monitor each other. A distributed Victoria cluster can use more nodes for horizontal scaling without a fixed limit.

Each infrastructure node operates **independently**. Nginx uses local services, and VictoriaMetrics collects metrics from every environment service. Nodes send logs to all VictoriaLogs endpoints by default. Grafana is the exception: each instance registers every VictoriaMetrics, Logs, Traces, and PostgreSQL instance as a data source. Thus, each Grafana can access all monitoring data.

Dashboard and data-source changes affect only the Grafana instance you edit. For shared configuration, use a PostgreSQL database as Grafana storage. See [**Configure Grafana High Availability**](/docs/infra/admin/grafana).

[![INFRA overview dashboard](/img/dashboard/infra-overview.webp)](https://demo.pigsty.io/ui/d/infra-overview)
