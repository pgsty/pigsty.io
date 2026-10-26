---
title: Web Interface
linkTitle: Web UI
weight: 260
description: Open the Web UI, view monitoring dashboards, and configure domain access.
icon: fa-solid fa-desktop
module: [PIGSTY]
categories: [Tutorial]
---

The default [single-node installation](/docs/setup/install/) includes the [INFRA module](/docs/infra/).
This module installs an Nginx web server on the node.
Nginx supplies the Web UI and proxies requests to the monitoring services and other component interfaces.

## Access

Enter the deployment node IP address in your browser.
By default, Nginx uses port `80` for HTTP and port `443` for HTTPS.
Replace `10.10.10.10` in these examples with your node IP address.

|                Direct IP Access                |              Domain (HTTP)               |               Domain (HTTPS)               |                          Demo                          |
|:----------------------------------------------:|:----------------------------------------:|:------------------------------------------:|:------------------------------------------------------:|
| [**`http://10.10.10.10`**](http://10.10.10.10) | [**`http://i.pigsty`**](http://i.pigsty) | [**`https://i.pigsty`**](https://i.pigsty) | [**`https://demo.pigsty.io`**](https://demo.pigsty.io/zh) |
{.full-width}

[![Pigsty demonstration homepage](/img/pigsty/home.png)](https://demo.pigsty.io/zh)

## Monitoring

To open the Grafana dashboards, add `/ui` to the server address:

|                   Direct IP Access                   |                 Domain (HTTP)                  |                  Domain (HTTPS)                  |                             Demo                             |
|:----------------------------------------------------:|:----------------------------------------------:|:------------------------------------------------:|:------------------------------------------------------------:|
| [**`http://10.10.10.10/ui`**](http://10.10.10.10/ui) | [**`http://i.pigsty/ui`**](http://i.pigsty/ui) | [**`https://i.pigsty/ui`**](https://i.pigsty/ui) | [**`https://demo.pigsty.io/ui`**](https://demo.pigsty.io/ui) |
{.full-width}

If the service is accessible from the Internet or an office network, use a [domain name](/docs/infra/admin/domain/).
Enable [HTTPS](/docs/infra/admin/cert/) to encrypt the connection.

## Endpoints

Nginx uses these paths to proxy requests to the components.
Open each path through the server HTTP or HTTPS address.
The native port is the port of the component behind Nginx.

| Endpoint     | Component                                  | Native Port | Description                          | Public Demo                                                    |
|:-------------|:-------------------------------------------|:------------|:-------------------------------------|----------------------------------------------------------------|
| `/`          | [**Nginx**](/docs/infra/)                  | `80/443`    | Homepage, local repo, file service   | [`demo.pigsty.io`](https://demo.pigsty.io)                     |
| `/ui/`       | [**Grafana**](/docs/setup/pgsql/#grafana)                    | `3000`      | Grafana dashboard portal             | [`demo.pigsty.io/ui/`](https://demo.pigsty.io/ui/)             |
| `/vmetrics/` | [**VictoriaMetrics**](/docs/infra/)        | `8428`      | Time series database Web UI          | [`demo.pigsty.io/vmetrics/`](https://demo.pigsty.io/vmetrics/) |
| `/vlogs/`    | [**VictoriaLogs**](/docs/infra/)           | `9428`      | Log database Web UI                  | [`demo.pigsty.io/vlogs/`](https://demo.pigsty.io/vlogs/)       |
| `/vtraces/`  | [**VictoriaTraces**](/docs/infra/)         | `10428`     | Distributed tracing Web UI           | [`demo.pigsty.io/vtraces/`](https://demo.pigsty.io/vtraces/)   |
| `/vmalert/`  | [**VMAlert**](/docs/infra/)                | `8880`      | Alert rule management                | [`demo.pigsty.io/vmalert/`](https://demo.pigsty.io/vmalert/)   |
| `/alertmgr/` | [**AlertManager**](/docs/infra/)           | `9059`      | Alert management Web UI              | [`demo.pigsty.io/alertmgr/`](https://demo.pigsty.io/alertmgr/)   |
| `/blackbox/` | [**Blackbox**](/docs/infra/)               | `9115`      | Blackbox exporter                    |                                                                |
| `/haproxy/*` | [**HAProxy**](/docs/node/)                 | `9101`      | Load balancer admin Web UI           |                                                                |
| `/pev`       | [**PEV2**](https://github.com/dalibo/pev2) | `80`        | PostgreSQL execution plan visualizer | [`demo.pigsty.io/pev`](https://demo.pigsty.io/pev)             |
| `/nginx`     | [**Nginx**](/docs/infra/)                  | `80`        | Nginx status page (for metrics)      |                                                                |
{.full-width}

## Domain Access

Point your domain name to the Pigsty server IP address.
Set the domain in the [`home` server configuration](https://github.com/pgsty/pigsty/blob/main/conf/meta.yml).
This configuration is part of [`infra_portal`](/docs/infra/param#infra_portal):

```yaml
all:
  vars:
    infra_portal:
      home : { domain: i.pigsty } # Replace i.pigsty with your domain
```

To use a Let's Encrypt certificate, also set `certbot`:

```yaml
all:
  vars:
    infra_portal:  # domain specifies the domain name  # certbot parameter specifies certificate name
      home : { domain: demo.pigsty.io ,certbot: mycert }
```

After deployment, run `make cert` to request the free Let's Encrypt certificate.

If you omit `certbot`, Pigsty uses the local certificate authority (CA) to issue an HTTPS certificate.
Add the Pigsty CA to your browser trust store before you use that certificate.

You can also configure Nginx to serve local directories or proxy other upstream services.
See [Nginx Management](/docs/infra/admin/portal/) for the procedure.
