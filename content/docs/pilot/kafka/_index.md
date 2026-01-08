---
title: 'Module: Kafka'
weight: 5040
description: 'Deploy Kafka KRaft cluster with Pigsty: open-source distributed event
  streaming platform'
icon: fas fa-share-nodes
module: [KAFKA]
categories: [Reference]
---


> [Kafka](https://kafka.apache.org/) is an open-source distributed event streaming platform: [Installation](#installation) | [Configuration](#configuration) | [Administration](#administration) | [Playbook](#playbook) | [Monitoring](#monitoring) | [Parameters](#parameters) | [Resources](#resources)


--------

## Overview

Kafka module is currently available in Pigsty Pro as a Beta Preview.


--------

## Installation

If you are using the open-source version of Pigsty, you can install Kafka and its Java dependencies on the specified node using the following command.

Pigsty provides Kafka 3.8.0 RPM and DEB packages in the official Infra repository, which can be downloaded and installed directly.

```bash
./node.yml -t node_install  -e '{"node_repo_modules":"infra","node_packages":["kafka"]}'
```

Kafka requires a Java runtime environment, so you need to install an available JDK when installing Kafka (OpenJDK 17 is used by default, but other JDKs and versions, such as 8 and 11, can also be used).

```bash
# EL7 (no JDK 17 support)
./node.yml -t node_install  -e '{"node_repo_modules":"node","node_packages":["java-11-openjdk-headless"]}'

# EL8 / EL9 (use OpenJDK 17)
./node.yml -t node_install  -e '{"node_repo_modules":"node","node_packages":["java-17-openjdk-headless"]}'

# Debian / Ubuntu (use OpenJDK 17)
./node.yml -t node_install  -e '{"node_repo_modules":"node","node_packages":["openjdk-17-jdk"]}'
```


--------

## Configuration

Single node Kafka configuration example. Please note that in Pigsty single machine deployment mode, the 9093 port on the admin node is already occupied by AlertManager.

It is recommended to use other ports when installing Kafka on the admin node, such as (9095).

```yaml
kf-main:
  hosts:
    10.10.10.10: { kafka_seq: 1, kafka_role: controller }
  vars:
    kafka_cluster: kf-main
    kafka_data: /data/kafka
    kafka_peer_port: 9095     # 9093 is already hold by alertmanager
```

3-node Kraft mode Kafka cluster configuration example:

```yaml
kf-test:
  hosts:
    10.10.10.11: { kafka_seq: 1, kafka_role: controller   }
    10.10.10.12: { kafka_seq: 2, kafka_role: controller   }
    10.10.10.13: { kafka_seq: 3, kafka_role: controller   }
  vars:
    kafka_cluster: kf-test
```



---------

## Administration

Here are some basic Kafka cluster management operations:

Create Kafka clusters with `kafka.yml` playbook:

```bash
./kafka.yml -l kf-main
./kafka.yml -l kf-test
```

Create a topic named `test`:

```bash
kafka-topics.sh --create --topic test --partitions 1 --replication-factor 1 --bootstrap-server localhost:9092
```

Here the `--replication-factor 1` means each data will be replicated once, and `--partitions 1` means only one partition will be created.

Use the following command to view the list of Topics in Kafka:

```bash
kafka-topics.sh --bootstrap-server localhost:9092 --list
```

Use the built-in Kafka producer to send messages to the `test` Topic:

```bash
kafka-console-producer.sh --topic test --bootstrap-server localhost:9092
>haha
>xixi
>hoho
>hello
>world
> ^D
```

Use the built-in Kafka consumer to read messages from the `test` Topic:

```bash
kafka-console-consumer.sh --topic test --from-beginning --bootstrap-server localhost:9092
```




----------------

## Playbook

Pigsty provides 1 playbook related to the Kafka module for managing Kafka clusters.


----------------

### `kafka.yml`

The [`kafka.yml`](https://github.com/Vonng/pigsty/blob/main/kafka.yml) playbook for deploying Kafka KRaft mode cluster contains the following subtasks:

```bash
kafka-id       : generate kafka instance identity
kafka_clean    : remove existing kafka instance (DANGEROUS)
kafka_user     : create os user kafka
kafka_pkg      : install kafka rpm/deb packages
kafka_link     : create symlink to /usr/kafka
kafka_path     : add kafka bin path to /etc/profile.d
kafka_svc      : install kafka systemd service
kafka_dir      : create kafka data & conf dir
kafka_config   : generate kafka config file
kafka_boot     : bootstrap kafka cluster
kafka_launch   : launch kafka service
kafka_exporter : launch kafka exporter
kafka_register : register kafka service to prometheus
```






----------------

## Monitoring

Pigsty has provided two monitoring panels related to the [`KAFKA`](/docs/pilot/kafka/) module:

[KAFKA Overview](https://demo.pigsty.io/d/kafka-overview) shows the overall monitoring metrics of the Kafka cluster.

[KAFKA Instance](https://demo.pigsty.io/d/kafka-instance) shows the monitoring metrics details of a single Kafka instance.




--------

## Parameters

Available parameters for Kafka module:

```yaml
#kafka_cluster:           #CLUSTER  # kafka cluster name, required identity parameter
#kafka_role: controller   #INSTANCE # kafka role, controller, broker, or controller-only
#kafka_seq: 0             #INSTANCE # kafka instance seq number, required identity parameter
kafka_clean: false                  # cleanup kafka during init? false by default
kafka_data: /data/kafka             # kafka data directory, `/data/kafka` by default
kafka_version: 3.8.0                # kafka version string
scala_version: 2.13                 # kafka binary scala version
kafka_port: 9092                    # kafka broker listen port
kafka_peer_port: 9093               # kafka broker peer listen port, 9093 by default (conflict with alertmanager)
kafka_exporter_port: 9308           # kafka exporter listen port, 9308 by default
kafka_parameters:                   # kafka parameters to be added to server.properties
  num.network.threads: 3
  num.io.threads: 8
  socket.send.buffer.bytes: 102400
  socket.receive.buffer.bytes: 102400
  socket.request.max.bytes: 104857600
  num.partitions: 1
  num.recovery.threads.per.data.dir: 1
  offsets.topic.replication.factor: 1
  transaction.state.log.replication.factor: 1
  transaction.state.log.min.isr: 1
  log.retention.hours: 168
  log.segment.bytes: 1073741824
  log.retention.check.interval.ms: 300000
  #log.retention.bytes: 1073741824
  #log.flush.interval.ms: 1000
  #log.flush.interval.messages: 10000

```



--------

## Resources

Pigsty provides some Kafka-related extension plugins for PostgreSQL:

- [**`kafka_fdw`**](/docs/pgsql/ext/): A useful FDW that allows users to read and write Kafka Topic data directly from PostgreSQL
- [**`wal2json`**](/docs/pgsql/ext/): Used to logically decode WAL from PostgreSQL and generate JSON-formatted change data
- [**`wal2mongo`**](/docs/pgsql/ext/): Used to logically decode WAL from PostgreSQL and generate BSON-formatted change data
- [**`decoder_raw`**](/docs/pgsql/ext/): Used to logically decode WAL from PostgreSQL and generate SQL-formatted change data
- [**`test_decoding`**](/docs/pgsql/ext/): Used to logically decode WAL from PostgreSQL and generate RAW-formatted change data
