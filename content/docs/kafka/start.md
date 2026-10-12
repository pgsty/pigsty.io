---
title: Quick Start
weight: 4901
description: Deploy single-node and 3-node Kafka clusters from scratch, with secure access, parameter tuning, and launch checklist.
icon: fa-solid fa-rocket
module: [KAFKA]
categories: [Tutorial]
aliases: [/docs/pilot/kafka/start]
---


First build a single-node cluster, create a topic, and read and write messages. Then build a separate secure three-node cluster with users, ACLs, quotas, and production topics. Finally, change parameters, connect clients, verify monitoring, and perform pre-launch checks.

> [!NOTE] Tutorial Scope
> Start before deploying Kafka. You need a working Pigsty administration node with [`INFRA`](/docs/infra) installed. Otherwise, complete [quick installation](/docs/setup/install) first.
> Target nodes need SSH/sudo access and must be manageable by [`NODE`](/docs/node).


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

> [!WARNING] The Two Examples Are Separate Clusters
> `kf-dev` and `kf-main` are separate new clusters. You can also expand `kf-dev` to three controllers in place.
> Declare two combined nodes and rerun `./kafka.yml -l kf-dev`. Each new node formats, catches up as an observer, and promotes with `add-controller`, one at a time.
> A fresh cluster is simpler for this demonstration. See [Expand Cluster](/docs/kafka/admin#expand-cluster).


--------

## Before You Begin

Unless stated otherwise, run commands from the project directory on the Pigsty administration node:

```bash
cd ~/pigsty
```

Before you start, confirm that:

- Confirm `pigsty.yml` describes this environment. Back it up and review existing contents.
- Ensure all members and clients can resolve and route directly to each `inventory_hostname`.
- Synchronize administration and Kafka node clocks.
- Check `9092`, `9093`, `9308`, and `9404` for conflicts.
- Use `/data/kafka` exclusively for Kafka data.
- Select exactly all members of one cluster with `-l` on every `kafka.yml` run.
- Before changes, run `--check`, review results, and obtain change approval.

Retain the `all.children` inventory structure. Merge these groups into `pigsty.yml`. Do not overwrite existing `all.vars`, `infra`, `etcd`, `pgsql`, or other configuration.


--------

## Part 1: Deploy a Single-Node Kafka

### 1. Define the Cluster

Add `kf-dev` under `all.children`. Omitting `kafka_role` selects `combined`, so this node runs broker and controller:

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

`plaintext` provides no encryption, authentication, or ACLs. Use it only for local development or trusted isolated networks.


### 2. Bring the Node Under Management

If this host has not yet been initialized by NODE, run check mode first:

```bash
./node.yml --check -l kf-dev
```

After reviewing the results and getting approval, bring the node under management:

```bash
./node.yml -l kf-dev
```

Skip this step if Pigsty already manages the node and its repository access and time synchronization work. See [Node Administration](/docs/node/admin) for preparation and operations.


### 3. Deploy Kafka

Run a check against the full cluster first:

```bash
./kafka.yml --check -l kf-dev
```

Verify that the target includes exactly every `kf-dev` member. Review data paths, packages, ports, and configuration changes, then run:

```bash
./kafka.yml -l kf-dev
```

The role installs Java and `kafka-stack`, generates random identity and manifest, formats KRaft storage, starts Kafka, creates topics, and registers monitoring.


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

JSON should include `"healthy": true`. Then check quorum and the topic:

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

Expect a valid `LeaderId`, this node in `CurrentVoters`, and `quickstart.events` with RF=1 and ISR=1.


### 5. Produce and Consume Messages

Start a console producer:

```bash
/opt/kafka/bin/kafka-console-producer.sh \
  --bootstrap-server 10.10.10.10:9092 \
  --command-config /etc/kafka/admin.properties \
  --topic quickstart.events
```

Enter several messages and press `Ctrl-D`. Read them from another terminal:

```bash
/opt/kafka/bin/kafka-console-consumer.sh \
  --bootstrap-server 10.10.10.10:9092 \
  --command-config /etc/kafka/admin.properties \
  --topic quickstart.events \
  --group quickstart.demo \
  --from-beginning
```

Single-node deployment, topic convergence, and message read/write are complete. See [Day-to-Day Administration](/docs/kafka/admin) for more checks.


--------

## Part 2: Deploy a Three-Node Production Baseline

The new `kf-main` cluster has three combined nodes and tolerates one controller failure. Business topics use RF=3/minISR=2. Security uses `scram`.


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

Supply `vault_kafka_quickstart_password` through Ansible Vault, KMS, or another secret injection method. It must contain at least 12 characters. Never put real passwords in Git, logs, or tickets.

This configuration has these effects:

- All nodes omit `kafka_role` and use `combined`.
- Bootstrap uses dynamic KRaft directly.
- `scram` enables node TLS, controller mTLS, SCRAM-SHA-512, ACLs, and default denial together.
- Three brokers set initial RF=3 and minISR=2.
- `quickstart.events` explicitly has 12 partitions and three replicas.
- `quickstart-app` can read/write `quickstart.*` topics, read `quickstart.*` groups, and use idempotent production.
- At most two brokers run `kafka_exporter`. All three JVMs run JMX Exporter.

If brokers occupy separate failure domains, set `kafka_rack: az-a/az-b/az-c` respectively on **all** nodes. Fictitious labels cannot provide disaster protection. See [Rack configuration](/docs/kafka/config#storage-heap-and-rack).


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

Do not select only `-l 10.10.10.11`. Partial clusters are rejected. You can select several complete clusters with `-l kf-dev,kf-main`, or all clusters without a limit.


### 3. Verify the Health of All Three Nodes

From the administration node, check all three Kafka services:

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

Before launch, verify one active controller, three voters, and three available brokers. Every `quickstart.events` partition must have three replicas and ISR=3. No partitions should be offline, under-replicated, or under-min-ISR.


--------

## Part 3: Connect Application Clients

### 1. Distribute the CA Public Certificate

Securely copy the public CA certificate from the admin node to the application host:

```text
files/pki/ca/ca.crt  ->  /etc/kafka-client/pigsty-ca.crt
```

`ca.crt` is public and safe to distribute. **Never copy, expose, or distribute `files/pki/ca/ca.key`.** On application hosts, make the CA file root-owned and read-only. Pigsty-managed hosts already have it at `/etc/pki/ca.crt`; clients can use that path directly.


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

Kafka Java clients support `SASL_SSL`, SCRAM, and PEM truststores. Applications should inject passwords from secret management at runtime. Do not commit password files to repositories. See Kafka 4.3 [SASL/SCRAM](https://kafka.apache.org/43/security/authentication-using-sasl/) and [producer settings](https://kafka.apache.org/43/generated/producer_config.html) for all fields.


### 3. Why Applications Should Connect Directly to Multiple Brokers

Clients use `bootstrap.servers` only for initial metadata. They then connect directly to partition leaders and refresh routing after leadership changes. In production:

- Set at least two, usually three, `bootstrap.servers` addresses in different failure domains.
- Permit application access to `9092` on **all brokers**. Ensure each advertised `inventory_hostname` resolves and routes correctly.
- Use client retry, metadata refresh, idempotence, and consumer-group protocols.
- Do not put HAProxy, Keepalived VIP, L4 load balancers, or L7 reverse proxies in the Kafka data plane.

A VIP or load balancer cannot replace metadata broker addresses or transparently select partition leaders. It adds connection-state, diagnostic, and capacity-planning complexity. A DNS name or TCP load balancer can provide bootstrap discovery if required. However, every `advertised.listeners` address must remain directly reachable, not only the load balancer. NAT, public internet, Kubernetes, and multiple networks need per-broker external addresses and additional listeners. The module fixes advertised addresses to inventory addresses and does not support these mappings.


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

Explicitly review these production client settings:

| Client Setting | Suggested Starting Point | Notes |
|:---|:---|:---|
| `acks` | `all` | Pairs with RF=3/minISR=2 to avoid waiting on the leader alone |
| `enable.idempotence` | `true` | Reduces the risk of duplicate writes from retries; requires the `IdempotentWrite` ACL |
| `group.id` | A distinct, stable name | Do not reuse a group across different business or consumption semantics |
| Offset commit | Choose per workload | Auto-commit is simple; manual commit ties commits to business processing results more reliably |
| `client.id` | An identifiable instance name | Helps with logs, quotas, and client diagnostics |
{.full-width}

Set `acks`, retries, idempotence, batching, compression, and offset strategy in applications. Do not put them in broker `kafka_parameters`.


--------

## Part 4: Change Core Parameters

Declare persistent changes in `pigsty.yml`. Never edit `/etc/kafka/server.properties` directly. Use these parameters:

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

This example raises heap to 6G, increases threads, and sets new-topic default retention to 72 hours after load testing:

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

Do not copy 6G/8/24 without testing. Choose values from CPU, memory, connections, message size, partitions, disk, and page-cache measurements.


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

Partitions cannot decrease. If `replication_factor` differs from live state, ordinary convergence fails and requires explicit reassignment. The role never relocates replicas automatically.


### Apply the Change

Whether you change static parameters or dynamic resources, run the full state machine:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

Do not run only `-t kafka_config`. The role rolls nodes for static changes. Topic or user changes alone do not restart Kafka.

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

- Use at least three production brokers and an odd controller count. Consider three separate controllers plus N brokers for critical or large clusters.
- Align topic RF, minISR, and producer `acks` with one failure model.
- Set `kafka_rack` only for real failure domains and verify replica placement.
- Load-test capacity, throughput, latency, retention, peak writes, and recovery time.
- Plan reassignment after broker admission. Existing topic RF does not increase automatically.
- Define backup/rebuild and disaster recovery procedures. Rehearse [failed-node replacement](/docs/kafka/admin#replace-failed-node) and retirement.


### Security and Network

- Bootstrap new production clusters with `kafka_security: scram`.
- Inject passwords through Vault, KMS, or secret management. Keep them out of Git and logs.
- Distribute only the public CA certificate, never its private key.
- Verify direct client resolution and routing to every `inventory_hostname`.
- Restrict `9092/9093` to authorized participants and `9308/9404` to monitoring.
- Review principals, topic/group/cluster ACLs, and quotas through a checklist.
- Schedule [protected rotation](/docs/kafka/playbook#protected-rotation) of internal credentials and certificates.


### Operations and Monitoring

- Verify `/usr/local/bin/pigsty-kafka-health cluster` reports health.
- Verify exactly one quorum leader and all expected controllers in current voters.
- Confirm no offline, under-replicated, or under-min-ISR partitions.
- Test production and consumption from the real application network with a real principal.
- Check healthy data in [Kafka Overview](https://demo.pigsty.cc/ui/d/kafka-overview), [Kafka Instance](https://demo.pigsty.cc/ui/d/kafka-instance), [Kafka Topic](https://demo.pigsty.cc/ui/d/kafka-topic), and [Kafka Consumer](https://demo.pigsty.cc/ui/d/kafka-consumer).
- Confirm alert routing, log search, capacity thresholds, on-call duties, and rollback conditions.
- Define separate approvals for upgrades, feature changes, topic/user deletion, and cluster teardown.

For detailed alerts and PromQL, see [Monitoring and Alerting](/docs/kafka/monitor); for metric semantics, see [Metric Definitions](/docs/kafka/metric).


--------

## Documentation Index and Next Steps

Use these pages for the next task:

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

Recommended reading order: **Quick Start → Cluster Configuration → Parameter Reference → Day-to-Day Administration → Playbook → Monitoring and Alerting → FAQ**.
