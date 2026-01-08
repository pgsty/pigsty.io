---
title: Configuration
weight: 3020
description: How to configure INFRA nodes? Customize Nginx, local repo, DNS, NTP, monitoring components.
icon: fa-solid fa-code
categories: [Reference]
---


## Configuration Guide

INFRA = primarily **monitoring** infrastructure, **optional** for PostgreSQL databases.

Unless manually configured to depend on DNS/NTP services on INFRA nodes, INFRA module failures typically don't affect PG cluster operations.

Single INFRA node suffices for most scenarios. Prod env recommends 2-3 INFRA nodes for HA.

For better resource utilization, ETCD module (required by PG HA) can share nodes with INFRA module.

Using more than 3 INFRA nodes provides little additional benefit, but more ETCD nodes (e.g., 5) can improve DCS availability.


----------------

## Configuration Examples

Add node IPs to `infra` group in config inventory, assign INFRA instance number `infra_seq`.

Default single INFRA node config:

```yaml
all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } }}
```

By default, `10.10.10.10` placeholder replaced with current node's primary IP during config.

Use `infra.yml` playbook to init INFRA module on nodes.


### More Nodes

Two INFRA nodes config:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }
        10.10.10.11: { infra_seq: 2 }
```

Three INFRA nodes config (with params):

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }
        10.10.10.11: { infra_seq: 2, repo_enabled: false }
        10.10.10.12: { infra_seq: 3, repo_enabled: false }
      vars:
        grafana_clean: false
        vmetrics_clean: false
        vlogs_clean: false
        vtraces_clean: false
```


----------------

## INFRA High Availability

Most INFRA module components = "stateless/identical state". For HA, focus on "load balancing".

HA achievable via Keepalived L2 VIP or HAProxy L4 load balancing. L2 VIP recommended for L2-reachable networks.

Config example:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
    10.10.10.11: { infra_seq: 2 }
    10.10.10.12: { infra_seq: 3 }
  vars:
    vip_enabled: true
    vip_vrid: 128
    vip_address: 10.10.10.8
    vip_interface: eth1

    infra_portal:
      home         : { domain: i.pigsty }
      grafana      : { domain: g.pigsty ,endpoint: "10.10.10.8:3000" , websocket: true }
      prometheus   : { domain: p.pigsty ,endpoint: "10.10.10.8:8428" }
      alertmanager : { domain: a.pigsty ,endpoint: "10.10.10.8:9059" }
      blackbox     : { endpoint: "10.10.10.8:9115" }
      vmalert      : { endpoint: "10.10.10.8:8880" }
```

Set VIP-related params and modify service endpoints in `infra_portal`.


----------------

## Nginx Configuration

See [Nginx Parameter Config](/docs/infra/param/#nginx) and [Tutorial: Nginx](/docs/infra/admin/portal).


----------------

## Local Repo Configuration

See [Repo Parameter Config](/docs/infra/param/#repo).


----------------

## DNS Configuration

See [DNS Parameter Config](/docs/infra/param/#dns) and [Tutorial: DNS](/docs/infra/admin/domain).


----------------

## NTP Configuration

See [NTP Parameter Config](/docs/node/param/#node_time).
