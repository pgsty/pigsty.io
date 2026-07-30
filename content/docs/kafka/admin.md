---
title: Administration
weight: 4904
description: Kafka status checks, topic and user management, config changes, scaling, failed-node replacement, and security rotation.
icon: fa-solid fa-wrench
module: [KAFKA]
categories: [Task]
aliases: [/docs/pilot/kafka/admin]
---


The KAFKA module installs Kafka under `/opt/kafka`, manages the service with Systemd, and keeps its persistent intent in `pigsty.yml`. The files generated on the nodes are not meant to be edited by hand.

All of the Kafka CLI examples below use the role-generated `/etc/kafka/admin.properties`. Even when the current profile is `plaintext`, keep `--command-config` on every command: that way the command structure stays the same when you switch the admin channel to `scram`. Replace `<broker>:9092` with a reachable `inventory_hostname` and port.

{{% alert title="--command-config on the console tools requires a Kafka 4.2+ CLI" color="info" %}}
[KIP-1147](https://cwiki.apache.org/confluence/display/KAFKA/KIP-1147:+Improve+consistency+of+command-line+arguments) standardized the config-file argument as `--command-config` and the key-value argument as `--command-property` across every CLI, starting with Kafka 4.2. The CLI under `/opt/kafka/bin` comes from the Pigsty repository (currently a 4.3.x payload) and works as shown; if you run these from an external 4.1 or older CLI, the console producer/consumer still need the old names `--producer.config` / `--consumer.config`. The admin tools (`kafka-topics.sh`, `kafka-configs.sh`, `kafka-acls.sh`, `kafka-consumer-groups.sh`, `kafka-metadata-quorum.sh`, and friends) have always used `--command-config` and are unaffected.
{{% /alert %}}


--------

## Quick Reference

| Operation                          | Command                             | Description                                        |
|:-----------------------------------|:------------------------------------|:---------------------------------------------------|
| [**Create Cluster**](/docs/kafka/start) | `./kafka.yml -l <cls>`         | Create or converge kafka clusters; a bare run covers all |
| [**Expand Cluster**](#expand-cluster)   | `./kafka.yml -l <cls>`         | Declare new members: broker admission, controller join |
| [**Shrink Cluster**](#shrink-cluster)   | `./kafka-rm.yml -l <ip>`       | Retire a member: remove voter entry & broker registration |
| [**Remove Cluster**](/docs/kafka/playbook#cluster-teardown) | `./kafka-rm.yml -l <cls>` | Tear down a whole cluster; deletes data by default |
| [**Replace Failed Node**](#replace-failed-node) | retire → provision → rejoin | Three commands; replicas are re-inherited automatically |
| [**Config Cluster**](#config-cluster)   | `./kafka.yml -l <cls>`         | Edit the inventory, then roll under safety gates   |
| [**Manage Topics**](#manage-topics)     | `./kafka.yml -l <cls>`         | Declaratively create topics, grow partitions, set configs |
| [**Manage Users**](#manage-users-and-acls) | `./kafka.yml -l <cls>`      | Declaratively converge users, ACLs, and quotas     |
| [**Rotate Credentials**](#rotate-credentials-and-certificates) | `./kafka.yml -e kafka_rotate_...` | Protected internal credential / certificate rotation |
{.full-width}

Cluster definition and parameters are covered in [**Configuration**](/docs/kafka/config), playbook semantics in [**Playbooks**](/docs/kafka/playbook), and monitoring in [**Monitoring**](/docs/kafka/monitor).


--------

## Status Check

Check the service and recent logs on any Kafka node:

```bash
systemctl status kafka
systemctl is-enabled kafka
journalctl -u kafka --since '-30 min' --no-pager
```

The protocol exporter runs only on at most two broker-capable nodes with the lowest `kafka_seq`. On the selected nodes, also check:

```bash
systemctl status kafka_exporter
journalctl -u kafka_exporter --since '-30 min' --no-pager
```

Check listeners and metric endpoints:

```bash
ss -lntp | grep -E ':9092|:9093|:9308|:9404'
curl -fsS http://<kafka-ip>:9404/metrics | grep -E '^(jmx_scrape_error|kafka_server_raft_state|kafka_server_broker_messages_in_total)'
curl -fsS http://<exporter-ip>:9308/metrics | grep -E '^(kafka_brokers|kafka_topic_partitions)'
```

`kafka_up` and `kafka_exporter_up` are recording metrics on the VictoriaMetrics side and do not necessarily appear on the raw endpoints. The JMX endpoint should contain `jmx_scrape_error 0.0`, JVM metrics, and `kafka_` metrics matching the node's role.


--------

## Health Check

The role's lifecycle gates do not rely on JMX. They check the dynamic quorum, unavailable partitions, under-replication, and under-min-ISR through the same admin channel:

```bash
sudo -u kafka /usr/local/bin/pigsty-kafka-health cluster \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties
```

Only `healthy: true` in the returned JSON means the gate passes. It is suitable for read-only diagnostics but is no substitute for end-to-end business validation.

The script also ships a built-in parser regression suite (`pigsty-kafka-health selftest`) that every playbook run executes right after installation; if the selftest fails, the health predicate itself cannot be trusted — stop making changes and investigate.


--------

## KRaft Quorum Status

Query the dynamic quorum from any available broker:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --status
```

Key things to verify:

- `LeaderId` exists and matches an expected controller;
- `CurrentVoters` matches the expected membership (a joining node appears under `CurrentObservers` first);
- `MaxFollowerLag` and `MaxFollowerLagTimeMs` are not growing continuously;
- Exactly one active controller shows on the dashboards.

To confirm the dynamic quorum (KIP-853) feature level, inspect `kraft.version` with `/opt/kafka/bin/kafka-features.sh ... describe`.

Inspect controller replication state:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --replication
```

If there is no leader, a member lags persistently, or the voter set differs from expectation, stop other changes first and preserve the logs, the manifest, and `meta.properties` as evidence before analyzing. Remove a dead voter through the [shrink](#shrink-cluster) or [replace](#replace-failed-node) flows; never rewrite quorum state by hand.


--------

## Manage Topics

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

Converge after editing the declaration:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

The role creates topics idempotently, only grows partitions, and only modifies the declared config keys. An RF change fails and demands an explicit partition reassignment; removing an entry from the inventory does not delete the topic.

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

Ad-hoc or externally managed topics can be created with the Kafka CLI, but they are not written back into `pigsty.yml`. Never let declarative and manual management own the same topic. Topic deletion is a business-data deletion: it requires separate approval, exact-name confirmation, and a recovery plan, so no generic delete command is given here.


--------

## Manage Users and ACLs

With `kafka_security: scram`, application identities should be managed through [`kafka_users`](/docs/kafka/param#kafka_users):

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

A full playbook run idempotently converges the password, the user's ACL set, and the explicitly given quota fields. Never commit passwords in plaintext or print them into logs. Removing a user entry does not delete the principal/credentials automatically; deletion or full revocation needs a separately reviewed procedure.


--------

## Verify Read/Write

Use a test topic for end-to-end validation. The console producer/consumer share the same client config file:

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

Production acceptance should run from the real client network, covering DNS/`advertised.listeners`, certificate validation, ACLs, producer ACKs, consumer commits, and end-to-end latency — not just the broker-local path.


--------

## Manage Consumer Groups

List and inspect consumer groups:

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

Judge lag against the consumption rate and business SLO: a short backlog can be batch-processing behavior, while sustained growth with consumption slower than production means the group cannot catch up. Resetting offsets may duplicate or skip messages, so it requires separate approval, exact group/topic confirmation, and a replay plan.


--------

## Config Cluster

After editing `pigsty.yml`, run against complete clusters:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

The role picks the path from live health and the static fingerprint:

- Cluster unhealthy or stopped: start only the stopped controllers, restore and catch up the quorum, then start the brokers; if static changes coexist, the still-online members proceed into the strict rolling afterwards;
- Controller-capable nodes awaiting quorum join: each catches up as an observer and is promoted with `add-controller`, one at a time;
- Healthy cluster with new pure brokers: format, start, and confirm registration one at a time;
- Healthy cluster with static changes: strict node-by-node rolling, with pre/post gates on controller majority and voter catch-up, offline partitions, under-min-ISR, and ISR catch-up around every restart;
- No static change: Kafka is not restarted.

Do not bypass the full state machine with `-t kafka_config`. Dynamic topic/user/ACL/quota convergence lives in the `kafka_provision` resource stage; whether a static change restarts anything is decided by the role.


--------

## Expand Cluster

A healthy cluster takes new members declared directly in the inventory: `kafka_role: broker`, `combined`, or `controller` all work. Give each new node a never-used `kafka_seq` (a host can belong to only one Kafka cluster at a time), make sure the node is [**managed by Pigsty**](/docs/node/admin#add-node), then still target complete clusters:

```bash
./node.yml  --check -l 10.10.10.14    # manage the new node
./kafka.yml --check -l kf-main        # dry run first
./kafka.yml -l kf-main                # admit / join new members one at a time
```

The role picks the path per member type and handles one new node at a time:

- **Pure broker**: format, start, and verify the broker is registered and not fenced (`admit`);
- **Combined / controller**: format fresh with `--no-initial-controllers`, start as an observer and catch up on metadata, promote with `add-controller`, then verify it entered the voter set with the cluster fully healthy (`join`).

The `quorum-join-hosts` / `broker-admission-hosts` summary at the end of the run lists the nodes actually processed. Two reminders:

- Adding a controller-capable node changes `controller.quorum.bootstrap.servers` on every member, so the existing nodes go through one gated strict rolling round afterwards — this is expected;
- Scaling out to an even controller count prints a warning: an even quorum adds no fault tolerance, keep the count odd.

Joining does not migrate existing partitions onto the new broker. Generate, review, and monitor a `kafka-reassign-partitions.sh` plan separately, control the disk/network load, and prepare a rollback. "The service is registered" is not "the expansion is complete."

The replication policy does not scale up with the broker count either. In particular, Kafka 4.3's `default.replication.factor` cannot be changed dynamically: after scaling from 1 broker to 3, it remains the RF=1 set at initial build, and any future topic without an explicit RF is still created with RF=1. First complete the reassignment of existing partitions, then plan for controller high availability or a maintenance window, and finally let the new static default take effect through a safe full-cluster rolling restart. Do not bypass the downtime gates just to change a default.


--------

## Shrink Cluster

Selecting a **strict subset** of a cluster with `kafka-rm.yml` retires members (selecting the whole cluster is a [**teardown**](/docs/kafka/playbook#cluster-teardown)). Retirement removes the leaving node from live metadata through a surviving member:

```bash
./kafka-rm.yml -l 10.10.10.13     # retire one member: remove voter entry, unregister broker, clean the host
```

The execution order is: deregister monitoring targets → stop services → `remove-controller` to remove the KRaft voter entry (if the member is a voter; strictly serialized when retiring several members) → `kafka-cluster.sh unregister` to drop the broker registration → clean local config and data (controlled by `kafka_rm_data`). Afterwards, delete the member's entry from `pigsty.yml`.

Before retiring, confirm yourself that: the remaining controllers still form a majority, the controller count stays odd, and the remaining broker count is not below the highest topic RF. If the retiring broker still hosts partition replicas, the role prints a warning: those partitions stay under-replicated until a replacement with the same `kafka_seq` rejoins (it re-inherits the assignment and resyncs automatically), or until you reassign them explicitly. **A planned shrink should drain with a reassignment first, then retire.**


--------

## Replace Failed Node

When a node is permanently lost (disk gone, machine scrapped), keep its IP and `kafka_seq` and replace it in three steps:

```bash
./kafka-rm.yml -l 10.10.10.13     # 1. retire the dead member: remove voter entry & broker registration (works while unreachable)
./node.yml     -l 10.10.10.13     # 2. provision the replacement machine (repaired or new, same IP)
./kafka.yml    -l kf-main         # 3. rejoin: format, catch up, admit/promote; replica assignment is re-inherited and resynced
```

All metadata operations in step 1 are delegated to a surviving member, so it works even when the node itself is unreachable; it also cleans up the monitoring target, so the dead node stops firing `KafkaDown`. In step 3, a broker with the same `kafka_seq` automatically re-inherits its former partition assignment and resynchronizes from the surviving replicas — no manual reassignment needed.

If you skip step 1 and rerun `kafka.yml` against a re-imaged node directly, the role fails fast in the config phase, reporting the stale voter entry's directory ID together with the exact `kafka-rm.yml` command — run it and retry. The join flow is safely re-entrant: if any step is interrupted, rerunning `kafka.yml` continues from live state.


--------

## Change Address or Port

The role always uses `inventory_hostname` as the broker's advertised address and the controller's bootstrap address. Changing an inventory address, `kafka_port`, or `kafka_controller_port` affects client metadata, broker communication, or the quorum, and counts as a high-risk static change: check DNS, certificate SANs, routing, firewalls, bootstrap addresses, monitoring targets, and all cluster members in lockstep.


--------

## Rotate Credentials and Certificates

A formatted, healthy `scram` cluster supports two mutually exclusive protected actions: internal credential rotation and certificate rotation. Both require exact complete clusters and a matching `kafka_rotate_confirm` confirmation string, and running `--check` first is recommended. Certificates are re-issued by the same Pigsty CA, old and new certificates trust each other, and the rotation takes effect node by node through the strict rolling restart.

For the exact commands and failure semantics, see [**Playbook: Protected Rotation**](/docs/kafka/playbook#protected-rotation). The security profile itself is a bootstrap-only property; these actions do not imply support for online migration from `plaintext` to `scram`.


--------

## Data Protection and Recovery

Kafka's data protection relies on replicas across failure domains, correct min-ISR, producer ACKs, and a rehearsed recovery procedure. The current role does not provide Kafka data backup, automatic broker drain (a planned shrink needs a manual reassignment first), or cross-region disaster recovery.

When a disk or node fails:

1. First look at the Kafka Overview/Node dashboards, the quorum, ISR, offline partitions, and under-min-ISR partitions;
2. Preserve the evidence: `journalctl -u kafka`, node metrics, the manifest, `server.properties`, and `meta.properties`;
3. Confirm the node's role, `node.id`, cluster ID, directory ID, and the availability of the remaining replicas;
4. Once the node is confirmed unrecoverable, follow [**Replace Failed Node**](#replace-failed-node): retire with `kafka-rm.yml` → provision with `node.yml` → rejoin with `kafka.yml`; if the disk survives and only the service misbehaves, do **not** rush to retire or delete `meta.properties` — try an ordinary converge first;
5. Data-movement operations such as reassignment or RF changes still deserve a separately reviewed runbook.


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

The usual diagnostic order is: service logs → listening ports → admin-channel health → dynamic quorum → broker/partition/ISR → client addresses and certificates/ACLs → consumer lag. For dashboards and alert mappings, see [**Monitoring**](/docs/kafka/monitor).
