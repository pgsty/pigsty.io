# demo/bare

> Minimal readable configuration declaring only INFRA, ETCD, and single-node PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

`demo/bare` is the smallest Pigsty configuration example.
It defines three core groups and three global parameters to show the basic inventory structure.


--------

## Overview

- Config Name: `demo/bare`
- Node Count: Single node
- Modules: INFRA, ETCD, PGSQL
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/)

```bash
./configure -c demo/bare [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/bare.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/bare.yml)

```yaml
---
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } }
  vars:
    version: v4.5.0
    admin_ip: 10.10.10.10
    region: default
...
```


--------

## Explanation

This template uses Pigsty defaults.
It defines no business users, databases, extensions, backup policy, or security hardening.
Use it to learn the configuration hierarchy or as a starting point for your own configuration.
Before use in a real environment, add passwords, HBA rules, backups, and the required safeguards.
