---
title: 'Module: Consul'
weight: 5080
description: Deploy Consul, the alternative to Etcd, with Pigsty.
icon: fas fa-c
module: [PILOT]
categories: [Reference]
---

Consul is a distributed DCS, KV, DNS, and service registry/discovery component.

Pigsty 1.x used Consul as its high-availability DCS. The current open-source tree has removed the Consul role, playbook, and `consul_*` parameters, so the legacy inventory shown on older versions cannot be used to deploy it. Current Pigsty DCS integration is provided by the [ETCD](/docs/etcd/) module.
