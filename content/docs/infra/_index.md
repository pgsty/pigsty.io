---
title: "Module: INFRA"
weight: 3000
description: Optional standalone infrastructure that provides NTP, DNS, observability and other foundational services for PostgreSQL.
icon: fas fa-bank
categories: [Reference]
#sidebar_root_for: self
---

[Configuration](#configuration) | [Administration](#administration) | [Playbooks](#playbooks) | [Monitoring](#monitoring) | [Parameters](#parameters)


----------------

## Overview

Every Pigsty deployment includes a set of infrastructure components that provide services for managed nodes and database clusters:

|           Component           |   Port   |   Domain   | Description                                                            |
|:-----------------------------:|:--------:|:----------:|------------------------------------------------------------------------|
|        [Nginx](#nginx)        | `80/443` | `i.pigsty` | Web service portal, local repo, and unified entry point                |
|      [Grafana](#grafana)      |  `3000`  | `g.pigsty` | Visualization platform for monitoring dashboards and data apps         |
| [VictoriaMetrics](#victoria)  |  `8428`  | `p.pigsty` | Time-series database with VMUI, compatible with Prometheus API         |
|   [VictoriaLogs](#victoria)   |  `9428`  |     -      | Centralized log database, receives structured logs from Vector         |
|  [VictoriaTraces](#victoria)  | `10428`  |     -      | Tracing and event storage for slow SQL / request tracing               |
|     [VMAlert](#victoria)      |  `8880`  |     -      | Alert rule evaluator, triggers alerts based on VictoriaMetrics metrics |
|   [AlertManager](#victoria)   |  `9059`  | `a.pigsty` | Alert aggregation and dispatch, receives notifications from VMAlert    |
| [BlackboxExporter](#victoria) |  `9115`  |     -      | ICMP/TCP/HTTP blackbox probing                                         |
|      [DNSMASQ](#dnsmasq)      |   `53`   |     -      | DNS server for internal domain resolution                              |
|      [Chronyd](#chronyd)      |  `123`   |     -      | NTP time server                                                        |
|   [PostgreSQL](#postgresql)   |  `5432`  |     -      | CMDB and default database                                              |
|      [Ansible](#ansible)      |    -     |     -      | Runs playbooks, orchestrates all infrastructure                        |



In Pigsty, the [PGSQL](/docs/pgsql) module uses some services on [**INFRA nodes**](/docs/concept/arch/node#infra-node), specifically:

* Database cluster/host node domains depend on DNSMASQ on INFRA nodes for **resolution**.
* **Installing** software on database nodes uses the local yum/apt repo hosted by Nginx on INFRA nodes.
* Database cluster/node monitoring **metrics** are scraped and stored by VictoriaMetrics on INFRA nodes, accessible via VMUI / PromQL.
* Database and node runtime logs are collected by Vector and pushed to VictoriaLogs on INFRA, searchable in Grafana.
* VMAlert **evaluates** alert rules based on metrics in VictoriaMetrics and forwards events to Alertmanager.
* Users initiate **management** of database nodes from Infra/Admin nodes using Ansible or other tools:
  * Execute cluster creation, scaling, instance/cluster recycling
  * Create business users, databases, modify services, HBA changes;
  * Execute log collection, garbage cleanup, backup, inspections, etc.
* Database nodes sync time from the NTP server on INFRA/ADMIN nodes by default
* If no dedicated cluster exists, the HA component Patroni uses etcd on INFRA nodes as the HA DCS.
* If no dedicated cluster exists, the backup component pgbackrest uses MinIO on INFRA nodes as an optional centralized backup repository.


----------------

### Nginx

Nginx is the access entry point for all WebUI services in Pigsty, using port 80 on the admin node by default.

Many infrastructure components with WebUI are exposed through Nginx, such as Grafana, VictoriaMetrics (VMUI), AlertManager, and HAProxy traffic management pages. Additionally, static file resources like yum/apt repos are served through Nginx.

Nginx routes access requests to corresponding upstream components based on **domain names** according to [`infra_portal`](/docs/infra/param#infra_portal) configuration. If you use other domains or public domains, you can modify them here:

```yaml
infra_portal:  # domain names and upstream servers
  home         : { domain: i.pigsty }
  grafana      : { domain: g.pigsty ,endpoint: "${admin_ip}:3000" , websocket: true }
  prometheus   : { domain: p.pigsty ,endpoint: "${admin_ip}:8428" }   # VMUI
  alertmanager : { domain: a.pigsty ,endpoint: "${admin_ip}:9059" }
  blackbox     : { endpoint: "${admin_ip}:9115" }
  vmalert      : { endpoint: "${admin_ip}:8880" }
  #logs         : { domain: logs.pigsty ,endpoint: "${admin_ip}:9428" }
  #minio        : { domain: sss.pigsty  ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }
```

Pigsty strongly recommends using domain names to access Pigsty UI systems rather than direct IP+port access, for these reasons:
* Using domains makes it easy to enable HTTPS traffic encryption, consolidate access to Nginx, audit all requests, and conveniently integrate authentication mechanisms.
* Some components only listen on 127.0.0.1 by default, so they can only be accessed through Nginx proxy.
* Domain names are easier to remember and provide additional configuration flexibility.

If you don't have available internet domains or local DNS resolution, you can add local static resolution records in `/etc/hosts` (MacOS/Linux) or `C:\Windows\System32\drivers\etc\hosts` (Windows).

Nginx configuration parameters are at: [Configuration: INFRA - NGINX](/docs/infra/param#nginx)


----------------

### Local Software Repository

Pigsty creates a local software repository during installation to accelerate subsequent software installation.

This repository is served by Nginx, located by default at `/www/pigsty`, accessible via `http://i.pigsty/pigsty`.

Pigsty's offline package is the entire software repository directory (yum/apt) compressed. When Pigsty tries to build a local repo, if it finds the local repo directory `/www/pigsty` already exists with the `/www/pigsty/repo_complete` marker file, it considers the local repo already built and skips downloading software from upstream, eliminating internet dependency.

The repo definition file is at `/www/pigsty.repo`, accessible by default via `http://${admin_ip}/pigsty.repo`

```bash
curl -L http://i.pigsty/pigsty.repo -o /etc/yum.repos.d/pigsty.repo
```

You can also use the file local repo directly without Nginx:

```ini
[pigsty-local]
name=Pigsty local $releasever - $basearch
baseurl=file:///www/pigsty/
enabled=1
gpgcheck=0
```

Local repository configuration parameters are at: [Configuration: INFRA - REPO](/docs/infra/param#repo)


----------------

### Victoria Observability Suite

Pigsty v4.0 uses the VictoriaMetrics family to replace Prometheus/Loki, providing unified monitoring, logging, and tracing capabilities:

* **VictoriaMetrics** listens on port `8428` by default, accessible via `http://p.pigsty` or `https://i.pigsty/vmetrics/` for VMUI, compatible with Prometheus API.
* **VMAlert** evaluates alert rules in `/infra/rules/*.yml`, listens on port `8880`, and sends alert events to Alertmanager.
* **VictoriaLogs** listens on port `9428`, supports the `https://i.pigsty/vlogs/` query interface. All nodes run Vector by default, pushing structured system logs, PostgreSQL logs, etc. to VictoriaLogs.
* **VictoriaTraces** listens on port `10428` for slow SQL / Trace collection, Grafana accesses it as a Jaeger datasource.
* **Alertmanager** listens on port `9059`, accessible via `http://a.pigsty` or `https://i.pigsty/alertmgr/` for managing alert notifications. After configuring SMTP, Webhook, etc., it can push messages.
* **Blackbox Exporter** listens on port `9115` by default for Ping/TCP/HTTP probing, accessible via `https://i.pigsty/blackbox/`.

For more information, see: [Configuration: INFRA - VICTORIA](/docs/infra/param#victoria) and [Configuration: INFRA - PROMETHEUS](/docs/infra/param#prometheus).



----------------

### Grafana

Grafana is the core of Pigsty's WebUI, listening on port `3000` by default, accessible directly via `IP:3000` or domain `http://g.pigsty`.

Pigsty comes with preconfigured datasources for VictoriaMetrics / Logs / Traces (`vmetrics-*`, `vlogs-*`, `vtraces-*`), and numerous dashboards with URL-based navigation for quick problem location.

Grafana can also be used as a general low-code visualization platform, so Pigsty installs plugins like ECharts and victoriametrics-datasource by default for building monitoring dashboards or inspection reports.

Grafana configuration parameters are at: [Configuration: INFRA - GRAFANA](/docs/infra/param#grafana).



----------------

### Ansible

Pigsty installs Ansible on the meta node by default. Ansible is a popular operations tool with declarative configuration style and idempotent playbook design that greatly reduces system maintenance complexity.


----------------

### DNSMASQ

DNSMASQ provides DNS **resolution** services within the environment. Domain names from other modules are registered with the DNSMASQ service on INFRA nodes.

DNS records are placed by default in the `/etc/hosts.d/` directory on all INFRA nodes.

DNSMASQ configuration parameters are at: [Configuration: INFRA - DNS](/docs/infra/param#dns)




----------------

### Chronyd

NTP service synchronizes time across all nodes in the environment (optional)

NTP configuration parameters are at: [Configuration: NODES - NTP](/docs/node/param#node_time)






----------------

## Configuration

To install the INFRA module on a node, first add it to the `infra` group in the config inventory and assign an instance number [`infra_seq`](/docs/infra/param#infra_seq)

```yaml
# Configure single INFRA node
infra: { hosts: { 10.10.10.10: { infra_seq: 1 } }}

# Configure two INFRA nodes
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
    10.10.10.11: { infra_seq: 2 }
```

Then use the [`infra.yml`](#infrayml) playbook to initialize the INFRA module on the nodes.



----------------

## Administration

Here are some administration tasks related to the INFRA module:

----------------

### Install/Uninstall Infra Module

```bash
./infra.yml     # Install INFRA module on infra group
./infra-rm.yml  # Uninstall INFRA module from infra group
```

----------------

### Manage Local Software Repository

You can use the following playbook subtasks to manage the local yum repo on Infra nodes:

```bash
./infra.yml -t repo              # Create local repo from internet or offline package

./infra.yml -t repo_dir          # Create local repo directory
./infra.yml -t repo_check        # Check if local repo already exists
./infra.yml -t repo_prepare      # If exists, use existing local repo
./infra.yml -t repo_build        # If not exists, build local repo from upstream
./infra.yml     -t repo_upstream     # Handle upstream repo files in /etc/yum.repos.d
./infra.yml     -t repo_remove       # If repo_remove == true, delete existing repo files
./infra.yml     -t repo_add          # Add upstream repo files to /etc/yum.repos.d (or /etc/apt/sources.list.d)
./infra.yml     -t repo_url_pkg      # Download packages from internet defined by repo_url_packages
./infra.yml     -t repo_cache        # Create upstream repo metadata cache with yum makecache / apt update
./infra.yml     -t repo_boot_pkg     # Install bootstrap packages like createrepo_c, yum-utils... (or dpkg-)
./infra.yml     -t repo_pkg          # Download packages & dependencies from upstream repos
./infra.yml     -t repo_create       # Create local repo with createrepo_c & modifyrepo_c
./infra.yml     -t repo_use          # Add newly built repo to /etc/yum.repos.d | /etc/apt/sources.list.d
./infra.yml -t repo_nginx        # If no nginx serving, start nginx as web server
```

The most commonly used commands are:

```bash
./infra.yml     -t repo_upstream     # Add upstream repos defined in repo_upstream to INFRA nodes
./infra.yml     -t repo_pkg          # Download packages and dependencies from upstream repos
./infra.yml     -t repo_create       # Create/update local yum repo with createrepo_c & modifyrepo_c
```



----------------

### Manage Infrastructure Components

You can use the following playbook subtasks to manage various infrastructure components on Infra nodes:

```bash
./infra.yml -t infra           # Configure infrastructure
./infra.yml -t infra_env       # Configure environment variables on admin node: env_dir, env_pg, env_var
./infra.yml -t infra_pkg       # Install software packages required by INFRA: infra_pkg_yum, infra_pkg_pip
./infra.yml -t infra_user      # Setup infra OS user group
./infra.yml -t infra_cert      # Issue certificates for infra components
./infra.yml -t dns             # Configure DNSMasq: dns_config, dns_record, dns_launch
./infra.yml -t nginx           # Configure Nginx: nginx_config, nginx_cert, nginx_static, nginx_launch, nginx_exporter
./infra.yml -t victoria        # Configure VictoriaMetrics/Logs/Traces: vmetrics|vlogs|vtraces|vmalert
./infra.yml -t alertmanager    # Configure AlertManager: alertmanager_config, alertmanager_launch
./infra.yml -t blackbox        # Configure Blackbox Exporter: blackbox_launch
./infra.yml -t grafana         # Configure Grafana: grafana_clean, grafana_config, grafana_plugin, grafana_launch, grafana_provision
./infra.yml -t infra_register  # Register infra components to VictoriaMetrics / Grafana
```

Other commonly used tasks include:

```bash
./infra.yml -t nginx_index                        # Re-render Nginx homepage content
./infra.yml -t nginx_config,nginx_reload          # Re-render Nginx portal config, expose new upstream services
./infra.yml -t vmetrics_config,vmetrics_launch    # Regenerate VictoriaMetrics main config and restart service
./infra.yml -t vlogs_config,vlogs_launch          # Re-render VictoriaLogs config
./infra.yml -t vmetrics_clean                     # Clean VictoriaMetrics storage data directory
./infra.yml -t grafana_plugin                     # Download Grafana plugins from internet
```


----------------

## Playbooks

Pigsty provides three playbooks related to the INFRA module:

- [`infra.yml`](#infrayml): Initialize pigsty infrastructure on infra nodes
- [`infra-rm.yml`](#infra-rmyml): Remove infrastructure components from infra nodes
- [`deploy.yml`](#deployyml): Complete one-time Pigsty installation on all nodes

----------------

### `infra.yml`

The INFRA module playbook [`infra.yml`](https://github.com/pgsty/pigsty/blob/main/infra.yml) initializes pigsty infrastructure on [**INFRA nodes**](/docs/concept/arch/node#infra-node)

**Executing this playbook completes the following tasks**

* Configure meta node directories and environment variables
* Download and build a local software repository to accelerate subsequent installation. (If using offline package, skip download phase)
* Add the current meta node as a regular node under Pigsty management
* Deploy **infrastructure** components including VictoriaMetrics/Logs/Traces, VMAlert, Grafana, Alertmanager, Blackbox Exporter, etc.

**This playbook executes on [**INFRA nodes**](/docs/concept/arch/node#infra-node) by default**

* Pigsty uses the **current node executing this playbook** as Pigsty's [**INFRA node**](/docs/concept/arch/node#infra-node) and [**ADMIN node**](/docs/concept/arch/node#admin-node) by default.
* During [configuration](/docs/setup/install#configure), Pigsty marks the current node as Infra/Admin node and replaces the placeholder IP `10.10.10.10` in config templates with the **current node's primary IP address**.
* Besides initiating management and hosting infrastructure, this node is no different from a regular managed node.
* In single-node installation, ETCD is also installed on this node to provide DCS service

**Notes about this playbook**

* This is an idempotent playbook; repeated execution will wipe infrastructure components on meta nodes.
* To preserve historical monitoring data, first set `vmetrics_clean`, `vlogs_clean`, `vtraces_clean` to `false`.
* When offline repo `/www/pigsty/repo_complete` exists, this playbook skips downloading software from internet. Full execution takes about 5-8 minutes depending on machine configuration.
* Downloading directly from upstream internet sources without offline package may take 10-20 minutes depending on your network conditions.

[![asciicast](https://asciinema.org/a/566412.svg)](https://asciinema.org/a/566412)


----------------

### `infra-rm.yml`

The INFRA module playbook [`infra-rm.yml`](https://github.com/pgsty/pigsty/blob/main/infra-rm.yml) removes pigsty infrastructure from [**INFRA nodes**](/docs/concept/arch/node#infra-node)

Common subtasks include:

```bash
./infra-rm.yml               # Remove INFRA module
./infra-rm.yml -t service    # Stop infrastructure services on INFRA
./infra-rm.yml -t data       # Remove remaining data on INFRA
./infra-rm.yml -t package    # Uninstall software packages installed on INFRA
```


----------------

### `deploy.yml`

The INFRA module playbook [`deploy.yml`](https://github.com/pgsty/pigsty/blob/main/deploy.yml) performs a complete one-time Pigsty installation on **all nodes**

This playbook is described in more detail in [Playbook: One-Time Installation](/docs/setup/playbook#deployment-playbook).




----------------

## Monitoring


[Pigsty Home](https://demo.pigsty.io/d/pigsty): Pigsty monitoring system homepage

<details><summary>Pigsty Home Dashboard</summary>

[![pigsty.jpg](/img/dashboard/pigsty.jpg)](https://demo.pigsty.io/d/pigsty/)

</details>


[INFRA Overview](https://demo.pigsty.io/d/infra-overview): Pigsty infrastructure self-monitoring overview

<details><summary>INFRA Overview Dashboard</summary>

[![infra-overview.jpg](/img/dashboard/infra-overview.jpg)](https://demo.pigsty.io/d/infra-overview/)

</details>


[Nginx Instance](https://demo.pigsty.io/d/nginx-instance): Nginx metrics and logs

<details><summary>Nginx Overview Dashboard</summary>

[![nginx-overview.jpg](/img/dashboard/nginx-overview.jpg)](https://demo.pigsty.io/d/nginx-overview)

</details>


[Grafana Instance](https://demo.pigsty.io/d/grafana-instance): Grafana metrics and logs

<details><summary>Grafana Overview Dashboard</summary>

[![grafana-overview.jpg](/img/dashboard/grafana-overview.jpg)](https://demo.pigsty.io/d/grafana-overview)

</details>


[VictoriaMetrics Instance](https://demo.pigsty.io/d/vmetrics-instance): VictoriaMetrics scraping, querying, and storage metrics

[VMAlert Instance](https://demo.pigsty.io/d/vmalert-instance): Alert rule evaluation and queue status

[Alertmanager Instance](https://demo.pigsty.io/d/alertmanager-instance): Alert aggregation, notification pipelines, and Silences

[VictoriaLogs Instance](https://demo.pigsty.io/d/vlogs-instance): Log ingestion rate, query load, and index hits

[VictoriaTraces Instance](https://demo.pigsty.io/d/vtraces-instance): Trace/KV storage and Jaeger interface


[Logs Instance](https://demo.pigsty.io/d/logs-instance): Node log search based on Vector + VictoriaLogs

<details><summary>Logs Instance Dashboard</summary>

[![logs-instance.jpg](/img/dashboard/logs-instance.jpg)](https://demo.pigsty.io/d/logs-instance)

</details>


[CMDB Overview](https://demo.pigsty.io/d/cmdb-overview): CMDB visualization

<details><summary>CMDB Overview Dashboard</summary>

[![cmdb-overview.jpg](/img/dashboard/cmdb-overview.jpg)](https://demo.pigsty.io/d/cmdb-overview)

</details>


[ETCD Overview](https://demo.pigsty.io/d/etcd-overview): etcd metrics and logs

<details><summary>ETCD Overview Dashboard</summary>

[![etcd-overview.jpg](/img/dashboard/etcd-overview.jpg)](https://demo.pigsty.io/d/etcd-overview)

</details>




----------------

## Parameters

The [`INFRA`](/docs/infra/param#infra) module has the following 10 parameter groups.

- [`META`](/docs/infra/param#meta): Pigsty metadata
- [`CA`](/docs/infra/param#ca): Self-signed PKI/CA infrastructure
- [`INFRA_ID`](/docs/infra/param#infra_id): Infrastructure portal, Nginx domains
- [`REPO`](/docs/infra/param#repo): Local software repository
- [`INFRA_PACKAGE`](/docs/infra/param#infra_package): Infrastructure software packages
- [`NGINX`](/docs/infra/param#nginx): Nginx web server
- [`DNS`](/docs/infra/param#dns): DNSMASQ domain server
- [`VICTORIA`](/docs/infra/param#victoria): VictoriaMetrics / Logs / Traces suite
- [`PROMETHEUS`](/docs/infra/param#prometheus): Alertmanager and Blackbox Exporter
- [`GRAFANA`](/docs/infra/param#grafana): Grafana observability suite

<details><summary>Parameter Overview</summary>

For the latest default values, types, and hierarchy, please refer to the [Parameter Reference](/docs/infra/param/#parameter-overview) to stay consistent with the Pigsty version.

</details>

