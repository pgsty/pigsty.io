---
title: Quick Start
weight: 4901
description: Deploy single-node and 3-node Kafka clusters from scratch, with secure access, parameter tuning, and launch checklist.
icon: fa-solid fa-rocket
module: [KAFKA]
categories: [Tutorial]
aliases: [/docs/pilot/kafka/start]
---


This tutorial starts from a minimal single-node cluster, walking through topic creation and message read/write; it then deploys a separate, secured three-node cluster with application users, ACLs, quotas, and production topics; finally, it demonstrates core parameter changes, client access, monitoring verification, and pre-launch checks.

{{% alert title="Tutorial Scope" color="info" %}}
Here, "from scratch" means starting before any Kafka is deployed. You will need a working Pigsty admin node with the base [`INFRA`](/docs/infra) services already deployed; if you don't have one yet, complete the [Pigsty quick install](/docs/setup/install) first. The target nodes require SSH/sudo access and must be manageable by the [`NODE`](/docs/node) module.
{{% /alert %}}


--------

## Learning Path

| Stage | Goal | End Result |
|:---:|:---|:---|
| 1 | Deploy a single-node dev cluster | One combined node, PLAINTEXT, an RF=1 topic, CLI read/write |
| 2 | Deploy a three-node secure HA demo baseline | Three combined nodes, dynamic KRaft, TLS/SCRAM/ACL, RF=3/minISR=2 |
| 3 | Connect application clients | Produce/consume using an application principal, the Pigsty CA, and SASL_SSL |
| 4 | Change core parameters | Walk through heap, broker parameters, topic partitions/retention, and a secure rolling restart |
| 5 | Launch acceptance | Check quorum, ISR, end-to-end read/write, monitoring, capacity, and runbooks |
{.full-width}

{{% alert title="The Two Examples Are Separate Clusters" color="warning" %}}
The `kf-dev` and `kf-main` below are two separate, brand-new clusters. If you do need it, you can also grow the single-node `kf-dev` into a three-controller cluster in place: declare two new combined nodes and rerun `./kafka.yml -l kf-dev`, and the role formats each one, catches it up as an observer, and promotes it with `add-controller`, one at a time — but for a demo it is still simpler to build a fresh cluster. See [Expand Cluster](/docs/kafka/admin#expand-cluster) for the semantics.
{{% /alert %}}


--------

## Before You Begin

Unless noted otherwise, the following commands are run from the project directory on the Pigsty admin node:

```bash
cd ~/pigsty
```

Before you start, confirm that:

- `pigsty.yml` is the source of configuration for the current environment — back it up and review its existing contents first;
- each Kafka node's `inventory_hostname` can be resolved and routed directly by every Kafka member and client;
- the admin node and the Kafka nodes have synchronized clocks;
- ports `9092`, `9093`, `9308`, and `9404` are free of conflicts;
- `/data/kafka` maps to a dedicated data disk or directory that holds nothing else;
- every `kafka.yml` run uses `-l` to select exactly all members of one Kafka cluster;
- before any real change, you run `--check` first, review the output, and obtain approval for the change.

The inventory must keep the `all.children` hierarchy. Merge the groups below into your existing `pigsty.yml`; do not let the examples overwrite your existing `all.vars`, `infra`, `etcd`, `pgsql`, or other configuration.


--------

## Part 1: Deploy a Single-Node Kafka

### 1. Define the Cluster

Add the following `kf-dev` group to `all.children`. This node omits `kafka_role`, so it uses the default `combined` and serves as both broker and controller:

```yaml
all:
  children:
    # keep your existing infra, etcd, pgsql, and other groups

    kf-dev:
      hosts:
        10.10.10.10: { kafka_seq: 1 }
      vars:
        kafka_cluster: kf-dev
        kafka_data: /data/kafka
        kafka_security: plaintext
        kafka_topics:
          - name: quickstart.events
            partitions: 1
            replication_factor: 1
            config:
              retention.ms: 86400000   # 1 day, tutorial only
```

This configuration yields:

- a random cluster ID;
- a single dynamic KRaft combined node;
- default RF=1 and minISR=1;
- a single-partition topic named `quickstart.events`;
- a JMX exporter on `:9404` and a protocol exporter on `:9308`.

`plaintext` has no transport encryption, authentication, or ACLs, so use it only for local development or a trusted, isolated network.


### 2. Bring the Node Under Management

If this host has not yet been initialized by NODE, run check mode first:

```bash
./node.yml --check -l kf-dev
```

After reviewing the results and getting approval, bring the node under management:

```bash
./node.yml -l kf-dev
```

You can skip this step for a node that Pigsty already manages and whose package repository and time synchronization are healthy. For full NODE preparation and day-to-day management, see [Node Administration](/docs/node/admin).


### 3. Deploy Kafka

Run a check against the full cluster first:

```bash
./kafka.yml --check -l kf-dev
```

Confirm the target is exactly the full membership of `kf-dev`, review the data path, packages, ports, and configuration changes, then run:

```bash
./kafka.yml -l kf-dev
```

The role installs Java and `kafka-stack`, generates a random identity and bootstrap manifest, formats the KRaft storage, starts the service, creates the topics, and registers the monitoring targets.


### 4. Verify the Service and Quorum

Log in to the Kafka node and check the services:

```bash
systemctl is-active kafka kafka_exporter
journalctl -u kafka --since '-10 min' --no-pager
```

Run the role's own health check:

```bash
sudo -u kafka /usr/local/bin/pigsty-kafka-health cluster \
  --bootstrap-server 10.10.10.10:9092 \
  --command-config /etc/kafka/admin.properties
```

The returned JSON should contain `"healthy": true`. Continue by checking the dynamic quorum and the topic:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server 10.10.10.10:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --status

/opt/kafka/bin/kafka-topics.sh \
  --bootstrap-server 10.10.10.10:9092 \
  --command-config /etc/kafka/admin.properties \
  --describe --topic quickstart.events
```

You should see a valid `LeaderId`, a `CurrentVoters` list that includes this node, and `quickstart.events` with RF=1 and ISR=1.


### 5. Produce and Consume Messages

Start a console producer:

```bash
/opt/kafka/bin/kafka-console-producer.sh \
  --bootstrap-server 10.10.10.10:9092 \
  --command-config /etc/kafka/admin.properties \
  --topic quickstart.events
```

Type a few lines of messages, then press `Ctrl-D` to finish. Consume them from another terminal:

```bash
/opt/kafka/bin/kafka-console-consumer.sh \
  --bootstrap-server 10.10.10.10:9092 \
  --command-config /etc/kafka/admin.properties \
  --topic quickstart.events \
  --group quickstart.demo \
  --from-beginning
```

At this point, the single-node deployment, topic convergence, and message read/write are complete. For further status checks, see [Day-to-Day Administration](/docs/kafka/admin).


--------

## Part 2: Deploy a Three-Node Production Baseline

The three-node example is a brand-new `kf-main` cluster built from three combined nodes. It can tolerate the loss of one controller; business topics use RF=3/minISR=2, and the `scram` production security profile is enabled.


### 1. Define the Secured Cluster and Its Resources

Add the following group to your existing `all.children`:

```yaml
all:
  children:
    # keep your existing groups

    kf-main:
      hosts:
        10.10.10.11: { kafka_seq: 1 }
        10.10.10.12: { kafka_seq: 2 }
        10.10.10.13: { kafka_seq: 3 }
      vars:
        kafka_cluster: kf-main
        kafka_data: /data/kafka
        kafka_heap_opts: '-Xms4G -Xmx4G'
        kafka_security: scram

        kafka_parameters:
          num.partitions: 12
          num.network.threads: 6
          num.io.threads: 16
          log.retention.hours: 168
          log.segment.bytes: 1073741824

        kafka_users:
          - name: quickstart-app
            password: "{{ vault_kafka_quickstart_password }}"
            acls:
              - resource: topic
                name: quickstart.
                pattern: prefixed
                operations: [Read, Write, Describe]
              - resource: group
                name: quickstart.
                pattern: prefixed
                operations: [Read]
              - resource: cluster
                name: kafka-cluster
                operations: [Describe, IdempotentWrite]
            quota:
              producer_byte_rate: 10485760
              consumer_byte_rate: 20971520

        kafka_topics:
          - name: quickstart.events
            partitions: 12
            replication_factor: 3
            config:
              min.insync.replicas: 2
              cleanup.policy: delete
              retention.ms: 604800000
```

`vault_kafka_quickstart_password` must be supplied by your existing Ansible Vault, KMS, or another secret-injection mechanism, and must be at least 12 characters. Never commit a real password directly to Git, logs, or tickets.

The key semantics of this configuration:

- all three nodes omit `kafka_role`, so they consistently use `combined`;
- the new cluster is bootstrapped directly as dynamic KRaft;
- `scram` enables node TLS, controller mTLS, SCRAM-SHA-512, ACLs, and deny-by-default all at once;
- with three brokers, the initial replication policy is automatically derived as RF=3 and minISR=2;
- `quickstart.events` is created explicitly with 12 partitions and 3 replicas;
- `quickstart-app` can read and write `quickstart.*` topics, read `quickstart.*` groups, and use the idempotent producer;
- at most two brokers run `kafka_exporter`, while all three Kafka JVMs run the JMX exporter.

If the three brokers truly reside in different failure domains, you may add `kafka_rack: az-a/az-b/az-c` to **all** nodes respectively. Do not use fictitious rack labels to manufacture a disaster-recovery guarantee that does not exist; for the detailed rules, see [Cluster Configuration: Rack](/docs/kafka/config#storage-heap-and-rack).


### 2. Bring Under Management and Deploy

If the nodes are not yet under management:

```bash
./node.yml --check -l kf-main
./node.yml -l kf-main
```

When deploying Kafka, you must select all three members:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

You cannot use `-l 10.10.10.11` alone: every selected cluster must be complete, and a partial selection is refused. Selecting several complete clusters at once (`-l kf-dev,kf-main`) or running bare against all clusters is allowed.


### 3. Verify the Health of All Three Nodes

From the admin node, check the three Kafka services:

```bash
ansible kf-main -b -m command -a 'systemctl is-active kafka'
```

Run the full health check on any broker:

```bash
sudo -u kafka /usr/local/bin/pigsty-kafka-health cluster \
  --bootstrap-server 10.10.10.11:9092 \
  --command-config /etc/kafka/admin.properties
```

Query the quorum and the topic:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server 10.10.10.11:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --status

/opt/kafka/bin/kafka-topics.sh \
  --bootstrap-server 10.10.10.11:9092 \
  --command-config /etc/kafka/admin.properties \
  --describe --topic quickstart.events
```

Before launch, you should see one active controller, three current voters, and three available brokers; every `quickstart.events` partition has three replicas with ISR=3, and there are no offline, under-replicated, or under-min-ISR partitions.


--------

## Part 3: Connect Application Clients

### 1. Distribute the CA Public Certificate

Securely copy the public CA certificate from the admin node to the application host:

```text
files/pki/ca/ca.crt  ->  /etc/kafka-client/pigsty-ca.crt
```

`ca.crt` is a public certificate that is safe to distribute. **Never copy, expose, or distribute `files/pki/ca/ca.key`.** On the application host, the CA file should be owned by root and set read-only. An application host already managed by Pigsty needs no copy: the NODE module has installed the same CA at `/etc/pki/ca.crt`, which the client can reference directly.


### 2. Create the Client Configuration

On the application host, create `/etc/kafka-client/client.properties`:

```properties
bootstrap.servers=10.10.10.11:9092,10.10.10.12:9092,10.10.10.13:9092

security.protocol=SASL_SSL
sasl.mechanism=SCRAM-SHA-512
sasl.jaas.config=org.apache.kafka.common.security.scram.ScramLoginModule required username="quickstart-app" password="<secret-from-vault>";

ssl.truststore.type=PEM
ssl.truststore.location=/etc/kafka-client/pigsty-ca.crt
ssl.endpoint.identification.algorithm=https
```

The Kafka Java client supports `SASL_SSL` + SCRAM and a PEM truststore. A real application should inject the password from a secret manager at runtime rather than committing a file containing the password to the repository. For the complete set of fields, see the Kafka 4.3 [SASL/SCRAM](https://kafka.apache.org/43/security/authentication-using-sasl/) and [producer configuration](https://kafka.apache.org/43/generated/producer_config.html) references.


### 3. Why Applications Should Connect Directly to Multiple Brokers

The Kafka client is itself cluster-aware. `bootstrap.servers` is used only to obtain the initial metadata; once connected, the client uses that metadata to connect directly to the leader broker of each partition and refreshes its routing whenever a leader changes. The standard practice in production is therefore to:

- configure at least two, and usually three, broker addresses in `bootstrap.servers`, located in different failure domains;
- allow the application to reach `9092` on **all brokers**, and ensure that each broker's advertised `inventory_hostname` is resolvable and routable;
- let producers and consumers rely on the Kafka client's own retry, metadata-refresh, idempotence, and consumer-group protocols;
- not place HAProxy, a Keepalived VIP, a layer-4 load balancer, or a layer-7 reverse proxy in front of the Kafka data plane.

A single VIP or LB can neither substitute for the broker addresses in Kafka's metadata nor transparently forward a connection to the correct partition leader; it only adds complexity around long-lived connection state, fault localization, and capacity planning. If your platform must provide a unified discovery entry point, a DNS name or TCP load balancer can serve as a bootstrap-only entry point, but each broker's `advertised.listeners` must still return an address the client can reach directly, and the application must not be permitted to reach only the LB. Scenarios that span NAT, the public internet, Kubernetes, or multiple networks require a dedicated externally reachable address and an additional listener per broker; the current module fixes the inventory address as `advertised.listeners` and does not support such mappings.


### 4. Authenticate and Read/Write with the Application Identity

On an application host with the Kafka 4.3 CLI installed, run:

```bash
kafka-console-producer.sh \
  --bootstrap-server 10.10.10.11:9092,10.10.10.12:9092,10.10.10.13:9092 \
  --command-config /etc/kafka-client/client.properties \
  --topic quickstart.events
```

When consuming, use a group prefix permitted by the ACL:

```bash
kafka-console-consumer.sh \
  --bootstrap-server 10.10.10.11:9092,10.10.10.12:9092,10.10.10.13:9092 \
  --command-config /etc/kafka-client/client.properties \
  --topic quickstart.events \
  --group quickstart.demo \
  --from-beginning
```

A production application should also explicitly review its client semantics:

| Client Setting | Suggested Starting Point | Notes |
|:---|:---|:---|
| `acks` | `all` | Pairs with RF=3/minISR=2 to avoid waiting on the leader alone |
| `enable.idempotence` | `true` | Reduces the risk of duplicate writes from retries; requires the `IdempotentWrite` ACL |
| `group.id` | A distinct, stable name | Do not reuse a group across different business or consumption semantics |
| Offset commit | Choose per workload | Auto-commit is simple; manual commit ties commits to business processing results more reliably |
| `client.id` | An identifiable instance name | Helps with logs, quotas, and client diagnostics |
{.full-width}

Client-side `acks`, retries, idempotence, batching, compression, and offset strategy are application configuration and should not be written into the broker's `kafka_parameters`.


--------

## Part 4: Change Core Parameters

Always express persistent intent for Kafka by editing `pigsty.yml`, never by editing `/etc/kafka/server.properties` directly. Common intents map as follows:

| Goal | Parameter | Behavior |
|:---|:---|:---|
| Adjust the JVM heap | `kafka_heap_opts` | A static change; a healthy cluster enters a strict one-node-at-a-time rolling restart |
| Adjust threads, retention, segments | `kafka_parameters` | Broker parameters not owned by the role; static changes require a rolling restart |
| Adjust topic partitions/retention | `kafka_topics` | Online resource convergence; partitions can only increase, never decrease |
| Adjust application passwords/ACLs/quotas | `kafka_users` | Online resource convergence; passwords come from a secret system |
| Declare failure domains | `kafka_rack` | All-or-nothing across every broker-capable node; a change triggers a rolling restart but does not relocate data |
| Choose a security profile | `kafka_security` | Decided only when bootstrapping a new cluster; it cannot be switched online by an ordinary rerun |
{.full-width}


### Example: Adjust the Heap and Broker Default Parameters

Suppose that after load testing you decide to raise the heap to 6G, increase the thread counts, and change the default retention for new topics to 72 hours:

```yaml
kf-main:
  vars:
    kafka_cluster: kf-main
    kafka_heap_opts: '-Xms6G -Xmx6G'
    kafka_parameters:
      num.partitions: 12
      num.network.threads: 8
      num.io.threads: 24
      log.retention.hours: 72
      log.segment.bytes: 1073741824
```

Do not copy 6G/8/24 verbatim; these values must be determined by load-testing against your CPU, memory, connection count, message size, partition count, disk, and page cache.


### Example: Add Partitions and Shorten Topic Retention

Increase `quickstart.events` from 12 partitions to 24 and change the retention to three days:

```yaml
kafka_topics:
  - name: quickstart.events
    partitions: 24
    replication_factor: 3
    config:
      min.insync.replicas: 2
      cleanup.policy: delete
      retention.ms: 259200000
```

Partitions cannot be reduced. When `replication_factor` differs from what is live, the role refuses ordinary convergence and requires an explicit partition reassignment; it never relocates existing replicas automatically.


### Apply the Change

Whether you change static parameters or dynamic resources, run the full state machine:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

Do not run `-t kafka_config` alone. The role decides automatically: a static change triggers a strict node-by-node rolling restart; when only dynamic resources such as topics or users change, Kafka is not restarted.

The following keys belong to the role itself and must not be placed in `kafka_parameters`:

```yaml
kafka_parameters:
  min.insync.replicas: 2          # wrong: owned by the role
  default.replication.factor: 3   # wrong: owned by the role
  listeners: ...                  # wrong: owned by the role
```

For all 15 public parameters, their defaults, and the reserved keys, see the [Parameter Reference](/docs/kafka/param).


--------

## Part 5: Key Pre-Launch Checks

### Topology and Data Safety

- Production uses at least three brokers and an odd number of controllers; for critical or large clusters, consider a separated 3-controller + N-broker topology;
- topic RF, minISR, and the producer's `acks` form a consistent failure model;
- `kafka_rack` expresses only real failure domains, and replica placement has been verified;
- data-disk capacity, throughput, latency, retention, peak write rate, and recovery time have been load-tested;
- there is an explicit reassignment plan for after a new broker joins, since existing topics' RF is not raised automatically;
- the procedures for Kafka data backup/rebuild and disaster recovery are defined, and [failed-node replacement](/docs/kafka/admin#replace-failed-node) and member retirement have been rehearsed.


### Security and Network

- a new production cluster uses `kafka_security: scram` from bootstrap onward;
- application passwords are injected by Vault/KMS/a secret manager and never reach Git or logs;
- only the CA public certificate is distributed to clients, never the CA private key;
- clients can resolve and reach the `inventory_hostname` of every broker directly;
- `9092/9093` are open only to the principals that need them, and `9308/9404` only to the monitoring network;
- a review checklist for application principals, topic/group/cluster ACLs, and quotas is in place;
- a [protected rotation](/docs/kafka/playbook#protected-rotation) of internal credentials and certificates is scheduled.


### Operations and Monitoring

- `/usr/local/bin/pigsty-kafka-health cluster` reports healthy;
- the dynamic quorum has exactly one leader, and every expected controller is in the current voters;
- there are no offline, under-replicated, or under-min-ISR partitions;
- produce/consume verification is done over the real application network with a real principal;
- the [Kafka Overview](https://demo.pigsty.cc/ui/d/kafka-overview), [Kafka Instance](https://demo.pigsty.cc/ui/d/kafka-instance), [Kafka Topic](https://demo.pigsty.cc/ui/d/kafka-topic), and [Kafka Consumer](https://demo.pigsty.cc/ui/d/kafka-consumer) dashboards show healthy data;
- alert routing, log search, capacity thresholds, on-call responsibilities, and rollback conditions are confirmed;
- upgrades, feature-level changes, topic deletion, user deletion, and cluster teardown each have a separate approval process.

For detailed alerts and PromQL, see [Monitoring and Alerting](/docs/kafka/monitor); for metric semantics, see [Metric Definitions](/docs/kafka/metric).


--------

## Documentation Index and Next Steps

We recommend continuing along the following path:

| What You Want to Do Next | Document |
|:---|:---|
| Plan a combined or separated controller/broker topology, network, rack, storage, and security | [Cluster Configuration](/docs/kafka/config) |
| Look up the 15 public parameters, their defaults, schema, and reserved keys | [Parameter Reference](/docs/kafka/param) |
| Look up quorum, topic, user, message, consumer-group, and scaling operations | [Day-to-Day Administration](/docs/kafka/admin) |
| Understand the `kafka.yml` lifecycle, strict rolling restart, rotation, and cluster teardown | [Playbook](/docs/kafka/playbook) |
| Use the dashboards, alerts, PromQL, and VictoriaLogs | [Monitoring and Alerting](/docs/kafka/monitor) |
| Understand every JMX/exporter/recording-rule metric | [Metric Definitions](/docs/kafka/metric) |
| Troubleshoot identity conflicts, connectivity, SCRAM, exporters, lag, and scaling issues | [FAQ](/docs/kafka/faq) |
| Return to the overview of module capabilities, default ports, and boundaries | [Kafka Module Home](/docs/kafka) |
{.full-width}

One recommended reading path is: **Quick Start → Cluster Configuration → Parameter Reference → Day-to-Day Administration → Playbook → Monitoring and Alerting → FAQ**.
