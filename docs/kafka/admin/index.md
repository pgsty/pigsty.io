# Administration

> Kafka status checks, topic and user management, config changes, scaling, failed-node replacement, and security rotation.

---

LLMS index: [llms.txt](/llms.txt)

---

KAFKA installs Kafka in `/opt/kafka` and manages it with Systemd. Declare persistent settings in `pigsty.yml`. Do not edit generated node files manually.

These CLI examples use the generated `/etc/kafka/admin.properties`. Keep `--command-config` even with `plaintext`. Commands then retain the same structure if the administration channel changes to `scram`. Replace `<broker>:9092` with a reachable `inventory_hostname` and port.

> [!NOTE] --command-config on the console tools requires a Kafka 4.2+ CLI
> Starting with Kafka 4.2, [KIP-1147](https://cwiki.apache.org/confluence/display/KAFKA/KIP-1147:+Improve+consistency+of+command-line+arguments) standardized `--command-config` for files and `--command-property` for key-value arguments across all CLIs.
> `/opt/kafka/bin` comes from the Pigsty repository, currently with a 4.3.x payload. It supports these examples.
> External 4.1 or older console tools require `--producer.config` and `--consumer.config`.
> Administration tools such as `kafka-topics.sh`, `kafka-configs.sh`, `kafka-acls.sh`, `kafka-consumer-groups.sh`, and `kafka-metadata-quorum.sh` already used `--command-config`. They are unaffected.


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

See [**Configuration**](/docs/kafka/config) for cluster definitions and parameters, [**Playbooks**](/docs/kafka/playbook) for execution behavior, and [**Monitoring**](/docs/kafka/monitor) for observability.


--------

## Status Check

Check the service and recent logs on any Kafka node:

```bash
systemctl status kafka
systemctl is-enabled kafka
journalctl -u kafka --since '-30 min' --no-pager
```

The protocol exporter runs on at most two broker-capable nodes with the lowest `kafka_seq`. On those nodes, also check:

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

`kafka_up` and `kafka_exporter_up` are VictoriaMetrics recording metrics. They may not appear at raw endpoints. When enabled, JMX should expose `jmx_scrape_error 0.0`, JVM metrics, and role-appropriate `kafka_` metrics. If JMX is explicitly disabled, skip the `9404` check and review the missing metrics described in [Monitoring and Alerting](/docs/kafka/monitor#disabling-jmx).


--------

## Health Check

Lifecycle checks use the administration channel, not JMX. They check dynamic quorum, unavailable partitions, under-replication, and under-min-ISR:

```bash
sudo -u kafka /usr/local/bin/pigsty-kafka-health cluster \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties
```

The check passes only if JSON returns `healthy: true`. Use it for read-only diagnostics. It does not replace end-to-end business validation.

Every playbook run executes the parser regression suite, `pigsty-kafka-health selftest`, immediately after installation. If it fails, stop changes and investigate. The health result is then untrustworthy.


--------

## KRaft Quorum Status

Query the dynamic quorum from any available broker:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --status
```

Verify these conditions:

- `LeaderId` exists and identifies an expected controller.
- `CurrentVoters` contains the expected members. A joining node first appears in `CurrentObservers`.
- `MaxFollowerLag` and `MaxFollowerLagTimeMs` do not grow continuously.
- Dashboards show exactly one active controller.

To confirm the dynamic quorum (KIP-853) feature level, inspect `kraft.version` with `/opt/kafka/bin/kafka-features.sh ... describe`.

Inspect controller replication state:

```bash
/opt/kafka/bin/kafka-metadata-quorum.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  describe --replication
```

Stop other changes if no leader exists, a member persistently lags, or voters differ from expectations. Preserve logs, the manifest, and `meta.properties` before analysis. Remove dead voters through [shrink](#shrink-cluster) or [replacement](#replace-failed-node). Never rewrite quorum state manually.


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

The role creates topics idempotently, increases partitions only, and changes only declared configuration keys. RF changes fail and require explicit partition reassignment. Removing an inventory entry does not delete the topic.

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

You can create ad hoc or externally managed topics with the CLI. These are not written back to `pigsty.yml`. Never manage the same topic both manually and declaratively. Topic deletion deletes business data. It requires separate approval, exact-name confirmation, and a recovery plan. This page therefore gives no generic deletion command.


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

A full run idempotently applies the password, user ACL set, and explicitly declared quota fields. Never commit plaintext passwords or print them in logs. Removing an entry does not delete the principal or credentials. Deletion and full revocation need a separately reviewed procedure.


--------

## Verify Read/Write

Validate end-to-end operation with a test topic. The console producer and consumer use the same client configuration:

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

Run production acceptance from the actual client network. Check DNS, `advertised.listeners`, certificates, ACLs, producer ACKs, consumer commits, and end-to-end latency. Broker-local tests alone are insufficient.


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

Assess lag against consumption rate and business SLOs. A short backlog can be normal batch processing. Sustained growth with consumption below production means the group cannot catch up. Offset resets can duplicate or skip messages. They require separate approval, exact group/topic confirmation, and a replay plan.


--------

## Config Cluster

After editing `pigsty.yml`, run against complete clusters:

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

Live health and the static fingerprint determine the execution path:

- **Unhealthy or stopped:** Start only stopped controllers. Restore quorum and wait for catch-up, then start brokers. If static settings also changed, roll still-online members afterward.
- **Controller join pending:** Join each node as an observer, wait for catch-up, then promote with `add-controller`. Process one node at a time.
- **Healthy with new pure brokers:** Format, start, and verify registration one node at a time.
- **Healthy with static changes:** Restart one node at a time. Before and after each restart, check controller majority, voter catch-up, offline partitions, under-min-ISR, and ISR catch-up.
- **No static changes:** Do not restart Kafka.

Do not bypass the full state machine with `-t kafka_config`. `kafka_provision` applies topics, users, ACLs, and quotas. The role determines whether static changes require restarts.


--------

## Expand Cluster

Add new `kafka_role: broker`, `combined`, or `controller` members to a healthy cluster through the inventory. Assign each a never-used `kafka_seq`. A host can belong to only one Kafka cluster. Ensure that [**Pigsty manages the node**](/docs/node/admin#add-node). Run against complete clusters:

```bash
./node.yml  --check -l 10.10.10.14    # manage the new node
./kafka.yml --check -l kf-main        # dry run first
./kafka.yml -l kf-main                # admit / join new members one at a time
```

The role processes one new node at a time according to its type:

- **Pure broker:** Format, start, and verify registration and an unfenced state (`admit`).
- **Combined/controller:** Format with `--no-initial-controllers`. Start as an observer, catch up on metadata, and promote with `add-controller`. Verify voter membership and full cluster health (`join`).

`quorum-join-hosts` and `broker-admission-hosts` list processed nodes at completion. Note these behaviors:

- A new controller-capable node changes `controller.quorum.bootstrap.servers` on all members. Existing nodes then undergo one strict rolling restart with health checks.
- An even controller count triggers a warning. It adds no fault tolerance; keep the count odd.

Joining does not move existing partitions to the new broker. Separately generate, review, and monitor a `kafka-reassign-partitions.sh` plan. Limit disk and network load, and prepare rollback. Registration alone does not complete expansion.

More brokers do not automatically increase the replication policy. Kafka 4.3 cannot change `default.replication.factor` dynamically. After expansion from one broker to three, the initial RF=1 remains. New topics without explicit RF still use RF=1. First reassign existing partitions. Then plan controller HA or a maintenance window.

Apply the new static default with a safe full-cluster rolling restart. Do not bypass downtime checks to change this default.


--------

## Shrink Cluster

`kafka-rm.yml` retires a **strict subset** of cluster members. Selecting all members performs [**teardown**](/docs/kafka/playbook#cluster-teardown). Retirement uses a surviving member to remove the target from live metadata:

```bash
./kafka-rm.yml -l 10.10.10.13     # retire one member: remove voter entry, unregister broker, clean the host
```

Retirement first deregisters monitoring targets and stops services. For voters, it runs `remove-controller`, strictly serializing multiple removals. Next, `kafka-cluster.sh unregister` removes broker registration. Finally, it cleans local configuration and data according to `kafka_rm_data`. Broker unregistration tolerates failure so the procedure can resume or handle unreachable nodes. Remove the inventory entry from `pigsty.yml` only after checking live quorum, broker registrations, replica health, and target local state.

Before retirement, confirm that remaining controllers form a majority and have an odd count. Remaining brokers must support the highest topic RF. If the target still holds replicas, the role warns. Those partitions remain under-replicated until explicit reassignment or replacement with the same `kafka_seq`. Such a replacement inherits assignments and resynchronizes automatically. **For planned shrink, drain replicas through reassignment before retirement.**


--------

## Replace Failed Node

For permanent node loss, such as destroyed disks or retired hardware, retain the IP and `kafka_seq`. Replace it in three steps:

```bash
./kafka-rm.yml -l 10.10.10.13     # 1. retire the dead member: remove voter entry & broker registration (works while unreachable)
./node.yml     -l 10.10.10.13     # 2. provision the replacement machine (repaired or new, same IP)
./kafka.yml    -l kf-main         # 3. rejoin: format, catch up, admit/promote; replica assignment is re-inherited and resynced
```

Step 1 delegates metadata operations to a surviving member, so it works for unreachable nodes. It also removes monitoring targets to stop `KafkaDown` alerts. In step 3, the same `kafka_seq` makes the broker inherit its previous partition assignment. It resynchronizes from surviving replicas without manual reassignment.

If you skip step 1, `kafka.yml` stops during configuration on the re-imaged node. It reports the stale voter directory ID and exact `kafka-rm.yml` command. Run that command, then retry. The join procedure can resume safely: another `kafka.yml` run continues from live state.


--------

## Change Address or Port

`inventory_hostname` supplies broker advertised addresses and controller bootstrap addresses. Changing it, `kafka_port`, or `kafka_controller_port` is a high-risk static change. These changes affect client metadata, broker communication, or quorum. Coordinate DNS, certificate SANs, routing, firewalls, bootstrap addresses, monitoring targets, and every cluster member.


--------

## Rotate Credentials and Certificates

Healthy, formatted `scram` clusters support two mutually exclusive protected actions: internal credential rotation and certificate rotation. Both require exact complete clusters and matching `kafka_rotate_confirm`. Run `--check` first where possible. The same Pigsty CA reissues certificates, so old and new certificates trust each other. Strict rolling restarts apply rotation one node at a time.

See [**Protected Rotation**](/docs/kafka/playbook#protected-rotation) for commands and failure behavior. The security profile remains a bootstrap-only setting. Rotation does not support online migration from `plaintext` to `scram`.


--------

## Data Protection and Recovery

Kafka protects data through replicas in separate failure domains, correct min-ISR, producer ACKs, and tested recovery procedures. The role provides no data backup, automatic broker drain, or cross-region disaster recovery. Planned shrink requires manual reassignment first.

When a disk or node fails:

1. Inspect Kafka Overview/Node dashboards, quorum, ISR, offline partitions, and under-min-ISR partitions.
2. Preserve `journalctl -u kafka`, node metrics, the manifest, `server.properties`, and `meta.properties`.
3. Confirm the node role, `node.id`, cluster ID, directory ID, and remaining replica availability.
4. If the node is unrecoverable, follow [**Replace Failed Node**](#replace-failed-node): `kafka-rm.yml` retirement, `node.yml` provisioning, then `kafka.yml` join. If its disk survives and only the service fails, first try ordinary convergence. Do **not** immediately retire it or delete `meta.properties`.
5. Use a separately reviewed procedure for data movement, including reassignment and RF changes.


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

Check service logs, listener ports, administration-channel health, quorum, broker/partition/ISR state, client addresses and certificates/ACLs, then consumer lag. See [**Monitoring**](/docs/kafka/monitor) for dashboards and alerts.
