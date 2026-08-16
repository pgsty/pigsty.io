---
title: ha/octo
weight: 615
description: Compact eight-node HA simulation with three INFRA nodes, five etcd nodes, eight object-storage nodes, and two PostgreSQL clusters.
icon: fa-solid fa-server
categories: [Reference]
---

`ha/octo` uses the first eight nodes from [`vagrant/spec/deci.rb`](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/deci.rb) to build a compact high-availability simulation. It exercises co-located modules, VIPs, remote backup, and larger membership counts. Do not use it directly as a production blueprint without reviewing capacity, security, and failure domains.


--------

## Overview

- Config name: `ha/octo`
- Node addresses: `10.10.10.10` through `10.10.10.17`
- INFRA: 3 nodes; only the first builds and serves the local repository, while Docker can be installed separately on all three as noted in comments
- ETCD: 5 nodes on the last five hosts
- Object storage: one eight-node, single-drive cluster; the template does not override `minio_type`, so both deployment and removal roles default to Silo; verify that value, the exact target, and data paths before removal
- `pg-meta`: 3-node PostgreSQL cluster with VIP `10.10.10.2/24`
- `pg-test`: 5-node PostgreSQL cluster whose final instance has the `offline` role, with VIP `10.10.10.3/24`
- Backup: uses the object-storage repository through `sss.pigsty:9002` and also retains a local repository

```bash
./configure -c ha/octo
./deploy.yml
```

This template depends on fixed eight-node addresses and VIPs. For any other environment, update the host addresses, VIPs, interfaces, DNS, repository node, and every public example credential together.


--------

## Content

Source: [`pigsty/conf/ha/octo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/octo.yml)

{{< readfile file="yaml/ha/octo.yml" code="true" lang="yaml" >}}


--------

## Explanation

- The three INFRA nodes and five etcd nodes are separate sets. The `pg-meta` and `pg-test` PostgreSQL clusters are co-located with those two sets respectively.
- Object storage spans all eight nodes and exposes `sss.pigsty` through Keepalived VIP `10.10.10.9` and HAProxy port `9002`. Silo is the current default engine, while the module and variables retain `minio_*` compatibility names.
- `pg-meta` takes one full backup daily. `pg-test` takes a weekly full backup and incremental backups on the remaining days; both write to the encrypted S3 pgBackRest repository.
- The two INFRA replicas with `repo_enabled: false` do not build local repositories. Every node still installs packages from the first node's `local` repository.
- The database, Grafana, Patroni, HAProxy, Silo, and etcd passwords at the end of the template are suitable only for a disposable simulation and must all be rotated in real environments.

For a conventional minimal HA deployment, prefer [ha/trio](/docs/conf/trio/). For a larger full-scenario simulation, see [ha/simu](/docs/conf/simu/).
