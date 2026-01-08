---
title: Infrastructure
weight: 202
description: Infrastructure module architecture, components, and functionality in Pigsty.
icon: fas fa-bank
module: [INFRA]
categories: [Concept]
---

Running production-grade, highly available PostgreSQL clusters typically requires a comprehensive set of infrastructure services (foundation) for support, such as monitoring and alerting, log collection, time synchronization, DNS resolution, and local software repositories.
Pigsty provides the [**INFRA module**](/docs/infra) to address this—it's an **optional module**, but we strongly recommend enabling it.

--------

## Overview

The diagram below shows the architecture of a [**single-node deployment**](/docs/setup/install). The right half represents the components included in the [**INFRA module**](/docs/infra):


| Component                                   | Type           | Description                                                                          |
|:--------------------------------------------|----------------|:-------------------------------------------------------------------------------------|
| [**Nginx**](#nginx)                         | Web Server     | Unified entry for [**WebUI**](/docs/setup/webui), [**local repo**](#repo), reverse proxy for internal services |
| [**Repo**](#repo)                           | Software Repo  | APT/DNF repository with all RPM/DEB packages needed for deployment                   |
| [**Grafana**](#grafana)                     | Visualization  | Displays metrics, logs, and traces; hosts dashboards, reports, and custom data apps |
| [**VictoriaMetrics**](#victoriametrics)     | Time Series DB | Scrapes all metrics, Prometheus API compatible, provides VMUI query interface        |
| [**VictoriaLogs**](#victorialogs)           | Log Platform   | Centralized log storage; all nodes run Vector by default, pushing logs here          |
| [**VictoriaTraces**](#victoriatraces)       | Tracing        | Collects slow SQL, service traces, and other tracing data                             |
| [**VMAlert**](#vmalert)                     | Alert Engine   | Evaluates alerting rules, pushes events to Alertmanager                               |
| [**AlertManager**](#alertmanager)           | Alert Manager  | Aggregates alerts, dispatches notifications via email, Webhook, etc.                  |
| [**BlackboxExporter**](#blackboxexporter)   | Blackbox Probe | Probes reachability of IPs/VIPs/URLs                                                  |
| [**DNSMASQ**](#dnsmasq)                     | DNS Service    | Provides DNS resolution for domains used within Pigsty [Optional]                     |
| [**Chronyd**](#chronyd)                     | Time Sync      | Provides NTP time synchronization to ensure consistent time across nodes [Optional]   |
| [**CA**](/docs/concept/sec/ca)              | Certificate    | Issues encryption certificates within the environment                                 |
| [**Ansible**](/docs/setup/playbook)         | Orchestration  | Batch, declarative, agentless tool for managing large numbers of servers              |



[![pigsty-arch](/img/pigsty/arch.png)](/docs/infra/)

----------------

## Nginx

**Nginx** is the access entry point for all WebUI services in Pigsty, using ports [**`80`**](/docs/infra/param#nginx_port) / [**`443`**](/docs/infra/param#nginx_ssl_port) for HTTP/HTTPS by default. [**Live Demo**](https://demo.pigsty.io/)


|           IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:---------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10`**](http://10.10.10.10) | [**`http://i.pigsty`**](http://i.pigsty) | [**`https://i.pigsty`**](https://i.pigsty) | [**`https://demo.pigsty.io`**](https://demo.pigsty.io) |
{.full-width}


Infrastructure components with WebUIs can be exposed uniformly through **Nginx**, such as **Grafana**, **VictoriaMetrics** (VMUI), **AlertManager**,
and **HAProxy** console. Additionally, the **local software repository** and other static resources are served via **Nginx**.

**Nginx** configures local web servers or reverse proxy servers based on definitions in [**`infra_portal`**](/docs/infra/param/#infra_portal).

```yaml
infra_portal:
  home : { domain: i.pigsty }
```

By default, it exposes Pigsty's admin homepage: `i.pigsty`. Different endpoints on this page proxy different components:

| Endpoint     | Component                                  | Native Port  | Notes                        | Public Demo                                                     |
|:-------------|:-------------------------------------------|:-------------|:-----------------------------|----------------------------------------------------------------|
| `/`          | [**Nginx**](/docs/infra/)                  | `80/443`     | Homepage, local repo, file server | [`demo.pigsty.io`](https://demo.pigsty.io)                     |
| `/ui/`       | [**Grafana**](#grafana)                    | `3000`       | Grafana dashboard entry      | [`demo.pigsty.io/ui/`](https://demo.pigsty.io/ui/)             |
| `/vmetrics/` | [**VictoriaMetrics**](/docs/infra/)        | `8428`       | Time series DB Web UI        | [`demo.pigsty.io/vmetrics/`](https://demo.pigsty.io/vmetrics/) |
| `/vlogs/`    | [**VictoriaLogs**](/docs/infra/)           | `9428`       | Log DB Web UI                | [`demo.pigsty.io/vlogs/`](https://demo.pigsty.io/vlogs/)       |
| `/vtraces/`  | [**VictoriaTraces**](/docs/infra/)         | `10428`      | Tracing Web UI               | [`demo.pigsty.io/vtraces/`](https://demo.pigsty.io/vtraces/)   |
| `/vmalert/`  | [**VMAlert**](/docs/infra/)                | `8880`       | Alert rule management        | [`demo.pigsty.io/vmalert/`](https://demo.pigsty.io/vmalert/)   |
| `/alertmgr/` | [**AlertManager**](/docs/infra/)           | `9059`       | Alert management Web UI      | [`demo.pigsty.io/alertmgr/`](https://demo.pigsty.io/alertmgr/) |
| `/blackbox/` | [**Blackbox**](/docs/infra/)               | `9115`       | Blackbox probe               |                                                                |
{.full-width}

[![](/img/pigsty/home.png)](https://demo.pigsty.io)

Pigsty allows rich customization of **Nginx** as a local file server or reverse proxy, with self-signed or real HTTPS certificates.

For more information, see: [**Tutorial: Nginx—Expose Web Services via Proxy**](/docs/infra/admin/portal/) and [**Tutorial: Certbot—Request and Renew HTTPS Certificates**](/docs/infra/admin/cert)




----------------

## Repo

Pigsty creates a **local software repository** on the Infra node during installation to accelerate subsequent software installations. [**Live Demo**](https://demo.pigsty.io/pigsty/)

This repository defaults to the [**`/www/pigsty`**](/docs/infra/param#repo_home) directory,
served by **Nginx** and mounted at the `/pigsty` path:

|           IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:---------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10/pigsty`**](http://10.10.10.10/pigsty) | [**`http://i.pigsty/pigsty`**](http://i.pigsty/pigsty) | [**`https://i.pigsty/pigsty`**](https://i.pigsty/pigsty) | [**`https://demo.pigsty.io/pigsty`**](https://demo.pigsty.io/pigsty) |
{.full-width}


Pigsty supports [**offline installation**](/docs/setup/offline), which essentially pre-copies a prepared local software repository to the target environment.
When Pigsty performs production deployment and needs to create a local software repository, if it finds the **`/www/pigsty/repo_complete`** marker file already exists locally, it skips downloading packages from upstream and uses existing packages directly, avoiding internet downloads.

For more information, see: [**Config: INFRA - REPO**](/docs/infra/param/#repo)



------

## Grafana

**Grafana** is the core component of Pigsty's monitoring system, used for visualizing metrics, logs, and various information. [**Live Demo**](https://demo.pigsty.io/ui/)

**Grafana** listens on port `3000` by default and is proxied via **Nginx** at the `/ui` path:

|          IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:--------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10/ui`**](http://10.10.10.10/ui) | [**`http://i.pigsty/ui`**](http://i.pigsty/ui) | [**`https://i.pigsty/ui`**](https://i.pigsty/ui) | [**`https://demo.pigsty.io/ui`**](https://demo.pigsty.io/ui)  |
{.full-width}

Pigsty provides pre-built dashboards based on **VictoriaMetrics** / **Logs** / **Traces**, with one-click drill-down and roll-up via URL jumps for rapid troubleshooting.

**Grafana** can also serve as a low-code visualization platform, so **ECharts**, victoriametrics-datasource, victorialogs-datasource plugins are installed by default,
with **Vector** / **Victoria** datasources registered uniformly as `vmetrics-*`, `vlogs-*`, `vtraces-*` for easy custom dashboard extension.

For more information, see: [**Config: INFRA - GRAFANA**](/docs/infra/param/#grafana).



----------------

## VictoriaMetrics

**VictoriaMetrics** is Pigsty's time series database, responsible for scraping and storing all monitoring metrics. [**Live Demo**](https://demo.pigsty.io/vmetrics/)

It listens on port `8428` by default, mounted at **Nginx** `/vmetrics` path, and also accessible via the `p.pigsty` domain:

|          IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:--------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10/vmetrics`**](http://10.10.10.10/vmetrics) | [**`http://p.pigsty`**](http://p.pigsty) | [**`https://i.pigsty/vmetrics`**](https://i.pigsty/vmetrics) | [**`https://demo.pigsty.io/vmetrics`**](https://demo.pigsty.io/vmetrics)  |
{.full-width}

**VictoriaMetrics** is fully compatible with the **Prometheus** API, supporting PromQL queries, remote read/write protocols, and the Alertmanager API.
The built-in **VMUI** provides an ad-hoc query interface for exploring metrics data directly, and also serves as a **Grafana** datasource.

For more information, see: [**Config: INFRA - VICTORIA**](/docs/infra/param/#victoria)


----------------

## VictoriaLogs

**VictoriaLogs** is Pigsty's log platform, centrally storing structured logs from all nodes. [**Live Demo**](https://demo.pigsty.io/vlogs/)

It listens on port `9428` by default, mounted at **Nginx** `/vlogs` path:

|          IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:--------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10/vlogs`**](http://10.10.10.10/vlogs) | [**`http://i.pigsty/vlogs`**](http://i.pigsty/vlogs) | [**`https://i.pigsty/vlogs`**](https://i.pigsty/vlogs) | [**`https://demo.pigsty.io/vlogs`**](https://demo.pigsty.io/vlogs)  |
{.full-width}

All managed nodes run **Vector** Agent by default, collecting system logs, PostgreSQL logs, Patroni logs, Pgbouncer logs, etc., processing them into structured format and pushing to **VictoriaLogs**.
The built-in Web UI supports log search and filtering, and can be integrated with **Grafana**'s victorialogs-datasource plugin for visual analysis.

For more information, see: [**Config: INFRA - VICTORIA**](/docs/infra/param/#victoria)


----------------

## VictoriaTraces

**VictoriaTraces** is used for collecting trace data and slow SQL records. [**Live Demo**](https://demo.pigsty.io/vtraces/)

It listens on port `10428` by default, mounted at **Nginx** `/vtraces` path:

|          IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:--------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10/vtraces`**](http://10.10.10.10/vtraces) | [**`http://i.pigsty/vtraces`**](http://i.pigsty/vtraces) | [**`https://i.pigsty/vtraces`**](https://i.pigsty/vtraces) | [**`https://demo.pigsty.io/vtraces`**](https://demo.pigsty.io/vtraces)  |
{.full-width}

**VictoriaTraces** provides a **Jaeger**-compatible interface for analyzing service call chains and database slow queries.
Combined with **Grafana** dashboards, it enables rapid identification of performance bottlenecks and root cause tracing.

For more information, see: [**Config: INFRA - VICTORIA**](/docs/infra/param/#victoria)


----------------

## VMAlert

**VMAlert** is the alerting rule computation engine, responsible for evaluating alert rules and pushing triggered events to **Alertmanager**. [**Live Demo**](https://demo.pigsty.io/vmalert/)

It listens on port `8880` by default, mounted at **Nginx** `/vmalert` path:

|          IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:--------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10/vmalert`**](http://10.10.10.10/vmalert) | [**`http://i.pigsty/vmalert`**](http://i.pigsty/vmalert) | [**`https://i.pigsty/vmalert`**](https://i.pigsty/vmalert) | [**`https://demo.pigsty.io/vmalert`**](https://demo.pigsty.io/vmalert)  |
{.full-width}

**VMAlert** reads metrics data from **VictoriaMetrics** and periodically evaluates alerting rules.
Pigsty provides pre-built alerting rules for PGSQL, NODE, REDIS, and other modules, covering common failure scenarios out of the box.

For more information, see: [**Config: INFRA - PROMETHEUS**](/docs/infra/param/#prometheus)


----------------

## AlertManager

**AlertManager** handles alert event aggregation, deduplication, grouping, and dispatch. [**Live Demo**](https://demo.pigsty.io/alertmgr/)

It listens on port `9059` by default, mounted at **Nginx** `/alertmgr` path, and also accessible via the `a.pigsty` domain:

|          IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)| Public Demo |
|:--------------------------------------:|:----------------------:|:-------------:|:-----------:|
| [**`http://10.10.10.10/alertmgr`**](http://10.10.10.10/alertmgr) | [**`http://a.pigsty`**](http://a.pigsty) | [**`https://i.pigsty/alertmgr`**](https://i.pigsty/alertmgr) | [**`https://demo.pigsty.io/alertmgr`**](https://demo.pigsty.io/alertmgr)  |
{.full-width}

**AlertManager** supports multiple notification channels: email, Webhook, Slack, PagerDuty, WeChat Work, etc.
Through alert routing rules, differentiated dispatch based on severity level and module type is possible, with support for silencing, inhibition, and other advanced features.

For more information, see: [**Config: INFRA - PROMETHEUS**](/docs/infra/param/#prometheus)


----------------

## BlackboxExporter

**Blackbox Exporter** is used for active probing of target reachability, enabling blackbox monitoring.

It listens on port `9115` by default, mounted at **Nginx** `/blackbox` path:

|          IP Access (replace)           |     Domain (HTTP)      | Domain (HTTPS)|
|:--------------------------------------:|:----------------------:|:-------------:|
| [**`http://10.10.10.10/blackbox`**](http://10.10.10.10/blackbox) | [**`http://i.pigsty/blackbox`**](http://i.pigsty/blackbox) | [**`https://i.pigsty/blackbox`**](https://i.pigsty/blackbox) |
{.full-width}

It supports multiple probe methods including ICMP Ping, TCP ports, and HTTP/HTTPS endpoints.
Useful for monitoring VIP reachability, service port availability, external dependency health, etc.—an important tool for assessing failure impact scope.

For more information, see: [**Config: INFRA - PROMETHEUS**](/docs/infra/param/#prometheus)


----------------

## Ansible

**Ansible** is Pigsty's core orchestration tool; all deployment, configuration, and management operations are performed through Ansible Playbooks.

Pigsty automatically installs **Ansible** on the admin node (Infra node) during installation.
It adopts a declarative configuration style and idempotent playbook design: the same playbook can be run repeatedly, and the system automatically converges to the desired state without side effects.

**Ansible**'s core advantages:
- **Agentless**: Executes remotely via SSH, no additional software needed on target nodes.
- **Declarative**: Describes the desired state rather than execution steps; configuration is documentation.
- **Idempotent**: Multiple executions produce consistent results; supports retry after partial failures.

For more information, see: [**Playbooks: Pigsty Playbook**](/docs/setup/playbook)


----------------

## DNSMASQ

**DNSMASQ** provides DNS resolution within the environment, resolving domain names used internally by Pigsty to their corresponding IP addresses.

Note that DNS is completely optional; Pigsty functions normally without DNS.

It listens on port `53` (UDP/TCP) by default, providing DNS resolution for all nodes in the environment:

| Protocol  | Port | Config Directory  |
|:----------|:-----|:------------------|
| UDP/TCP   | `53` | `/infra/hosts/`   |

Other modules automatically register their domain names with the **DNSMASQ** service on INFRA nodes during deployment.

Client nodes can configure INFRA nodes as their DNS servers, allowing access to services via domain names without remembering IP addresses.

For more information, see: [**Config: INFRA - DNS**](/docs/infra/param/#dns) and [**Tutorial: DNS—Configure Domain Resolution**](/docs/infra/admin/domain)


----------------

## Chronyd

**Chronyd** provides NTP time synchronization service, ensuring consistent clocks across all nodes in the environment.

It listens on port `123` (UDP) by default, serving as the time source within the environment:

| Protocol | Port  | Description          |
|:---------|:------|:---------------------|
| UDP      | `123` | NTP time sync service|

Time synchronization is critical for distributed systems: log analysis requires aligned timestamps, certificate validation depends on accurate clocks, and **PostgreSQL** streaming replication is sensitive to clock drift.
In isolated network environments, the INFRA node can serve as an internal NTP server with other nodes synchronizing to it.

For more information, see: [**Config: NODE - NTP**](/docs/node/param/#node_time)


----------------

## Node Relationships

Regular nodes reference an [**INFRA node**](#infra-node) via the [**`admin_ip`**](/docs/infra/param/#admin_ip) parameter as their infrastructure provider.

For example, when you configure global `admin_ip = 10.10.10.10`, typically all nodes will use infrastructure services at this IP.

Parameters that reference `${admin_ip}`:

| Parameter                                                                |            Module            | Default Value                       | Description              |
|:-------------------------------------------------------------------------|:----------------------------:|------------------------------------|--------------------------|
| [**`repo_endpoint`**](/docs/infra/param/#repo_endpoint)                  | [**`INFRA`**](/docs/infra)   | `http://${admin_ip}:80`            | Software repo URL        |
| [**`repo_upstream`**](/docs/infra/param/#repo_upstream)`.baseurl`        | [**`INFRA`**](/docs/infra)   | `http://${admin_ip}/pigsty`        | Local repo baseurl       |
| [**`infra_portal`**](/docs/infra/param/#infra_portal)`.endpoint`         | [**`INFRA`**](/docs/infra)   | `${admin_ip}:<port>`               | Nginx proxy backend      |
| [**`dns_records`**](/docs/infra/param/#dns_records)                      | [**`INFRA`**](/docs/infra)   | `["${admin_ip} i.pigsty", ...]`    | DNS records              |
| [**`node_default_etc_hosts`**](/docs/node/param/#node_default_etc_hosts) |  [**`NODE`**](/docs/node)    | `["${admin_ip} i.pigsty"]`         | Default static DNS       |
| [**`node_etc_hosts`**](/docs/node/param/#node_etc_hosts)                 |  [**`NODE`**](/docs/node)    | `[]`                               | Custom static DNS        |
| [**`node_dns_servers`**](/docs/node/param/#node_dns_servers)             |  [**`NODE`**](/docs/node)    | `["${admin_ip}"]`                  | Dynamic DNS servers      |
| [**`node_ntp_servers`**](/docs/node/param/#node_ntp_servers)             |  [**`NODE`**](/docs/node)    | `["${admin_ip}"]`                  | NTP servers (optional)   |
{.full-width}

This is a weak dependency relationship.

Typically the admin node and INFRA node coincide. With multiple INFRA nodes, the admin node is usually the first one; others serve as backups.

In large-scale production deployments, you might separate the Ansible admin node from nodes running the INFRA module for various reasons.
For example, use 1-2 small dedicated hosts belonging to the DBA team as the control hub (ADMIN nodes),
and 2-3 high-spec physical machines as monitoring infrastructure (INFRA nodes).

The table below shows typical node counts for different deployment scales:

| Deployment Scale | ADMIN | INFRA | ETCD | MINIO | PGSQL |
|:----------------:|:-----:|:-----:|:----:|:-----:|:-----:|
| Single-node dev  |   1   |   1   |  1   |   0   |   1   |
| Three-node       |   1   |   3   |  3   |   0   |   3   |
| Small production |   1   |   2   |  3   |   0   |   N   |
| Large production |   2   |   3   |  5   |  4+   |   N   |
{.full-width}
