---
title: Web Interface
linkTitle: Web UI
weight: 260
description: Explore Pigsty's Web graphical management interface, Grafana dashboards, and how to access them via domain names and HTTPS.
icon: fa-solid fa-desktop
module: [PIGSTY]
categories: [Tutorial]
---


After [**single-node installation**](/docs/setup/install), you'll have the [**`INFRA`**](/docs/infra/) module installed on the current node, which includes an out-of-the-box Nginx web server.

The default server configuration provides a WebUI graphical interface for displaying monitoring dashboards and unified proxy access to other component web interfaces.


------

## Access

You can access this graphical interface by entering the deployment node's IP address in your browser. By default, Nginx serves on standard ports `80/443`.

|                Direct IP Access                |              Domain (HTTP)               |               Domain (HTTPS)               |                          Demo                          |
|:----------------------------------------------:|:----------------------------------------:|:------------------------------------------:|:------------------------------------------------------:|
| [**`http://10.10.10.10`**](http://10.10.10.10) | [**`http://i.pigsty`**](http://i.pigsty) | [**`https://i.pigsty`**](https://i.pigsty) | [**`https://demo.pigsty.io`**](https://demo.pigsty.io/zh) |
{.full-width}


[![](/img/pigsty/home.png)](https://demo.pigsty.io/zh)


------

## Monitoring

To access Pigsty's monitoring system dashboards (Grafana), visit the `/ui` endpoint on the server.

|                   Direct IP Access                   |                 Domain (HTTP)                  |                  Domain (HTTPS)                  |                             Demo                             |
|:----------------------------------------------------:|:----------------------------------------------:|:------------------------------------------------:|:------------------------------------------------------------:|
| [**`http://10.10.10.10/ui`**](http://10.10.10.10/ui) | [**`http://i.pigsty/ui`**](http://i.pigsty/ui) | [**`https://i.pigsty/ui`**](https://i.pigsty/ui) | [**`https://demo.pigsty.io/ui`**](https://demo.pigsty.io/ui) |
{.full-width}

If your service is exposed to Internet or office network, we recommend accessing via [**domain names**](/docs/infra/admin/domain/) and enabling [**HTTPS**](/docs/infra/admin/cert) encryption—only minimal configuration is needed.



---------

## Endpoints

By default, Nginx exposes the following endpoints via different paths on the default server at ports `80/443`:

| Endpoint     | Component                                  | Native Port | Description                          | Public Demo                                                    |
|:-------------|:-------------------------------------------|:------------|:-------------------------------------|----------------------------------------------------------------|
| `/`          | [**Nginx**](/docs/infra/)                  | `80/443`    | Homepage, local repo, file service   | [`demo.pigsty.io`](https://demo.pigsty.io)                     |
| `/ui/`       | [**Grafana**](#grafana)                    | `3000`      | Grafana dashboard portal             | [`demo.pigsty.io/ui/`](https://demo.pigsty.io/ui/)             |
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





----------------

## Domain Access

If you have your own domain name, you can point it to Pigsty server's IP address to access various services via domain.

If you want to enable HTTPS, you should modify the [**`home`**](https://github.com/pgsty/pigsty/blob/main/conf/meta.yml#L139) server configuration in the [**`infra_portal`**](/docs/infra/param#infra_portal) parameter:

```yaml
all:
  vars:
    infra_portal:
      home : { domain: i.pigsty } # Replace i.pigsty with your domain
```

```yaml
all:
  vars:
    infra_portal:  # domain specifies the domain name  # certbot parameter specifies certificate name
      home : { domain: demo.pigsty.io ,certbot: mycert }
```

You can run `make cert` command after deployment to apply for a free Let's Encrypt certificate for the domain.
If you don't define the `certbot` field, Pigsty will use the local CA to issue a self-signed HTTPS certificate by default.
In this case, you must first trust Pigsty's self-signed CA to access normally in your browser.

You can also mount local directories and other upstream services to Nginx. For more management details, refer to [**INFRA Management - Nginx**](/docs/infra/admin/portal).
