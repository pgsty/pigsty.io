---
title: demo/kafka
weight: 1046
description: Four-node dynamic KRaft example with a plaintext single-node dev cluster and a three-node TLS/SCRAM HA baseline
icon: fa-solid fa-stream
categories: [Reference]
---

The `demo/kafka` template defines two Kafka 4.x dynamic KRaft clusters on four nodes.
The development cluster `kf-meta` uses one node and plaintext connections.
The demonstration cluster `kf-test` uses three nodes with TLS, SCRAM, and ACLs.


--------

## Overview

- Config Name: `demo/kafka`
- Node Count: 4
- `kf-meta`: Single combined Broker/Controller node in plaintext mode
- `kf-test`: Three combined nodes with TLS/SCRAM/ACL, topic replication factor 3, and `min.insync.replicas=2`
- Module Status: KAFKA BETA

```bash
./configure -c demo/kafka -s
./deploy.yml
./kafka.yml -l kf-meta
./kafka.yml -l kf-test
```

The `deploy.yml` playbook deploys only the core modules.
It does not run the KAFKA playbook.
For each `kafka.yml` run, select one complete Kafka cluster.
The role rejects operations that select only part of a cluster.


--------

## Content

Source: [`pigsty/conf/demo/kafka.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/kafka.yml)

{{< include file="yaml/demo/kafka.yml" code=true lang="yaml" >}}


--------

## Explanation

- `kf-meta` creates `quickstart.events` for single-node development and connectivity tests.
- `kf-test` creates the `test-app` SCRAM user, prefix ACLs, and the three-replica `test.events` topic.
- Online installation maps the platform packages `kafka-stack` and `java-runtime`.
  For installation with only a local repository, cache both complete package groups first.
- Addresses and passwords in the template are demonstration values. Replace them for your topology and security requirements before deployment.

See the [KAFKA module](/docs/kafka/) for operations, security, and scaling constraints.
