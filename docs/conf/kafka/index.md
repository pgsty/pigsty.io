# demo/kafka

> Four-node dynamic KRaft example with a plaintext single-node dev cluster and a three-node TLS/SCRAM HA baseline

---

LLMS index: [llms.txt](/llms.txt)

---

`demo/kafka` declares two Kafka 4.x dynamic KRaft clusters across four nodes: the plaintext single-node development cluster `kf-meta`, and the three-node TLS/SCRAM/ACL demonstration cluster `kf-test`.


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

`deploy.yml` only deploys the core path and does not run the KAFKA playbook automatically. Each `kafka.yml` run must select one complete Kafka cluster; the role rejects convergence against only part of a cluster.


--------

## Content

Source: [`pigsty/conf/demo/kafka.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/kafka.yml)

```yaml
---
#==============================================================#
# File      :   kafka.yml
# Desc      :   pigsty: 4 node kafka demo (dynamic KRaft)
# Ctime     :   2026-07-17
# Mtime     :   2026-07-17
# Docs      :   https://pigsty.io/docs/kafka
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# One pass installation with:
# ./deploy.yml
# ./kafka.yml -l kf-main
# ./kafka.yml -l kf-test
#==============================================================#
# 1.  kf-meta-1 @ 10.10.10.10:9092   single-node dev cluster (plaintext)
# 2.  kf-test-1 @ 10.10.10.11:9092 \
# 3.  kf-test-2 @ 10.10.10.12:9092 --- 3-node secure HA demo baseline (scram)
# 4.  kf-test-3 @ 10.10.10.13:9092 /   dynamic KRaft, TLS/SCRAM/ACL, RF=3/minISR=2
#==============================================================#
# kafka clients are cluster-aware and connect to every broker directly:
# bootstrap with e.g. 10.10.10.11:9092,10.10.10.12:9092,10.10.10.13:9092


all:
  children:

    # infra cluster for proxy, monitor, alert, etc..
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }

    # single-node kafka dev cluster: combined broker/controller, plaintext
    kf-meta:
      hosts:
        10.10.10.10: { kafka_seq: 1 }
      vars:
        kafka_cluster: kf-meta
        kafka_topics:
          - { name: quickstart.events ,partitions: 1 ,replication_factor: 1 ,config: { retention.ms: 86400000 } }

    # 3-node secure HA demo baseline: dynamic KRaft, TLS/SCRAM/ACL, RF=3/minISR=2
    kf-test:
      hosts:
        10.10.10.11: { kafka_seq: 1 }
        10.10.10.12: { kafka_seq: 2 }
        10.10.10.13: { kafka_seq: 3 }
      vars:
        kafka_cluster: kf-test
        kafka_security: scram
        kafka_heap_opts: '-Xms512M -Xmx512M' # 2GiB demo nodes cannot safely spare the 1GiB production default
        kafka_users:               # app principal with prefixed topic/group acls
          - name: test-app
            password: KafkaApp.Test
            acls:
              - { resource: topic   ,name: 'test.'       ,pattern: prefixed ,operations: [ Read, Write, Describe ] }
              - { resource: group   ,name: 'test.'       ,pattern: prefixed ,operations: [ Read ] }
              - { resource: cluster ,name: kafka-cluster ,operations: [ Describe, IdempotentWrite ] }
        kafka_topics:
          - name: test.events
            partitions: 3
            replication_factor: 3
            config: { min.insync.replicas: 2 ,cleanup.policy: delete ,retention.ms: 604800000 }

  vars:
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default|china|europe
    infra_portal:                     # infra services exposed via portal
      home : { domain: i.pigsty }     # default domain name

    # kafka & java packages are required in the local repo for the kafka module (if using local repo)
    repo_extra_packages: [ kafka-stack ,java-runtime ]

    #----------------------------------------------#
    # PASSWORD : https://pigsty.io/docs/setup/security/
    #----------------------------------------------#
    grafana_admin_password: pigsty
    grafana_view_password: DBUser.Viewer
...
```


--------

## Explanation

- `kf-meta` creates `quickstart.events` for single-node development and connectivity tests.
- `kf-test` creates the `test-app` SCRAM user, prefix ACLs, and the three-replica `test.events` topic.
- Online installation maps the platform packages `kafka-stack` and `java-runtime`; when using only a local repository, cache both complete package groups first.
- Addresses and passwords in the template are demonstration values. Replace them for your topology and security requirements before deployment.

See the [KAFKA module](/docs/kafka/) for operations, security, and scaling constraints.
