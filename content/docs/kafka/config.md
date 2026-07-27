---
title: Configuration
weight: 4902
description: Plan Kafka dynamic KRaft topology, identity, network, storage, security, and declarative resources.
icon: fa-solid fa-code
module: [KAFKA]
categories: [Reference]
aliases: [/docs/pilot/kafka/config]
---


The KAFKA module expresses cluster intent through 15 persistent public parameters; everything else — topology, listeners, storage subdirectories, replication safety, authorization, and Exporter placement — is derived by the role in a single, consistent way. For a first deployment, start with the [Quickstart](/docs/kafka/start); for the full field reference, see [Parameters](/docs/kafka/param).

{{% alert title="Plan First, Then Format" color="warning" %}}
`kafka_seq` becomes the KRaft `node.id`. For a new cluster, the randomly generated Cluster ID, the initial controller identities, the security profile, and the initial replication policy are all written into the bootstrap manifest. Once storage has been formatted, do not casually change identities, the security profile, or the controller set. The role validates the live state against the manifest and fails closed on any conflict; it never silently overwrites or reformats data.
{{% /alert %}}


--------

## Pre-Deployment Checklist

Before filling in the inventory, confirm at least the following:

- The target hosts are already commissioned by [`NODE`](/docs/node), the software repository is reachable, and `inventory_hostname` is directly routable by every Kafka member and client.
- A single operation will use `-l` to select precisely all members of one `kafka_cluster` — not a single node, a subset of members, or multiple clusters.
- `kafka_seq` is unique within the cluster, the controller count is odd, and the broker count matches your fault domains and capacity targets.
- Ports `9092`, `9093`, `9308`, and `9404` do not collide, and Infra nodes can reach both metrics ports.
- `kafka_data` maps to a dedicated filesystem, sized for retention, write peaks, replication traffic, recovery time, and growth headroom.
- Production uses `kafka_security: scram`; node and admin clocks are synchronized, the Pigsty CA is available, and application passwords come from a secret source such as Vault.
- Topic partitions, replicas, `min.insync.replicas`, and retention policy — along with client `acks`, retries, and consumer recovery strategy — have been reviewed.
- Scale-out and scale-in, partition reassignment, upgrades, backup, restore, and controller membership changes each have their own runbook.


--------

## Roles and Topology

[`kafka_role`](/docs/kafka/param#kafka_role) accepts only three values:

| Role | Kafka `process.roles` | Broker Port | Controller Port | JMX | kafka_exporter |
|:---|:---|:---:|:---:|:---:|:---:|
| `combined` | `broker,controller` | ✓ | ✓ | ✓ | eligible |
| `broker` | `broker` | ✓ | － | ✓ | eligible |
| `controller` | `controller` | － | ✓ | ✓ | － |
{.full-width}

`kafka_role` is declared independently per node, and defaults to `combined` when omitted. A cluster must contain at least one controller-capable node and at least one broker-capable node; an even number of controllers produces a warning, and production typically uses 3 controllers.


--------

## Single-Node Development Cluster

A single node serves as both broker and controller. It cannot tolerate a node failure and is suitable only for development, testing, and feature validation:

```yaml
kf-dev:
  hosts:
    10.10.10.10: { kafka_seq: 1 }
  vars:
    kafka_cluster: kf-dev
```

The role derives RF=1 and minISR=1 from the initial broker count. Do not use a single-node topology or the default `plaintext` security profile directly in production.


--------

## Three-Node Combined Deployment

All three nodes serve as both broker and controller — a compact production starting point. Omit every role field to use the default `combined`:

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

The initial three brokers automatically get the role-owned replication policy of RF=3 and minISR=2. You neither need nor are allowed to override the internal-topic RF, `default.replication.factor`, or `min.insync.replicas` in `kafka_parameters`. The 4G heap in the example is only illustrative; in production, balance the JVM heap, the operating-system page cache, and any other processes on the same host through load testing.


--------

## Separating Controllers and Brokers

Critical or larger clusters can separate the control plane from the data plane. Because explicit roles are present, every member must declare its role:

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

A controller-only node does not listen on `9092` and does not run the protocol Exporter; it still exposes KRaft and JVM state through JMX. At most two `kafka_exporter` instances are placed on the broker-capable nodes with the lowest `kafka_seq`.


--------

## Dynamic KRaft and the Bootstrap Manifest

A new cluster uses the dynamic quorum directly: every node renders `controller.quorum.bootstrap.servers`, and no static `controller.quorum.voters` is generated. At the first format:

- The Cluster ID is generated randomly, not hashed from the cluster name;
- The Directory IDs of the initial controllers are generated randomly and frozen;
- Each node is formatted explicitly with either `--initial-controllers` or `--no-initial-controllers` mode;
- After the first bootstrap startup, the role waits for the dynamic quorum to elect a leader, and verifies that every initial controller's Directory ID has entered the live quorum.

The bootstrap-only facts live on every cluster member:

```text
/etc/kafka/manifest.yml
```

Each member of a `scram` cluster also holds `/etc/kafka/secrets.yml`. The admin node keeps no kafka state at all: the manifest and secrets are resolved from any member copy on every run, and the issued node certificates live in the shared PKI tree (`files/pki/kafka/`, with CSRs under `files/pki/csr/`) and are simply re-signed from the Pigsty CA when absent. The manifest records only the cluster identity, the initial controller identities, the security profile, and the initial RF/minISR. The live cluster is always the authority on runtime facts:

- When the manifest conflicts with the live identity or security profile, ordinary playbooks fail closed;
- When an old manifest exists but all data disks are empty, reviving the old cluster is refused;
- When no member holds a manifest copy while storage is already formatted, the role fails closed and asks you to restore the file on any member first;
- An already-formatted `scram` cluster likewise fails closed when no member holds the secret material.

The manifest is the cluster's birth certificate: after the first commission, membership is authoritative in the live Raft state. Combined/controller nodes newly declared in the inventory are then joined to the dynamic quorum by the playbook (fresh format → observer catch-up → `add-controller` promotion), and retirement is a `kafka-rm.yml` strict-subset run (automatic `remove-controller` and broker unregistration) — see [Expand Cluster](/docs/kafka/admin#expand-cluster) and [Shrink Cluster](/docs/kafka/admin#shrink-cluster).


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

An already-formatted node reads `cluster.id` and `node.id` from `${kafka_data}/metadata/meta.properties` and cross-checks them against the manifest and the inventory; the initial controllers' Directory IDs are compared against the live quorum after startup. An identity mismatch is a protective failure and must not be worked around by deleting `meta.properties` or wiping data.


--------

## Network and Listeners

The role exposes only ports — not bind addresses, advertised addresses, or the listener map:

| Parameter | Default | Purpose |
|:---|:---|:---|
| [`kafka_port`](/docs/kafka/param#kafka_port) | `9092` | Broker, client, and inter-broker communication |
| [`kafka_controller_port`](/docs/kafka/param#kafka_controller_port) | `9093` | KRaft controller quorum |
| [`kafka_exporter_port`](/docs/kafka/param#kafka_exporter_port) | `9308` | Protocol Exporter HTTP metrics |
| [`kafka_jmx_exporter_port`](/docs/kafka/param#kafka_jmx_exporter_port) | `9404` | JMX Exporter HTTP metrics |
{.full-width}

The fixed listener conventions are as follows:

- The broker listener binds `0.0.0.0`, and the controller listener binds `inventory_hostname`;
- The broker's `advertised.listeners` uses `inventory_hostname`;
- The controller bootstrap address also uses `inventory_hostname`;
- `plaintext`: both BROKER and CONTROLLER use PLAINTEXT;
- `scram`: BROKER uses SASL_SSL + SCRAM-SHA-512, and CONTROLLER uses mutual TLS.

Clients must therefore be able to resolve and directly reach every broker's `inventory_hostname`. The current v1 does not support NAT, public-address mapping, multiple client networks for the same broker, or arbitrary raw listener overrides; these scenarios cannot be assembled around through `kafka_parameters`.

Kafka's standard access model is a smart client connecting directly to brokers: `bootstrap.servers` is configured with several seed addresses, and once the client fetches cluster metadata it connects directly to the partition leaders. HAProxy, a Keepalived VIP, or a cloud LB should not be used as the regular Kafka data-plane entry point, because they are unaware of Kafka metadata and partition leaders and cannot exempt clients from reaching every `advertised.listeners` address. A DNS or TCP LB can at most serve as an optional bootstrap discovery entry point; even then, the application network must still reach all brokers directly. See [Quickstart: Connecting Application Clients](/docs/kafka/start#part-3-connect-application-clients) for details.

The minimum required network flows:

| Source | Destination | Port | Purpose |
|:---|:---|:---:|:---|
| Kafka clients, other brokers | All brokers | `9092` | Produce, Fetch, metadata, and inter-broker communication |
| All Kafka members | All controllers | `9093` | KRaft metadata quorum |
| Infra/VictoriaMetrics | All Kafka nodes | `9404` | JVM/Kafka metrics |
| Infra/VictoriaMetrics | Selected Exporter nodes | `9308` | Cluster/Topic/Consumer metrics |
{.full-width}

The metrics ports are HTTP, and even when Kafka uses `scram` they should be restricted to the monitoring network by firewall.


--------

## Storage, Heap, and Rack

You set only the root directory:

```yaml
kafka_data: /data/kafka
```

The role derives the topic data directory `${kafka_data}/data` and the KRaft metadata directory `${kafka_data}/metadata` in a fixed way. `kafka_data` must be a dedicated absolute path, and cannot be `/`, `/data`, `/var`, `/etc`, `/opt`, `/usr`, `/home`, `/root`, or `/pg`.

Production planning should account for at least retention, message peaks, replication traffic, partition/segment counts, disk latency and throughput, file descriptors, recovery time, JVM heap, and page cache. The current role generates only a single `log.dirs`; multi-disk JBOD, disk replacement, and automatic data migration require separate runbooks.

For deployments spanning fault domains, declare [`kafka_rack`](/docs/kafka/param#kafka_rack) consistently on all broker-capable nodes:

```yaml
10.10.10.21: { kafka_seq: 4, kafka_role: broker, kafka_rack: az-a }
10.10.10.22: { kafka_seq: 5, kafka_role: broker, kafka_rack: az-b }
10.10.10.23: { kafka_seq: 6, kafka_role: broker, kafka_rack: az-c }
```

Broker-capable nodes must either all set the rack or all omit it. Changing the rack triggers a safe rolling restart but does not automatically migrate existing replicas.


--------

## Replication Policy

At the first bootstrap, the policy is derived from the initial broker count:

```text
replication_factor = min(3, broker_count)
min_insync_replicas = max(1, replication_factor - 1)
```

The initial default RF for future topics, the internal-topic RF, and the cluster minISR are all written into the manifest and frozen. After scaling out:

- `default.replication.factor` keeps its initial value; Kafka 4.3 does not allow changing it online through dynamic broker configuration;
- The RF of existing internal/business topics is not raised automatically;
- The role does not report "brokers have joined" as "data is balanced";
- An RF change must use a reviewed `kafka-reassign-partitions.sh` plan; raising the static default additionally requires controller high availability or an explicit maintenance window, and takes effect through a full-cluster safe rolling restart.

Producer `acks`, idempotence, retries, batching, and compression are client policy, not parameters of the Kafka broker role.


--------

## `kafka_parameters`

[`kafka_parameters`](/docs/kafka/param#kafka_parameters) is the only broker-parameter escape hatch. It defaults to `{}` and is rendered only onto broker-capable nodes. It is suited to non-role-owned keys such as `num.partitions`, thread counts, buffers, retention, and segments.

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

If any reserved key appears, the identity preflight fails outright before any file is written.


--------

## Security and Declarative Resources

`kafka_security: scram` is a complete production profile, not a set of switches to be combined at will. It automatically enables:

- Per-node certificates issued by the Pigsty CA;
- Mutual TLS on the controller listener;
- SASL_SSL + SCRAM-SHA-512 for broker/client and inter-broker traffic;
- `StandardAuthorizer`, deny-by-default, and role-owned admin/monitoring identities;
- Convergence of the minimal monitoring ACL before the protocol Exporter starts.

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

Resource convergence semantics: topic creation is idempotent, partitions only increase, and only explicitly declared config is updated; an RF change is refused with a prompt to run reassignment. A declared user's password, ACLs, and the quota fields you provide converge idempotently. Removing a topic or user entry is not an implicit deletion procedure.

The security profile cannot be switched by an ordinary playbook after bootstrap. Internal credentials and certificates can use [protected rotation](/docs/kafka/playbook#protected-rotation), but an online migration from `plaintext` to `scram` still requires an explicit state machine that is planned for the future.


--------

## Packages and File Layout

The role installs `java-runtime` and `kafka-stack` through platform mappings. The payload verified on 2026-07-16 is Kafka 4.3.1, `kafka_exporter` 1.9.0, and JMX Exporter 1.6.0; the actual versions still depend on the target platform's repository and the installed packages.

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
| `/etc/kafka/pki/kafka.pem` | PEM private key and certificate on a `scram` node; the trust anchor uses the system `/etc/pki/ca.crt` |
| `${kafka_data}/data/` | Topic log data |
| `${kafka_data}/metadata/` | KRaft metadata and `meta.properties` |
| `files/pki/kafka/` | Issued node certs on the admin node (`<cluster>-<seq>.key/.crt`, CSRs under `files/pki/csr/`) |
{.full-width}

These files are managed by the role. Persistent intent belongs in `pigsty.yml`. Do not edit generated files directly on the nodes, and do not copy passwords, private keys, or role-owned secret contents into inventory, logs, or tickets.
