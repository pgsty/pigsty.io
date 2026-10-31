# FAQ

> Frequently asked questions about the Pigsty Kafka 4.1+ dynamic KRaft module.

---

LLMS index: [llms.txt](/llms.txt)

---

## How mature is the current KAFKA module?

The v1 baseline provides dynamic KRaft, full-cluster checks, cold start and repair, serial broker admission, and dynamic controller join. It supports retirement of live or dead members and three-command failed-node replacement. It also provides strict rolling restarts, TLS/SCRAM/ACL, declared topics and users, protected credential and certificate rotation, and complete monitoring.

Production requires `kafka_security: scram`, an odd controller count, and sufficient brokers, RF, and minISR. You must plan capacity, reassignment, balancing, upgrades, backup, restore, and failure exercises. This module does not provide a managed Kafka service. Default `plaintext` suits only development or trusted isolated networks.


--------

## Why is there no ZooKeeper and no `controller.quorum.voters`?

The module targets Kafka 4.1+ with native dynamic KRaft. It installs no ZooKeeper and creates no static quorum. Every member renders `controller.quorum.bootstrap.servers`. New clusters format explicitly with `--initial-controllers`/`--no-initial-controllers`. After startup, the role verifies that initial controller Directory IDs entered live quorum.

The manifest records initial controller identities. After commissioning, live Raft quorum defines membership. `kafka.yml` adds controllers through observer catch-up and `add-controller`. Strict-subset `kafka-rm.yml` runs retire them through `remove-controller`. Edit the inventory and run the matching playbook.


--------

## What is the difference between `combined`, `broker`, and `controller`?

- `combined`: acts as both broker and controller, listening on `9092` and `9093`; this is the default;
- `broker`: pure data plane, listening only on `9092`;
- `controller`: pure control plane, listening only on `9093`.

Omit all roles to use `combined`, or declare roles on every member. Legacy aliases are unavailable.


--------

## Will controller port 9093 collide with Alertmanager?

No. Alertmanager uses [`alertmanager_port`](/docs/infra/param#alertmanager_port) `9059` and cluster port `9094`. These do not conflict with KRaft `9093`. If custom settings conflict, change [`kafka_controller_port`](/docs/kafka/param#kafka_controller_port). The role checks only that Kafka ports `9092`, `9093`, `9308`, and `9404` differ. It does not detect conflicts with other services.


--------

## The service is up, but a remote client cannot connect?

`advertised.listeners` always uses `inventory_hostname`. After bootstrap, clients must resolve and reach every broker address returned in metadata.

Check in order:

```bash
grep '^advertised.listeners' /etc/kafka/server.properties
ss -lntp | grep ':9092'
getent hosts <inventory-hostname>
```

For `scram`, also check the CA, SASL mechanism, credentials, and ACLs. Version 1 lacks custom advertised addresses, multiple listeners, and NAT/public mapping. Clients must route directly to `inventory_hostname`. Raw listener overrides in `kafka_parameters` cannot bypass this requirement.


--------

## Why does it report a Cluster ID, Node ID, or Directory ID mismatch?

The role compares the manifest, `${kafka_data}/metadata/meta.properties`, inventory, and live quorum. Common mismatch causes include:

- `kafka_cluster` or `kafka_seq` was changed;
- another cluster's data disk was mounted on the current node;
- an incorrect `kafka_cluster_id` was given during restore/takeover;
- the controller data directory or directory ID does not match the live voter records;
- the wrong target cluster was selected, or a stale manifest was used.

This failure protects data. Do not delete `meta.properties` or the manifest, and do not run `kafka-rm.yml`. First verify data ownership, surviving replicas, actual Cluster/Node/Directory identities, and the recovery target.


--------

## What happens if the manifest is lost or only an old one remains?

Each member stores `/etc/kafka/manifest.yml`; `scram` members also store `/etc/kafka/secrets.yml`. Every run retrieves these from any member copy. Administration nodes keep no Kafka state, so replacing one or losing its checkout does not prevent management. Formatted storage without any manifest copy blocks execution until you restore a copy on one member. A formatted `scram` cluster also blocks execution if no member retains secrets. Certificates cached in `files/pki/kafka/` are signed again by the Pigsty CA if missing.

An existing manifest with all Kafka data disks empty blocks execution. This prevents accidental reuse of a lost cluster's identity. For an intended rebuild, first run `kafka-rm.yml`, then follow an explicit rebuild procedure.


--------

## Why are some keys in `kafka_parameters` rejected?

The role owns identity, quorum, listeners, storage, replication, rack, and security settings. Overriding any reserved key fails identity checks before writes. See [`kafka_parameters`](/docs/kafka/param#kafka_parameters) for the complete list.

Use the corresponding public parameters instead. The role provides no variables for advertised addresses, path subdirectories, the listener map, or exporter options.


--------

## How do I enable TLS, SCRAM, and ACLs?

Set on a new cluster:

```yaml
kafka_security: scram
```

This enables Pigsty CA certificates, controller mTLS, broker/client SASL_SSL + SCRAM-SHA-512, StandardAuthorizer, and default denial together. Declare application passwords, ACLs, and optional quotas in `kafka_users`.

Security mode is a bootstrap-only setting. Ordinary playbooks cannot migrate formatted clusters online from `plaintext` to `scram`. That requires a separate migration state machine. Healthy `scram` clusters support protected internal credential or certificate rotation.


--------

## Do `kafka_topics` and `kafka_users` delete resources?

No. Removing an entry from the inventory never implicitly deletes a topic or a user.

Topics are created idempotently. Partitions only increase, declared settings alone change, and RF changes require explicit reassignment. Declared users receive their password, complete ACL set, and specified quota fields. Topic deletion, user deletion, and full privilege revocation remain separate audited operations.


--------

## What is the difference between the JMX Exporter and kafka_exporter?

JMX Exporter runs inside every Kafka JVM by default. It collects JVM, broker, replication, request-path, and KRaft metrics under `job=kafka`, with a `role` label.

`kafka_exporter` queries cluster, topic, partition, offset, consumer-group, and lag data through Kafka protocol. It uses `job=kafka` without a `role` label. It runs on the first two broker-capable nodes by `kafka_seq`. A single broker runs one; pure controllers run none.

The exporters provide complementary views. Lifecycle health checks use a separate Kafka CLI/metadata channel and depend on neither exporter.


--------

## Why does a particular broker or pure controller have no kafka_exporter?

This placement is expected. Protocol exporters report whole-cluster state rather than node metrics. Two copies avoid a single monitoring failure point while limiting duplicate scrape costs.

Check the current targets (one file per instance; the files of selected nodes contain the `:9308` protocol exporter target):

```bash
ls -l /infra/targets/kafka/
grep 9308 /infra/targets/kafka/*.yml
```

Full runs refresh target files for current exporter placement. Do not run on one node only to register labels. If placement changes, ordinary playbooks do not stop the old `kafka_exporter` service. Remove it manually or with `kafka-rm.yml`.


--------

## How do I disable JMX Exporter?

Set [`kafka_jmx_exporter_enabled: false`](/docs/kafka/param#kafka_jmx_exporter_enabled), then run `./kafka.yml -l <cls>` for the complete cluster. The rolling restart removes the Java Agent from the JVM. `-t register` updates targets only and cannot replace full convergence.

Disabling JMX removes JVM, KRaft, and broker-internal metrics and their alerts. If every member disables JMX, Kafka Overview / Kafka Instance cannot discover the cluster, and `KafkaDown` cannot detect it. The independent protocol exporter continues to provide topic, partition, and consumer-group metrics. Lifecycle health gates still use the Kafka administration channel.

--------

## Why is the JMX endpoint reachable but `jmx_scrape_error=1`?

HTTP access proves only that the Java agent loaded. `jmx_scrape_error=1` means the latest MBean scrape failed:

```bash
journalctl -u kafka --since '-30 min' --no-pager
curl -fsS http://<kafka-ip>:9404/metrics | head -n 40
```

Check `/etc/kafka/jmx_exporter.yml` against installed Kafka and JMX Exporter versions. Confirm that `startDelaySeconds` has elapsed. Successful startup requires `jmx_scrape_error 0.0`, JVM metrics, and at least one role-appropriate `kafka_` metric.


--------

## Why is there no Consumer Lag data?

Possible causes include consumers without groups, no committed Kafka offsets, external offset storage, or groups that have not consumed the topic. Exporter TLS, SCRAM, ACL, and network problems can also cause missing metrics.

```bash
/opt/kafka/bin/kafka-consumer-groups.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --describe --group <group>
```

Check `kafka_exporter_up`, exporter logs, dashboard variables, and raw `kafka_consumergroup_*` metrics. Use native Prometheus `up` to assess endpoint availability. Custom metrics can briefly remain after scrape failure.


--------

## Why can't the cluster metrics from two kafka_exporters be added together?

Both exporters can return identical topic, partition, and consumer-group state. Summing them counts data twice. `kafka:cls:*` rules deduplicate exporter copies before cluster aggregation.


--------

## Should applications go through HAProxy, a Keepalived VIP, or an LB?

No. Producers and consumers fetch metadata from a `bootstrap.servers` seed, then connect directly to partition leaders. A VIP or TCP load balancer cannot identify leaders or rewrite broker addresses. Adding it to the data plane adds long-lived connection state, another failure point, and diagnostic complexity.

DNS or a TCP load balancer can provide a single bootstrap discovery endpoint if required. `advertised.listeners` must still return reachable addresses for every broker. NAT, public internet, multiple networks, and Kubernetes exposure require dedicated external addresses and extra listeners per broker. The module advertises inventory addresses only and does not support this mapping.

See [Quickstart: why applications should connect directly to multiple brokers](/docs/kafka/start#3-why-applications-should-connect-directly-to-multiple-brokers) and [Cluster Config: network and listeners](/docs/kafka/config#network-and-listeners).


--------

## Can I just add or remove a broker or controller?

Yes. Edit the inventory and use playbooks for each [KRaft membership change](https://kafka.apache.org/43/operations/kraft/#controller-membership-changes):

- **Add:** Declare a `broker`, `combined`, or `controller` member. Run `./kafka.yml -l <cls>` on the **complete cluster**, not just the new node. Pure brokers format, start, and verify registration one at a time. Combined/controller members format with `--no-initial-controllers`, catch up as observers, and promote through `add-controller`. Every step checks health.
- **Remove:** Run `./kafka-rm.yml -l <ip>` on a strict subset. A surviving member performs `remove-controller` and broker unregistration, even if the target is unreachable. Then remove the inventory entry.

Plan each membership change. Retain an odd controller count with a live majority. Change one member at a time. Drain departing broker partitions first, or replace it with the same `kafka_seq`. New brokers do not receive existing partitions automatically. Run and monitor reassignment separately; registration does not imply balanced capacity.


--------

## Which parameter controls the package version?

The role uses `package_map['java-runtime']` and `package_map['kafka-stack']`. It has no `kafka_version`, `scala_version`, or exporter version parameters. Target-platform repositories and installed packages determine versions.

The payload verified on 2026-07-16 contained Kafka 4.3.1, `kafka_exporter` 1.9.0, and JMX Exporter 1.6.0. Before upgrades, separately review compatibility, backup, rollback, rolling order, and feature level. Replacing packages alone is insufficient.


--------

## How do I safely wipe Kafka data?

`kafka.yml` never performs cleanup. `kafka-rm.yml` owns deletion. The playbook requires an explicit, nonempty `-l/--limit`; a bare run fails. Selecting a whole cluster with `-l` performs teardown. A strict subset performs retirement. Default `kafka_rm_data=true` permanently deletes data, KRaft metadata, node-local `/etc/kafka` recovery state, and monitoring targets. `kafka_rm_data=false` retains data and recovery state; `kafka_safeguard=true` blocks all deletion.

Removal commands execute immediately without an additional confirmation string. Before running, verify the exact `-l` target, recoverable backups or explicit rebuild intent, and business decommissioning. Retirement tolerates broker unregistration failure. After execution, inspect quorum, registrations, and replica health. See [Playbook: `kafka-rm.yml`](/docs/kafka/playbook#kafka-rmyml).
