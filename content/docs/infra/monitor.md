---
title: Monitoring
description: How to perform self-monitoring of infrastructure in Pigsty?
weight: 3050
icon: fa-solid fa-binoculars
categories: [Reference]
---


This document describes monitoring dashboards and alert rules for the INFRA module in Pigsty.


----------------

## Dashboards

Pigsty provides the following monitoring dashboards for the Infra module:

| Dashboard | Description |
|:-----|:-----|
| [Pigsty Home](https://demo.pigsty.io/d/pigsty) | Pigsty monitoring system homepage |
| [INFRA Overview](https://demo.pigsty.io/d/infra-overview) | Pigsty infrastructure self-monitoring overview |
| [Nginx Instance](https://demo.pigsty.io/d/nginx-instance) | Nginx metrics and logs |
| [Grafana Instance](https://demo.pigsty.io/d/grafana-instance) | Grafana metrics and logs |
| [VictoriaMetrics Instance](https://demo.pigsty.io/d/vmetrics-instance) | VictoriaMetrics scraping/query status |
| [VMAlert Instance](https://demo.pigsty.io/d/vmalert-instance) | Alert rule execution status |
| [Alertmanager Instance](https://demo.pigsty.io/d/alertmanager-instance) | Alert aggregation and notifications |
| [VictoriaLogs Instance](https://demo.pigsty.io/d/vlogs-instance) | Log ingestion, querying, and indexing |
| [Logs Instance](https://demo.pigsty.io/d/logs-instance) | View log information on a single node |
| [VictoriaTraces Instance](https://demo.pigsty.io/d/vtraces-instance) | Trace storage and querying |
| [Inventory CMDB](https://demo.pigsty.io/d/inventory-cmdb) | CMDB visualization |
| [ETCD Overview](https://demo.pigsty.io/d/etcd-overview) | etcd cluster monitoring |


----------------

## Alert Rules

Pigsty provides the following two alert rules for the INFRA module:

| Alert Rule | Description |
|:---------|:-----|
| `InfraDown` | Infrastructure component is down |
| `AgentDown` | Monitoring agent is down |

You can modify or add new infrastructure alert rules in [`files/victoria/rules/infra.yml`](https://github.com/pgsty/pigsty/blob/main/files/victoria/rules/infra.yml).


### Alert Rule Configuration

```yaml
################################################################
#                Infrastructure Alert Rules                    #
################################################################
- name: infra-alert
  rules:

    #==============================================================#
    #                       Infra Aliveness                        #
    #==============================================================#
    # infra components (victoria,grafana) down for 1m triggers a P1 alert
    - alert: InfraDown
      expr: infra_up < 1
      for: 1m
      labels: { level: 0, severity: CRIT, category: infra }
      annotations:
        summary: "CRIT InfraDown {{ $labels.type }}@{{ $labels.instance }}"
        description: |
          infra_up[type={{ $labels.type }}, instance={{ $labels.instance }}] = {{ $value  | printf "%.2f" }} < 1

    #==============================================================#
    #                       Agent Aliveness                        #
    #==============================================================#

    # agent aliveness are determined directly by exporter aliveness
    # including: node_exporter, pg_exporter, pgbouncer_exporter, haproxy_exporter
    - alert: AgentDown
      expr: agent_up < 1
      for: 1m
      labels: { level: 0, severity: CRIT, category: infra }
      annotations:
        summary: 'CRIT AgentDown {{ $labels.ins }}@{{ $labels.instance }}'
        description: |
          agent_up[ins={{ $labels.ins }}, instance={{ $labels.instance }}] = {{ $value  | printf "%.2f" }} < 1
```

