---
title: 'Module: Consul'
weight: 5120
description: Deploy Consul, the alternative to Etcd, with Pigsty.
icon: fas fa-c
module: [CONSUL]
categories: [Reference]
---

Consul is a distributed DCS + KV + DNS + service registry/discovery component.

In the old version (1.x) of Pigsty, Consul was used as the default high-availability DCS. Now this support has been removed, but it will be provided as a separate module in the future.

- https://github.com/Vonng/pigsty/tree/v1.5.1/roles/consul


--------

## Configuration

To deploy Consul, you need to add the IP addresses and hostnames of all nodes to the `consul` group.

At least one node should be designated as the consul server with `consul_role: server`, while other nodes default to `consul_role: node`.

```bash
consul:
  hosts:
    10.10.10.10: { nodename: meta , consul_role: server }
    10.10.10.11: { nodename: node-1 }
    10.10.10.12: { nodename: node-2 }
    10.10.10.13: { nodename: node-3 }
```

For production deployments, we recommend using an odd number of Consul Servers, preferably three.


--------

## Parameters

```yaml
#-----------------------------------------------------------------
# CONSUL
#-----------------------------------------------------------------
consul_role: node                 # consul role, node or server, node by default
consul_dc: pigsty                 # consul data center name, `pigsty` by default
consul_data: /data/consul         # consul data dir, `/data/consul`
consul_clean: true                # consul purge flag, if true, clean consul during init
consul_ui: false                  # enable consul ui, the default value for consul server is true
```
