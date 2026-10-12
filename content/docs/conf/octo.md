---
title: ha/octo
weight: 615
description: Compact eight-node HA simulation with three INFRA nodes, five etcd nodes, eight object-storage nodes, and two PostgreSQL clusters.
icon: fa-solid fa-server
categories: [Reference]
---

`ha/octo` builds a compact high-availability simulation with the first eight nodes from [`vagrant/spec/deci.rb`](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/deci.rb). It exercises co-located modules, VIPs, remote backup, and larger membership counts. Do not use it directly as a production blueprint without reviewing capacity, security, and failure domains.


--------

## Overview

- Config name: `ha/octo`
- Node addresses: `10.10.10.10` through `10.10.10.17`
- INFRA: 3 nodes. Only the first builds and serves the local repository. As the comments describe, Docker can be installed separately on all three nodes.
- ETCD: 5 nodes on the last five hosts
- Object storage: one eight-node, single-drive cluster. The template does not override `minio_type`. Thus, deployment and removal both default to Silo. Before removal, verify this value, the exact target, and the data paths.
- `pg-meta`: 3-node PostgreSQL cluster with VIP `10.10.10.2/24`
- `pg-test`: 5-node PostgreSQL cluster whose final instance has the `offline` role, with VIP `10.10.10.3/24`
- Backup: uses the object-storage repository through `sss.pigsty:9002` and also retains a local repository

```bash
./configure -c ha/octo
./deploy.yml
```

This template depends on fixed eight-node addresses and VIPs. For another environment, update the host addresses, VIPs, interfaces, DNS, and repository node together. Also change every public example credential.


--------

## Content

Source: [`pigsty/conf/ha/octo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/octo.yml)

{{< include file="yaml/ha/octo.yml" code=true lang="yaml" >}}


--------

## Explanation

- The three INFRA nodes and five etcd nodes are separate sets. The `pg-meta` and `pg-test` PostgreSQL clusters are co-located with those two sets respectively.
- Object storage spans all eight nodes. It exposes `sss.pigsty` through Keepalived VIP `10.10.10.9` and HAProxy port `9002`. Silo is the current default engine. The module and variables retain `minio_*` names for compatibility.
- `pg-meta` takes one full backup daily. `pg-test` takes a weekly full backup and incremental backups on the remaining days. Both clusters write to the encrypted S3 pgBackRest repository.
- The two INFRA replicas with `repo_enabled: false` do not build local repositories. Every node still installs packages from the first node's `local` repository.
- The final section of the template contains database, Grafana, Patroni, HAProxy, Silo, and etcd passwords. These passwords are suitable only for a disposable simulation. You must rotate all these passwords in real environments.

For a conventional minimal HA deployment, prefer [ha/trio](/docs/conf/trio/). For a larger full-scenario simulation, see [ha/simu](/docs/conf/simu/).
