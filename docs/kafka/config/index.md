# Configuration

> Plan Kafka dynamic KRaft topology, identity, network, storage, security, and declarative resources.

---

LLMS index: [llms.txt](/llms.txt)

---

KAFKA uses 15 persistent public parameters. The role derives topology, listeners, storage subdirectories, replication safety, authorization, and exporter placement consistently. Start with [Quickstart](/docs/kafka/start). See [Parameters](/docs/kafka/param) for the field reference.

> [!WARNING] Plan First, Then Format
> `kafka_seq` becomes KRaft `node.id`. A new cluster's bootstrap manifest freezes the random Cluster ID, initial controller identities, security profile, and initial replication policy.
> After formatting, do not casually change identities, security profile, or controllers. The role checks live state against the manifest and blocks conflicts. It never silently overwrites or reformats data.


--------

## Pre-Deployment Checklist

Before writing the inventory, confirm these requirements:

- [`NODE`](/docs/node) manages the hosts, and the software repository is reachable. Every member and client can route directly to `inventory_hostname`.
- Each operation uses `-l` to select exactly all members of one `kafka_cluster`. Do not select a node, subset, or multiple clusters.
- `kafka_seq` is unique per cluster. Controller count is odd. Broker count meets failure-domain and capacity requirements.
- `9092`, `9093`, `9308`, and `9404` do not conflict. INFRA nodes can reach both metrics ports.
- `kafka_data` uses a dedicated filesystem. Size it for retention, peak writes, replication, recovery time, and growth.
- Production uses `kafka_security: scram`. Synchronize node and administration clocks. Provide the Pigsty CA and application passwords from a secret source such as Vault.
- Review partitions, replica counts, `min.insync.replicas`, retention, client `acks`, retries, and consumer recovery.
- Prepare separate procedures for expansion, shrink, reassignment, upgrades, backup, restore, and controller membership changes.


--------

## Roles and Topology

[`kafka_role`](/docs/kafka/param#kafka_role) accepts only three values:

| Role | Kafka `process.roles` | Broker Port | Controller Port | JMX | kafka_exporter |
|:---|:---|:---:|:---:|:---:|:---:|
| `combined` | `broker,controller` | ✓ | ✓ | ✓ | eligible |
| `broker` | `broker` | ✓ | － | ✓ | eligible |
| `controller` | `controller` | － | ✓ | ✓ | － |
{.full-width}

Either omit `kafka_role` on every member to use `combined`, or explicitly set it on every member. Identity checks reject mixed declarations. A cluster needs at least one controller-capable and one broker-capable node. Even controller counts trigger a warning. Production usually uses three controllers.


--------

## Single-Node Development Cluster

A single node runs both broker and controller. It cannot survive node failure. Use it only for development, testing, and feature validation:

```yaml
kf-dev:
  hosts:
    10.10.10.10: { kafka_seq: 1 }
  vars:
    kafka_cluster: kf-dev
```

The initial broker count sets RF=1 and minISR=1. Do not use this single-node topology or default `plaintext` profile directly in production.


--------

## Three-Node Combined Deployment

Three combined broker/controller nodes provide a compact production starting point. Omit all role fields to use `combined`:

```yaml
kf-main:
  hosts:
    10.10.10.11: { kafka_seq: 1 }
    10.10.10.12: { kafka_seq: 2 }
    10.10.10.13: { kafka_seq: 3 }
  vars:
    kafka_cluster: kf-main
    kafka_heap_opts: '-Xms4G -Xmx4G'
    kafka_security: scram
    kafka_parameters:
      num.partitions: 3
      num.network.threads: 6
      num.io.threads: 16
    kafka_topics:
      - name: order.events
        partitions: 12
        replication_factor: 3
        config:
          min.insync.replicas: 2
          cleanup.policy: delete
```

Three initial brokers set RF=3 and minISR=2. The role owns this policy. Do not override internal-topic RF, `default.replication.factor`, or `min.insync.replicas` in `kafka_parameters`. The example 4G heap is illustrative. Use load tests to balance JVM heap, OS page cache, and other host processes.


--------

## Separating Controllers and Brokers

For critical or larger clusters, separate control and data planes. Explicit roles require a role declaration on every member:

```yaml
kf-main:
  hosts:
    10.10.10.11: { kafka_seq: 1, kafka_role: controller }
    10.10.10.12: { kafka_seq: 2, kafka_role: controller }
    10.10.10.13: { kafka_seq: 3, kafka_role: controller }
    10.10.10.21: { kafka_seq: 4, kafka_role: broker }
    10.10.10.22: { kafka_seq: 5, kafka_role: broker }
    10.10.10.23: { kafka_seq: 6, kafka_role: broker }
  vars:
    kafka_cluster: kf-main
    kafka_security: scram
```

Controller-only nodes have no `9092` listener or protocol exporter. JMX still exposes KRaft and JVM metrics. At most two `kafka_exporter` instances run on broker-capable nodes with the lowest `kafka_seq`.


--------

## Dynamic KRaft and the Bootstrap Manifest

New clusters use dynamic quorum. Each node renders `controller.quorum.bootstrap.servers`, without static `controller.quorum.voters`. During first formatting:

- Generate a random Cluster ID rather than hashing the cluster name.
- Generate and freeze random initial controller Directory IDs.
- Format each node explicitly with `--initial-controllers` or `--no-initial-controllers`.
- After bootstrap startup, wait for leader election. Verify that every initial controller Directory ID entered live quorum.

The bootstrap-only facts live on every cluster member:

```text
/etc/kafka/manifest.yml
```

Each `scram` member also stores `/etc/kafka/secrets.yml`. Every run retrieves the manifest and secrets from any member copy. The administration node keeps no Kafka state. Certificates reside in shared PKI at `files/pki/kafka/`, with CSRs in `files/pki/csr/`. Missing certificates are signed again by the Pigsty CA. The manifest stores only cluster identity, initial controller identities, security profile, and initial RF/minISR.

Live cluster state is authoritative for runtime facts:

- Manifest conflicts with live identity or security profile block ordinary playbooks.
- An old manifest with all data disks empty cannot revive the old cluster.
- Formatted storage without any member manifest blocks execution. Restore a manifest copy on any member first.
- A formatted `scram` cluster without secret material on any member also blocks execution.

The manifest records bootstrap facts. After commissioning, live Raft state controls membership. Playbooks join new combined/controller members by fresh formatting, observer catch-up, and `add-controller` promotion. A strict-subset `kafka-rm.yml` run retires members with `remove-controller` and broker unregistration. See [Expand Cluster](/docs/kafka/admin#expand-cluster) and [Shrink Cluster](/docs/kafka/admin#shrink-cluster).


--------

## Identity Parameters

| Identity | Source | Example | Constraint |
|:---|:---|:---|:---|
| Cluster name | `kafka_cluster` | `kf-main` | Starts with a letter or digit; only letters, digits, underscores, and hyphens |
| Node number | `kafka_seq` | `1` | Non-negative integer, unique within the cluster |
| Instance name | Auto-generated | `kf-main-1` | `${kafka_cluster}-${kafka_seq}` |
| Node role | `kafka_role` | `combined` | One of the three native roles |
| KRaft Cluster ID | Randomly generated at bootstrap | 22-character Kafka UUID | `kafka_cluster_id` is only a takeover/recovery assertion |
{.full-width}

A formatted node reads `cluster.id` and `node.id` from `${kafka_data}/metadata/meta.properties`. It checks them against the manifest and inventory. After startup, it checks initial controller Directory IDs against live quorum. Identity mismatches stop execution for protection. Never bypass this by deleting `meta.properties` or erasing data.


--------

## Network and Listeners

Public parameters expose ports only. They do not expose bind addresses, advertised addresses, or listener maps:

| Parameter | Default | Purpose |
|:---|:---|:---|
| [`kafka_port`](/docs/kafka/param#kafka_port) | `9092` | Broker, client, and inter-broker communication |
| [`kafka_controller_port`](/docs/kafka/param#kafka_controller_port) | `9093` | KRaft controller quorum |
| [`kafka_exporter_port`](/docs/kafka/param#kafka_exporter_port) | `9308` | Protocol Exporter HTTP metrics |
| [`kafka_jmx_exporter_port`](/docs/kafka/param#kafka_jmx_exporter_port) | `9404` | JMX Exporter HTTP metrics |
{.full-width}

The listener conventions are fixed:

- Brokers bind `0.0.0.0`; controllers bind `inventory_hostname`.
- Broker `advertised.listeners` uses `inventory_hostname`.
- Controller bootstrap addresses also use `inventory_hostname`.
- `plaintext` uses PLAINTEXT for BROKER and CONTROLLER.
- `scram` uses SASL_SSL + SCRAM-SHA-512 for BROKER and mutual TLS for CONTROLLER.

Clients must resolve and directly reach every broker's `inventory_hostname`. Version 1 does not support NAT, public-address mapping, multiple client networks per broker, or arbitrary listener overrides. `kafka_parameters` cannot bypass these limits.

Kafka clients connect directly to brokers. Configure several seeds in `bootstrap.servers`. After fetching metadata, clients connect to partition leaders. Do not use HAProxy, Keepalived VIP, or a cloud load balancer as the regular data-plane entry. They cannot interpret Kafka metadata or remove the need to reach every `advertised.listeners` address.

DNS or a TCP load balancer can optionally provide bootstrap discovery only. Clients must still reach every broker directly. See [Connecting Application Clients](/docs/kafka/start#part-3-connect-application-clients).

Permit these minimum network flows:

| Source | Destination | Port | Purpose |
|:---|:---|:---:|:---|
| Kafka clients, other brokers | All brokers | `9092` | Produce, Fetch, metadata, and inter-broker communication |
| All Kafka members | All controllers | `9093` | KRaft metadata quorum |
| Infra/VictoriaMetrics | All Kafka nodes | `9404` | JVM/Kafka metrics |
| Infra/VictoriaMetrics | Selected Exporter nodes | `9308` | Cluster/Topic/Consumer metrics |
{.full-width}

Metrics use HTTP even with `scram`. Restrict these ports to the monitoring network through firewalls.


--------

## Storage, Heap, and Rack

You set only the root directory:

```yaml
kafka_data: /data/kafka
```

The role uses `${kafka_data}/data` for topics and `${kafka_data}/metadata` for KRaft. Set `kafka_data` to a dedicated absolute path. Forbidden paths are `/`, `/data`, `/var`, `/etc`, `/opt`, `/usr`, `/home`, `/root`, and `/pg`.

Plan production capacity for retention, peak messages, replication, partition/segment counts, disk latency and throughput, file descriptors, recovery time, heap, and page cache. The role generates one `log.dirs`. Multi-disk JBOD, disk replacement, and automatic data migration require separate procedures.

For deployments spanning fault domains, declare [`kafka_rack`](/docs/kafka/param#kafka_rack) consistently on all broker-capable nodes:

```yaml
10.10.10.21: { kafka_seq: 4, kafka_role: broker, kafka_rack: az-a }
10.10.10.22: { kafka_seq: 5, kafka_role: broker, kafka_rack: az-b }
10.10.10.23: { kafka_seq: 6, kafka_role: broker, kafka_rack: az-c }
```

Either set racks on all broker-capable nodes or omit them on all. Rack changes trigger safe rolling restarts without moving existing replicas.


--------

## Replication Policy

At the first bootstrap, the policy is derived from the initial broker count:

```text
replication_factor = min(3, broker_count)
min_insync_replicas = max(1, replication_factor - 1)
```

The manifest freezes initial topic-default RF, internal-topic RF, and cluster minISR. After expansion:

- `default.replication.factor` retains its initial value. Kafka 4.3 cannot update it through dynamic broker configuration.
- Existing internal and business topics retain their RF.
- Broker admission does not imply balanced data.
- RF changes require a reviewed `kafka-reassign-partitions.sh` plan. Increasing the static default also requires controller HA or an explicit maintenance window. A safe full-cluster rolling restart applies it.

Configure producer `acks`, idempotence, retries, batching, and compression on clients. They are not broker-role parameters.


--------

## `kafka_parameters`

[`kafka_parameters`](/docs/kafka/param#kafka_parameters) is the only custom broker configuration interface. It defaults to `{}` and renders only on broker-capable nodes. Use keys that the role does not own, such as `num.partitions`, threads, buffers, retention, and segments.

The following patterns are owned by the role and must not be overridden:

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

Any reserved key causes identity preflight to fail before writing files.


--------

## Security and Declarative Resources

`kafka_security: scram` selects a complete production profile. Its controls cannot be combined individually. It enables:

- Pigsty CA certificates for each node.
- Mutual TLS on controllers.
- SASL_SSL + SCRAM-SHA-512 for broker/client and inter-broker traffic.
- `StandardAuthorizer`, default denial, and role-managed administration and monitoring identities.
- Minimum monitoring ACLs before starting the protocol exporter.

Application resources are declared through two domain objects:

```yaml
kafka_security: scram
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
    quota:
      producer_byte_rate: 10485760
      consumer_byte_rate: 20971520
kafka_topics:
  - name: order.events
    partitions: 12
    replication_factor: 3
    config:
      min.insync.replicas: 2
      cleanup.policy: delete
```

Topic creation is idempotent. Partitions can only increase, and only declared settings change. RF changes fail with a reassignment instruction. User passwords, ACLs, and specified quota fields converge idempotently. Removing topic or user entries does not delete those resources.

Ordinary playbooks cannot change the security profile after bootstrap. [Protected rotation](/docs/kafka/playbook#protected-rotation) changes internal credentials or certificates. Online `plaintext` to `scram` migration still needs a separate state machine planned for future work.


--------

## Packages and File Layout

Platform mappings install `java-runtime` and `kafka-stack`. The payload verified on 2026-07-16 contained Kafka 4.3.1, `kafka_exporter` 1.9.0, and JMX Exporter 1.6.0. Actual versions depend on target-platform repositories and installed packages.

| Path | Purpose |
|:---|:---|
| `/opt/kafka/` | Kafka programs and CLI |
| `/etc/kafka/server.properties` | Role-generated service configuration |
| `/etc/kafka/admin.properties` | Role-generated broker admin channel; the CLI should always use it |
| `/etc/kafka/controller.properties` | Role-generated controller admin channel |
| `/etc/kafka/log4j2.yaml` | Journald logging configuration |
| `/etc/kafka/jmx_exporter.yml` | Bounded JMX metrics rules |
| `/etc/kafka/manifest.yml` | Authoritative copy of the bootstrap manifest on the node |
| `/etc/kafka/secrets.yml` | Copy of the internal secrets on a `scram` node |
| `/etc/kafka/.pigsty-applied-static.sha256` | Fingerprint of the static config proven live; the rolling-restart trigger |
| `/etc/kafka/pki/kafka.pem` | PEM private key and certificate on a `scram` node; the trust anchor uses the system `/etc/pki/ca.crt` |
| `${kafka_data}/data/` | Topic log data |
| `${kafka_data}/metadata/` | KRaft metadata and `meta.properties` |
| `files/pki/kafka/` | Issued node certs on the admin node (`<cluster>-<seq>.key/.crt`, CSRs under `files/pki/csr/`) |
{.full-width}

The role manages these files. Put persistent settings in `pigsty.yml`, not generated node files. Never copy passwords, private keys, or role-managed secrets into inventory, logs, or tickets.
