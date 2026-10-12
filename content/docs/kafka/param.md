---
title: Parameters
weight: 4903
description: 15 persistent public parameters and transient protected operational variables of the KAFKA module.
icon: fa-solid fa-sliders
module: [KAFKA]
categories: [Reference]
aliases: [/docs/pilot/kafka/param]
---


KAFKA exposes 15 persistent parameters. The role derives topology, listeners, security, storage subdirectories, replication safety, and exporter placement consistently. Additional persistent variables cannot override these derived settings.


--------

## Parameter Overview

| Parameter                                             |  Level  | Default         | Description                          |
|:------------------------------------------------------|:-------:|:----------------|:-------------------------------------|
| [`kafka_cluster`](#kafka_cluster)                     | Cluster | required        | Kafka cluster identity               |
| [`kafka_seq`](#kafka_seq)                             | Instance| required        | Cluster-unique KRaft `node.id`       |
| [`kafka_role`](#kafka_role)                           | Instance| `combined`      | `combined`, `broker`, or `controller`|
| [`kafka_cluster_id`](#kafka_cluster_id)               | Cluster | unset           | Takeover/recovery assertion; randomly generated for a new cluster |
| [`kafka_data`](#kafka_data)                           | Instance| `/data/kafka`   | Role-owned data root directory       |
| [`kafka_heap_opts`](#kafka_heap_opts)                 | Instance| `-Xms1G -Xmx1G` | Kafka JVM heap                       |
| [`kafka_port`](#kafka_port)                           | Instance| `9092`          | Broker/client port                   |
| [`kafka_controller_port`](#kafka_controller_port)     | Instance| `9093`          | KRaft controller port                |
| [`kafka_rack`](#kafka_rack)                           | Instance| unset           | Broker fault-domain label            |
| [`kafka_parameters`](#kafka_parameters)               |Cluster/Instance| `{}`     | Non-role-owned broker parameters     |
| [`kafka_jmx_exporter_port`](#kafka_jmx_exporter_port) | Instance| `9404`          | JMX Exporter HTTP port               |
| [`kafka_exporter_port`](#kafka_exporter_port)         | Instance| `9308`          | Protocol Exporter HTTP port          |
| [`kafka_security`](#kafka_security)                   | Cluster | `plaintext`     | `plaintext` or the production `scram` profile |
| [`kafka_users`](#kafka_users)                         | Cluster | `[]`            | User credentials, ACLs, and quotas   |
| [`kafka_topics`](#kafka_topics)                       | Cluster | `[]`            | Declarative topics                   |
{.full-width}

Set `kafka_cluster` and `kafka_seq`. `kafka_role` has a default. Omit it on every member or declare it on every member.


--------

## Identity and Topology

### `kafka_cluster`

Required cluster identity. Start with a letter or digit. Use only letters, digits, underscores, and hyphens:

```yaml
kafka_cluster: kf-main
```

This identifies all cluster members, generates instance names, and locates the manifest. Every `kafka.yml` lifecycle operation must select all cluster members with precise `-l`.


### `kafka_seq`

Required non-negative integer, unique within `kafka_cluster`. It directly becomes KRaft `node.id`:

```yaml
10.10.10.11: { kafka_seq: 1 }
```

The instance name is `${kafka_cluster}-${kafka_seq}`. After formatting, do not change or reuse a sequence number that still has data.


### `kafka_role`

Defaults to `combined`, and accepts only:

| Value        | Kafka `process.roles` | Semantics                       |
|:-------------|:----------------------|:--------------------------------|
| `combined`   | `broker,controller`   | Broker and controller co-located|
| `broker`     | `broker`              | Broker only                     |
| `controller` | `controller`          | Controller only                 |
{.full-width}

If all members omit the role, they use `combined`. If one declares it, all must declare it. Legacy aliases are unavailable.


### `kafka_cluster_id`

Unset by default. Use it only to assert an existing cluster identity for takeover or recovery. It requires a 22-character Kafka UUID:

```yaml
kafka_cluster_id: MkU3OEVBNTcwNTJENDM2Qk
```

Omit it for ordinary new clusters. The role generates a random Cluster ID and writes `/etc/kafka/manifest.yml` on every member. This parameter cannot relabel data. Conflicts with the manifest or `meta.properties` block execution.


### `kafka_rack`

An optional broker fault-domain label, rendered as `broker.rack`:

```yaml
10.10.10.21: { kafka_seq: 4, kafka_role: broker, kafka_rack: az-a }
```

Set this on all broker-capable nodes or none. Controller-only nodes ignore it. Changes require a strict rolling restart but do not reassign replicas.


--------

## Storage, JVM, and Network

### `kafka_data`

The data root directory, defaulting to `/data/kafka`:

```yaml
kafka_data: /data/kafka
```

The role derives `${kafka_data}/data` and `${kafka_data}/metadata`. Use a dedicated absolute path. Forbidden roots are `/`, `/data`, `/var`, `/etc`, `/opt`, `/usr`, `/home`, `/root`, and `/pg`. [`kafka-rm.yml`](/docs/kafka/playbook#cluster-teardown) deletes the whole root by default. Do not store other service or business files there.


### `kafka_heap_opts`

The Kafka JVM heap, defaulting to:

```yaml
kafka_heap_opts: '-Xms1G -Xmx1G'
```

Set production heap size through load and memory tests. Usually keep `Xms` equal to `Xmx`. Reserve memory for OS page cache and other processes.


### `kafka_port`

Broker/client port, default `9092`. Only broker-capable nodes listen here. `plaintext` uses PLAINTEXT; `scram` uses SASL_SSL + SCRAM-SHA-512.


### `kafka_controller_port`

Controller port, default `9093`, the conventional KRaft port. Only controller-capable nodes listen here. Check for conflicts with other services yourself; the role does not detect them.


All four public ports must differ. Brokers bind `0.0.0.0`. Controller listeners, broker advertised addresses, and controller bootstrap addresses use `inventory_hostname`. No separate address parameters exist.


--------

## `kafka_parameters`

Default `{}`. This is the only custom broker parameter mapping, rendered only on broker-capable nodes:

```yaml
kafka_parameters:
  num.partitions: 12
  num.network.threads: 6
  num.io.threads: 16
  log.retention.hours: 168
  log.segment.bytes: 1073741824
```

The following keys or patterns are owned by the role and cannot be overridden through this mapping:

```text
process.roles
node.id
controller.quorum.*
listeners
advertised.listeners
listener.security.protocol.map
inter.broker.listener.name
controller.listener.names
log.dirs
metadata.log.dir
min.insync.replicas
default.replication.factor
offsets.topic.replication.factor
transaction.state.log.replication.factor
transaction.state.log.min.isr
share.coordinator.state.topic.replication.factor
share.coordinator.state.topic.min.isr
broker.rack
authorizer.class.name
super.users
allow.everyone.if.no.acl.found
sasl.*
ssl.*
listener.*
```

The role owns identity, listeners, security, storage, and replication policy. Reserved keys cause preflight failure.


--------

## Observability

### `kafka_jmx_exporter_port`

JMX HTTP port, default `9404`. Every Kafka JVM receives the agent and registers as `job=kafka`; no toggle exists. Lifecycle checks use a separate Kafka CLI/metadata channel, not JMX. INFRA nodes must reach this port. `kafka_security: scram` does not enable HTTPS here. Protect the endpoint with the monitoring network and firewall.


### `kafka_exporter_port`

Protocol `kafka_exporter` HTTP port, default `9308`. The role starts and registers exporters on the first two broker-capable nodes by `kafka_seq`. A single broker runs one. Full runs refresh discovery targets for current placement. Ordinary playbooks do not stop stale exporter services on previously selected nodes.

Exporter protocol version, TLS/SCRAM settings, and placement are internal conventions. No additional public toggle or options parameters exist.


--------

## Security and Resources

### `kafka_security`

Defaults to `plaintext`, and accepts only:

| Value       | Broker/client            | Controller | Authorization                | Purpose                       |
|:------------|:-------------------------|:-----------|:-----------------------------|:------------------------------|
| `plaintext` | PLAINTEXT                | PLAINTEXT  | none                         | Development or a trusted, isolated network |
| `scram`     | SASL_SSL + SCRAM-SHA-512 | mutual TLS | StandardAuthorizer, deny-by-default | Production security baseline  |
{.full-width}

`scram` configures Pigsty CA certificates, internal/administration/monitoring identities, and TLS/SCRAM/ACL activation order together. The manifest records this profile. After formatting, ordinary reruns cannot switch between `plaintext` and `scram` in either direction.

Certificates use shared [`cert_validity`](/docs/infra/param#cert_validity), default `7300d`. KAFKA has no separate validity parameter.


### `kafka_users`

Default `[]`; permitted only in `scram` mode. Supply a list of mappings with only `name`, `password`, `acls`, and `quota`. Non-mappings or unknown top-level keys fail before resource convergence:

```yaml
kafka_users:
  - name: order-service
    password: "{{ vault_kafka_order_password }}"
    acls:
      - resource: topic
        name: order.
        pattern: prefixed
        operations: [Read, Write, Describe]
      - resource: group
        name: order.
        pattern: prefixed
        operations: [Read]
      - resource: transactional_id
        name: order.
        pattern: prefixed
        operations: [Write, Describe]
    quota:
      producer_byte_rate: 10485760
      consumer_byte_rate: 20971520
```

Constraints:

- `name` must be unique in the list. Required `password` must contain at least 12 characters and should reference secret management.
- ACL `resource`: `topic`, `group`, `transactional_id`, or `cluster`.
- `pattern`: `literal` (default) or `prefixed`.
- Operations: `Read`, `Write`, `Create`, `Delete`, `Alter`, `Describe`, `ClusterAction`, `DescribeConfigs`, `AlterConfigs`, `IdempotentWrite`.
- Quotas: `producer_byte_rate`, `consumer_byte_rate`, `request_percentage`, `controller_mutation_rate`.

The role applies each declared user's SCRAM password, full ACL set, and specified quota fields. Removing entries does not delete principals or credentials. Deletion and revocation require separate audited operations.


### `kafka_topics`

Default `[]`. Supply mappings with only `name`, `partitions`, `replication_factor`, and `config`. Non-mappings or unknown top-level keys fail before resource convergence:

```yaml
kafka_topics:
  - name: order.events
    partitions: 12
    replication_factor: 3
    config:
      min.insync.replicas: 2
      cleanup.policy: delete
      retention.ms: 604800000
```

Identity prechecks validate only unique `name` values. Kafka checks partitions and RF at creation: both must be at least 1; RF cannot exceed current broker count. These errors appear during resource convergence, not `--check`. The rules are:

- Create missing topics idempotently.
- Increase partitions only; decreases fail.
- Reject RF differences from live state and require explicit reassignment.
- Change only keys declared in `config`.
- Never delete a topic because its list entry disappeared.


--------

## Transient Protected Operational Variables

Use these variables only with command-line `-e` for individual operations. They are outside the 15 persistent parameters. Do not put them in `pigsty.yml`:

| Action | Playbook | Transient Variable | Protection Condition |
|:-------|:---------------|:------------------------------------------------------------------------------------|:-------------------------------|
| Rotate internal credentials | `kafka.yml`    | `kafka_rotate_credentials=true`, `kafka_rotate_confirm=<cluster>`                    | A healthy, fully-formatted `scram` cluster |
| Rotate certificates | `kafka.yml`    | `kafka_rotate_certificates=true`, `kafka_rotate_confirm=<cluster>`                   | A healthy, fully-formatted `scram` cluster |
| Tear down the cluster | `kafka-rm.yml` | `kafka_rm_data` (default `true`), `kafka_rm_pkg` (default `false`), `kafka_safeguard` (default `false`) | Explicit `-l` required; `kafka_safeguard=true` aborts all deletion |
{.full-width}

Rotation actions are mutually exclusive and require one exact complete cluster. `kafka-rm.yml` deletes data and node-local `/etc/kafka` recovery state by default. `kafka_rm_data=false` retains both. Before removal, confirm the target and backup or rebuild intent. See [Playbooks](/docs/kafka/playbook) for commands and details.


### `kafka_safeguard`

For `kafka-rm.yml` only. Default `false`. When `true`, abort before deregistration, retirement, service shutdown, or deletion. This boolean switch does not test whether the cluster is alive.


### `kafka_rm_data`

For `kafka-rm.yml` only. Default `true`. Delete all of `kafka_data` and `/etc/kafka`, including the manifest, credentials, and recovery state needed to readopt retained storage. `false` keeps both paths. It still deregisters targets, stops services, and removes runtime integration configuration.


### `kafka_rm_pkg`

For `kafka-rm.yml` only. Default `false`. When `true`, uninstall mapped `kafka-stack` packages: Kafka, Kafka Exporter, and JMX Exporter. Never uninstall the shared Java runtime.
