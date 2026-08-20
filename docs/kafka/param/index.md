# Parameters

> 15 persistent public parameters and transient protected operational variables of the KAFKA module.

---

LLMS index: [llms.txt](/llms.txt)

---

The KAFKA role deliberately exposes only 15 persistent parameters. Details such as topology, listeners, security implementation, storage subdirectories, replication safety, and Exporter placement are derived by the role in a single, consistent way, and cannot be overridden as additional persistent variables.


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

`kafka_cluster` and `kafka_seq` must be defined; `kafka_role` has a real default. The cluster's roles are either all omitted or all declared explicitly.


--------

## Identity and Topology

### `kafka_cluster`

The required cluster identity. It must start with a letter or digit and contain only letters, digits, underscores, and hyphens:

```yaml
kafka_cluster: kf-main
```

It is used to discover the complete cluster membership, generate instance names, and locate the bootstrap manifest. Every `kafka.yml` lifecycle operation must use a precise `-l` to select all members of this cluster.


### `kafka_seq`

A required non-negative integer, unique within the same `kafka_cluster`, which becomes the KRaft `node.id` directly:

```yaml
10.10.10.11: { kafka_seq: 1 }
```

The instance name is derived as `${kafka_cluster}-${kafka_seq}`. Once a node has been formatted, do not change or reuse a sequence number that still has associated data.


### `kafka_role`

Defaults to `combined`, and accepts only:

| Value        | Kafka `process.roles` | Semantics                       |
|:-------------|:----------------------|:--------------------------------|
| `combined`   | `broker,controller`   | Broker and controller co-located|
| `broker`     | `broker`              | Broker only                     |
| `controller` | `controller`          | Controller only                 |
{.full-width}

When all cluster members omit it, they consistently use `combined`; as soon as any member sets it explicitly, all members must set it explicitly. No legacy role aliases are provided.


### `kafka_cluster_id`

Unset by default, used only to assert the identity of an existing cluster during takeover or recovery. It must be a 22-character Kafka UUID:

```yaml
kafka_cluster_id: MkU3OEVBNTcwNTJENDM2Qk
```

Do not set it for an ordinary new cluster. The role generates the Cluster ID randomly and writes it into every member's `/etc/kafka/manifest.yml`. This parameter does not relabel existing data; it fails closed when it conflicts with the manifest or `meta.properties`.


### `kafka_rack`

An optional broker fault-domain label, rendered as `broker.rack`:

```yaml
10.10.10.21: { kafka_seq: 4, kafka_role: broker, kafka_rack: az-a }
```

All broker-capable nodes must either all declare it or all omit it. Controller-only nodes do not use this value. Changing the rack is a static change that goes through a strict rolling restart, but does not reassign existing replicas.


--------

## Storage, JVM, and Network

### `kafka_data`

The data root directory, defaulting to `/data/kafka`:

```yaml
kafka_data: /data/kafka
```

The role derives `${kafka_data}/data` and `${kafka_data}/metadata` in a fixed way. This path must be a dedicated absolute path, and cannot be `/`, `/data`, `/var`, `/etc`, `/opt`, `/usr`, `/home`, `/root`, or `/pg`. [`kafka-rm.yml`](/docs/kafka/playbook#cluster-teardown) deletes the entire root directory by default, so do not mix other services or business files into it.


### `kafka_heap_opts`

The Kafka JVM heap, defaulting to:

```yaml
kafka_heap_opts: '-Xms1G -Xmx1G'
```

In production, set it according to load and memory load testing. Typically keep `Xms` and `Xmx` equal, and leave enough memory for the operating-system page cache and other processes.


### `kafka_port`

The broker/client listener port, defaulting to `9092`, and listening only on broker-capable nodes. `plaintext` mode uses PLAINTEXT; `scram` mode uses SASL_SSL + SCRAM-SHA-512.


### `kafka_controller_port`

The KRaft controller listener port, defaulting to `9093` (the conventional Kafka KRaft port), and listening only on controller-capable nodes. When sharing a node with other services, verify yourself that the ports do not collide; the role does not automatically detect cross-service port usage.


The four public ports must all differ from one another. The broker listener binds `0.0.0.0`, while the controller listener, the broker advertised address, and the controller bootstrap address all use `inventory_hostname` in a fixed way, with no separate address parameters.


--------

## `kafka_parameters`

Defaults to `{}`. It is the only Kafka broker-parameter escape hatch, rendered only onto broker-capable nodes:

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

Identity, listeners, security, storage, and replication policy must remain single-authority; when a reserved key is included, the preflight fails outright.


--------

## Observability

### `kafka_jmx_exporter_port`

The JMX Exporter HTTP port, defaulting to `9404`. The role injects the JMX Exporter Java agent unconditionally into every Kafka JVM and registers it as `job=kafka`; there is no separate toggle parameter. The lifecycle health gate uses the role-owned Kafka CLI/metadata channel and does not depend on JMX. Infra monitoring nodes must be able to reach this port; the endpoint does not automatically enable HTTPS because of `kafka_security: scram`, so it should be protected by the monitoring network and firewall.


### `kafka_exporter_port`

The HTTP port of the protocol-level `kafka_exporter`, defaulting to `9308`. The role configures, starts, and registers it only on the first two broker-capable nodes after sorting by `kafka_seq`; a single-broker cluster runs only one. The monitoring target file is refreshed on every full run according to the current placement, but a stale Exporter service on a node that was previously selected is not stopped automatically by an ordinary playbook.

The Kafka protocol version, TLS/SCRAM parameters, and replica placement used by the Exporter are all internal role conventions, with no additional public toggles or options parameters.


--------

## Security and Resources

### `kafka_security`

Defaults to `plaintext`, and accepts only:

| Value       | Broker/client            | Controller | Authorization                | Purpose                       |
|:------------|:-------------------------|:-----------|:-----------------------------|:------------------------------|
| `plaintext` | PLAINTEXT                | PLAINTEXT  | none                         | Development or a trusted, isolated network |
| `scram`     | SASL_SSL + SCRAM-SHA-512 | mutual TLS | StandardAuthorizer, deny-by-default | Production security baseline  |
{.full-width}

`scram` simultaneously configures the Pigsty CA-issued node certificates, the role-owned admin/monitoring/internal identities, and the ordering in which TLS/SCRAM and ACLs are enabled. The security profile is written into the bootstrap manifest; once the cluster is formatted, an ordinary rerun can neither switch `plaintext` to `scram` nor switch back.

Node certificate validity follows Pigsty's shared CA parameter [`cert_validity`](/docs/infra/param#cert_validity) (`7300d` by default); the KAFKA module has no separate certificate validity parameter.


### `kafka_users`

Defaults to `[]`, and may only be declared in `scram` mode. The collection must be a list of mappings, and each mapping accepts only `name`, `password`, `acls`, and `quota`; a non-mapping item or unknown top-level key fails before resource convergence:

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

- `name` is unique within the list; `password` is required, must be at least 12 characters, and should reference a secret management system;
- ACL `resource` is one of `topic`, `group`, `transactional_id`, `cluster`;
- `pattern` is `literal` (default) or `prefixed`;
- Operations are `Read`, `Write`, `Create`, `Delete`, `Alter`, `Describe`, `ClusterAction`, `DescribeConfigs`, `AlterConfigs`, `IdempotentWrite`;
- Quota keys are `producer_byte_rate`, `consumer_byte_rate`, `request_percentage`, `controller_mutation_rate`.

The role converges the SCRAM password, the complete ACL set, and the explicitly provided quota fields for a declared user. Removing a user entry does not implicitly delete the principal or credentials; deletion/revocation requires a separate, audited operation.


### `kafka_topics`

Defaults to `[]`. The collection must be a list of mappings, and each mapping accepts only `name`, `partitions`, `replication_factor`, and `config`; a non-mapping item or unknown top-level key fails before resource convergence:

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

The identity precheck only validates that `name` is unique within the list. Partition and RF validity (at least 1, and RF not exceeding the current broker count) is decided by Kafka at creation time, so such errors surface during the resource convergence stage rather than under `--check`. The convergence semantics are:

- The topic is created idempotently when it does not exist;
- Partitions may only increase; decreasing fails;
- When RF differs from the live state, ordinary convergence is refused and an explicit reassignment is required;
- Only the keys declared in `config` are updated;
- Removing a topic from the list never deletes the topic.


--------

## Transient Protected Operational Variables

The following variables are used only via the command-line `-e` for one-off operational actions. They are not part of the 15 persistent API parameters and should not be written into `pigsty.yml`:

| Action | Playbook | Transient Variable | Protection Condition |
|:-------|:---------------|:------------------------------------------------------------------------------------|:-------------------------------|
| Rotate internal credentials | `kafka.yml`    | `kafka_rotate_credentials=true`, `kafka_rotate_confirm=<cluster>`                    | A healthy, fully-formatted `scram` cluster |
| Rotate certificates | `kafka.yml`    | `kafka_rotate_certificates=true`, `kafka_rotate_confirm=<cluster>`                   | A healthy, fully-formatted `scram` cluster |
| Tear down the cluster | `kafka-rm.yml` | `kafka_rm_data` (default `true`), `kafka_rm_pkg` (default `false`), `kafka_safeguard` (default `false`) | Explicit `-l` required; `kafka_safeguard=true` aborts all deletion |
{.full-width}

The two rotation actions are mutually exclusive, and must target a precise, complete cluster. `kafka-rm.yml` deletes the data directory and node-local `/etc/kafka` recovery state by default; `kafka_rm_data=false` retains both. Before running it, explicitly confirm the target cluster and your backup/rebuild intent. For the commands and full semantics, see [Playbooks](/docs/kafka/playbook).


### `kafka_safeguard`

For `kafka-rm.yml` only, `false` by default. When set to `true`, the removal role aborts before deregistration, retirement, service shutdown, and deletion. This is a boolean safety switch; it does not probe whether the cluster is alive.


### `kafka_rm_data`

For `kafka-rm.yml` only, `true` by default. When enabled it deletes the entire `kafka_data` directory and `/etc/kafka`, the latter holding the manifest, credential copies, and the recovery state required to re-adopt retained storage. Setting it to `false` keeps both, but monitoring targets are still deregistered, services still stopped, and runtime integration config still removed.


### `kafka_rm_pkg`

For `kafka-rm.yml` only, `false` by default. When set to `true` it uninstalls the `kafka-stack` packages from the platform mapping (the Kafka, Kafka Exporter, and JMX Exporter payload); the shared Java runtime is never uninstalled.
