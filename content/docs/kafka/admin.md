---
title: Administration
weight: 4904
description: Kafka cluster health, declarative resources, messages, consumer groups, and topology changes.
icon: fa-solid fa-wrench
module: [KAFKA]
categories: [Task]
aliases: [/docs/pilot/kafka/admin]
---


The KAFKA module installs Kafka under `/opt/kafka`, manages the service with Systemd, and keeps its persistent intent in `pigsty.yml`. The files generated on the nodes are not meant to be edited by hand.

All of the Kafka CLI examples below use the role-generated `/etc/kafka/admin.properties`. Even when the current profile is `plaintext`, keep `--command-config` on every command: that way the command structure stays the same when you switch the admin channel to `scram`. Replace `<broker>:9092` with a reachable `inventory_hostname` and port.


--------

## Status Check

On any Kafka node, check the service and its recent logs:

```bash
systemctl status kafka
systemctl is-enabled kafka
journalctl -u kafka --since '-30 min' --no-pager
```

The protocol exporter runs on at most two broker-capable nodes, the ones with the lowest `kafka_seq`. On the selected nodes, also check:

```bash
systemctl status kafka_exporter
journalctl -u kafka_exporter --since '-30 min' --no-pager
```

Inspect the listeners and metrics endpoints:

```bash
ss -lntp | grep -E ':9092|:9093|:9308|:9404'
curl -fsS http://<kafka-ip>:9404/metrics | grep -E '^(jmx_scrape_error|kafka_server_raft_state|kafka_server_broker_messages_in_total)'
curl -fsS http://<exporter-ip>:9308/metrics | grep -E '^(kafka_brokers|kafka_topic_partitions)'
```

`kafka_up` and `kafka_exporter_up` are recording metrics computed on the VictoriaMetrics side; they may not appear on the raw endpoints. A healthy JMX endpoint should include `jmx_scrape_error 0.0`, JVM metrics, and the `kafka_` metrics that match the node's role.


--------

## Role-Owned Health Check

The role's lifecycle gates do not rely on JMX. Instead, they use the same admin channel to check the dynamic quorum, offline partitions, under-replicated partitions, and under-min-ISR partitions:

```bash
sudo -u kafka /usr/local/bin/pigsty-kafka-health cluster \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties
```

The gate passes only when the returned JSON reports `healthy: true`. This is fine for read-only diagnostics, but it is not a substitute for end-to-end business validation.


--------

## KRaft Quorum Status

Query the dynamic quorum from any available broker:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --status
```

Focus on:

- `LeaderId` is present and points at the expected controller;
- `CurrentVoters` matches the live dynamic quorum;
- `MaxFollowerLag` and `MaxFollowerLagTimeMs` are not growing steadily;
- The dashboard shows exactly one active controller.

To confirm the dynamic quorum (KIP-853) feature level, run `/opt/kafka/bin/kafka-features.sh ... describe` and inspect `kraft.version`.

Inspect controller replication status:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --replication
```

If there is no leader, a member lags persistently, or the voter set differs from what you expect, stop all topology changes, preserve the logs, manifest, and `meta.properties`, and then analyze the network, node/directory identity, and any explicit controller membership operations. Do not force-rewrite the quorum by re-running an ordinary manifest.


--------

## Declarative Topics

Production topics should be declared in [`kafka_topics`](/docs/kafka/param#kafka_topics) in `pigsty.yml`:

```yaml
kafka_topics:
  - name: orders
    partitions: 12
    replication_factor: 3
    config:
      min.insync.replicas: 2
      retention.ms: 604800000
```

Converge against the full cluster target:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

The role creates topics idempotently, only adds partitions, and only changes the config keys you declared. A change in replication factor fails and demands an explicit partition reassignment; removing an entry from the manifest does not delete the topic.

Read-only topic inspection:

```bash
/opt/kafka/bin/kafka-topics.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --list

/opt/kafka/bin/kafka-topics.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --describe --topic orders
```

Temporary or externally managed topics can be created with the Kafka CLI, but they are not written back to `pigsty.yml`. Never let both declarative management and manual management own the same topic. Deleting a topic is a deletion of business data: it requires its own approval, exact-name confirmation, and a recovery plan, so this document does not provide a general delete command.


--------

## Declarative Users, ACLs, and Quotas

When `kafka_security: scram`, application identities should be managed through [`kafka_users`](/docs/kafka/param#kafka_users):

```yaml
kafka_users:
  - name: order-service
    password: "{{ vault_kafka_order_password }}"
    acls:
      - resource: topic
        name: orders
        operations: [Read, Write, Describe]
      - resource: group
        name: order-worker
        operations: [Read]
    quota:
      producer_byte_rate: 10485760
      consumer_byte_rate: 20971520
```

The full playbook idempotently converges the password, that user's ACL set, and the quota fields you explicitly provide. Do not commit passwords in plaintext to the repository or emit them to logs. Removing a user entry does not automatically delete the principal or its credentials; deleting or fully revoking access requires a separate, audited process.


--------

## Message Read/Write Validation

Use a test topic for end-to-end validation. The console producer and consumer use the same client config file:

```bash
/opt/kafka/bin/kafka-console-producer.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --topic ops-smoke
```

Consume in another terminal:

```bash
/opt/kafka/bin/kafka-console-consumer.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --topic ops-smoke \
  --from-beginning \
  --group ops-smoke-check
```

Production acceptance should run from the real client network and cover DNS/`advertised.listeners`, certificate validation, ACLs, producer ACKs, consumer commits, and end-to-end latency, not just the broker's local loopback path.


--------

## Consumer Groups

List and describe consumer groups:

```bash
/opt/kafka/bin/kafka-consumer-groups.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --list

/opt/kafka/bin/kafka-consumer-groups.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --describe --group order-worker
```

Judge lag against consumption rate and your business SLO: a brief backlog may just be batch behavior, whereas a backlog that keeps growing while the consumption rate stays below the production rate means the consumer cannot catch up. Resetting offsets can cause reprocessing or skipped messages, so it requires separate approval, exact group/topic confirmation, and a replay plan.


--------

## Persistent Configuration Changes

After editing `pigsty.yml`, always run against the full cluster:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

The role picks its path automatically, based on live health and the static fingerprint:

- Cluster unhealthy or stopped: start only the stopped controllers, and once the quorum recovers and catches up, start the brokers; if static changes also exist, the members that were already online then enter a strict rolling restart;
- Adding pure brokers to a healthy cluster: format, start, and confirm registration one node at a time;
- Static changes on a healthy cluster: a strict node-by-node rolling restart, applying — before and after each node restart — the controller zero-lag/recently-caught-up, quorum, offline-partition, under-min-ISR, and ISR-catch-up gates;
- No static changes: Kafka is not restarted.

Do not bypass the full state machine with `-t kafka_config`. Dynamic topic/user/ACL/quota convergence lives in the `kafka_provision` resource-convergence stage; whether a static change triggers a restart is the role's decision.


--------

## Scaling and Topology Changes

### Adding Pure Brokers

A healthy cluster can take on new `kafka_role: broker` nodes. Assign each new node a `kafka_seq` that has never collided, update the full inventory, and then still target the full cluster:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

The role admits each newly formatted pure broker one at a time and verifies that the broker is registered and not fenced. You cannot `-l` only the new nodes; nor can you join a new `combined` or `controller` node as if it were an ordinary broker.

Adding a broker does not migrate existing partitions. You must separately generate, review, and monitor a `kafka-reassign-partitions.sh` plan, control the disk/network load, and prepare a rollback. "The service is registered" is not the same as "scaling is complete."

The replication policy does not scale up with the broker count, either. In particular, Kafka 4.3's `default.replication.factor` cannot be changed dynamically: after scaling from 1 broker to 3, it remains the RF=1 set at initial build, and any future topic that does not specify RF explicitly is still created with RF=1. First complete the reassignment of existing partitions, then plan for controller high availability or a maintenance window, and finally let the new static default take effect through a safe full-cluster rolling restart. Do not bypass the downtime gates just to change a default.


### Adding, Replacing, or Removing Controllers

The cluster is a dynamic quorum from the start, but controller membership is still an explicit Kafka administrative action:

1. Verify the current leader, voters, directory IDs, and majority;
2. Explicitly format the new controller against the existing cluster ID;
3. Start it and confirm it has caught up;
4. Run and verify `add-controller`;
5. To remove one, run the matching `remove-controller`, confirm the new majority, and only then decommission the node.

An ordinary inventory change does not perform these steps automatically; the role rejects any unformatted controller that was not registered in the initial manifest. Use Kafka's official membership-change procedure and a rehearsed, standalone runbook for this operation.


### Changing Addresses or Ports

The role always uses `inventory_hostname` as the broker's advertised address and the controller's bootstrap address. Changing an inventory address, `kafka_port`, or `kafka_controller_port` affects client metadata, broker communication, or the quorum, and counts as a high-risk static change; you must check DNS, certificate SANs, routing, firewalls, bootstrap addresses, monitoring targets, and all cluster members in lockstep.


--------

## Rotating Security Material

A formatted, healthy `scram` cluster supports two mutually exclusive protected actions: internal credential rotation and certificate rotation. Both require an exact full-cluster target and a matching `kafka_rotate_confirm` confirmation string, and it is recommended to run `--check` first. Certificates are re-issued by the same Pigsty CA, old and new certificates trust each other, and the rotation takes effect node by node through a strict rolling restart.

For the exact commands and failure semantics, see [Playbook: Protected Rotation](/docs/kafka/playbook#protected-rotation). The security profile itself is a bootstrap-only property; these actions do not imply support for online migration from `plaintext` to `scram`.


--------

## Data Protection and Recovery

Kafka's data protection relies on replicas across failure domains, correct min-ISR, producer ACKs, and a rehearsed recovery procedure. The current role does not provide Kafka data backup, automatic broker drain, KRaft recovery orchestration, or cross-region disaster recovery.

When a disk or node fails:

1. First look at the Kafka Overview/Node dashboards, the quorum, ISR, offline partitions, and under-min-ISR partitions;
2. Preserve the evidence: `journalctl -u kafka`, node metrics, the manifest, `server.properties`, and `meta.properties`;
3. Confirm the node's role, `node.id`, cluster ID, directory ID, and the availability of the remaining replicas;
4. Do not run `kafka-rm.yml` or delete `meta.properties` until you have a clear recovery/replacement plan;
5. Use a standalone runbook for reformatting, identity replacement, reassignment, or controller membership operations.


--------

## Log Diagnostics

```bash
journalctl -u kafka -f
journalctl -u kafka_exporter -f
journalctl SYSLOG_IDENTIFIER=kafka --since today
journalctl SYSLOG_IDENTIFIER=kafka_exporter --since today
```

VictoriaLogs/Grafana queries:

```text
job:syslog unit:kafka
job:syslog app:kafka
job:syslog unit:kafka_exporter
```

The usual diagnostic order is: service logs → listening ports → admin-channel health → dynamic quorum → broker/partition/ISR → client addresses and certificates/ACLs → consumer lag. For the detailed panels and their alert mappings, see [Monitoring & Alerting](/docs/kafka/monitor).
