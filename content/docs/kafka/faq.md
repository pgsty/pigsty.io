---
title: FAQ
weight: 4908
description: Frequently asked questions about the Pigsty Kafka 4.1+ dynamic KRaft module.
icon: fa-solid fa-circle-question
module: [KAFKA]
categories: [Reference]
aliases: [/docs/pilot/kafka/faq]
---


## How mature is the current KAFKA module?

The current role implements a production-grade v1 baseline: dynamic KRaft, full cluster guardrails, cold-start/repair, serial broker admission and dynamic controller join, member retirement (including dead nodes), three-command failed-node replacement, strict rolling restart, TLS/SCRAM/ACL, declarative convergence of topics/users, internal credential and certificate rotation, and the full monitoring pipeline.

It is not a managed Kafka product. Production still requires `kafka_security: scram`, an odd number of controllers, sufficient brokers/RF/minISR, plus your own capacity planning, reassignment/data balancing, upgrade, backup, restore, and failure drills. The default `plaintext` is only suitable for development or a trusted, isolated network.


--------

## Why is there no ZooKeeper and no `controller.quorum.voters`?

This module targets Kafka 4.1+ and uses native dynamic KRaft, with no ZooKeeper installed and no static quorum created. All members render `controller.quorum.bootstrap.servers`; new clusters are formatted explicitly with `--initial-controllers`/`--no-initial-controllers`, and after startup the role verifies that the directory IDs of the initial controllers have joined the live quorum.

The initial controller identity is written into the bootstrap manifest, but it is only a birth certificate: after the cluster's first commission, live quorum membership is authoritative in Raft itself. Later controller additions and removals are orchestrated by the playbooks — additions go through `kafka.yml`'s observer catch-up + `add-controller` join flow, removals through a `kafka-rm.yml` strict-subset retirement (automatic `remove-controller`) — you only edit the inventory and run the matching playbook.


--------

## What is the difference between `combined`, `broker`, and `controller`?

- `combined`: acts as both broker and controller, listening on `9092` and `9093`; this is the default;
- `broker`: pure data plane, listening only on `9092`;
- `controller`: pure control plane, listening only on `9093`.

The cluster roles must either be omitted entirely and consistently use `combined`, or be declared explicitly for every member. The old role aliases are no longer provided.


--------

## Will controller port 9093 collide with Alertmanager?

No. Pigsty's Alertmanager listens on [`alertmanager_port`](/docs/infra/param#alertmanager_port) `9059` with cluster port `9094`, clear of the KRaft controller's conventional port `9093`. If you changed those ports and created a clash, adjust [`kafka_controller_port`](/docs/kafka/param#kafka_controller_port) for that cluster — the role only enforces that the four Kafka ports `9092`, `9093`, `9308`, and `9404` differ from one another, and does not detect port conflicts with other services.


--------

## The service is up, but a remote client cannot connect?

A broker's `advertised.listeners` always uses `inventory_hostname`. After connecting to the bootstrap server, a client must also resolve and reach every broker address returned in the metadata.

Check in order:

```bash
grep '^advertised.listeners' /etc/kafka/server.properties
ss -lntp | grep ':9092'
getent hosts <inventory-hostname>
```

A `scram` client must additionally check the CA, SASL mechanism, username/password, and ACLs. The current v1 does not offer custom advertised addresses, multiple listeners, or NAT/public mapping; if a client cannot route directly to `inventory_hostname`, that network model is outside the current core contract and cannot be worked around by overriding the raw listener via `kafka_parameters`.


--------

## Why does it report a Cluster ID, Node ID, or Directory ID mismatch?

The role cross-checks the bootstrap manifest, `${kafka_data}/metadata/meta.properties`, the inventory, and the live dynamic quorum. Common causes include:

- `kafka_cluster` or `kafka_seq` was changed;
- another cluster's data disk was mounted on the current node;
- an incorrect `kafka_cluster_id` was given during restore/takeover;
- the controller data directory or directory ID does not match the live voter records;
- the wrong target cluster was selected, or a stale manifest was used.

This is a protective failure. Do not delete `meta.properties`, the manifest, or run `kafka-rm.yml`. First confirm data ownership, the remaining replicas, the true Cluster/Node/Directory identity, and the recovery target.


--------

## What happens if the manifest is lost or only an old one remains?

Every cluster member keeps an authoritative copy of the manifest at `/etc/kafka/manifest.yml` (a `scram` cluster also has `/etc/kafka/secrets.yml`). The admin node keeps no kafka state and resolves both from any member copy on every run, so replacing the admin node or losing the local checkout does not affect cluster management. Only when all member copies are lost while the storage has already been formatted does the role fail closed and prompt you to restore the file on any member first; a formatted `scram` cluster likewise fails closed when no member holds the secret material. Issued node certificates are cached under `files/pki/kafka/` and are simply re-signed from the Pigsty CA when absent.

Conversely, if the manifest exists but all Kafka data disks are empty, the role fails closed to avoid accidentally reviving a vanished cluster under an old identity. If you genuinely intend to rebuild, you must first run `kafka-rm.yml` and follow an explicit rebuild procedure.


--------

## Why are some keys in `kafka_parameters` rejected?

Identity, the dynamic quorum, listeners, storage, replication, rack, and security must have a single source of authority, so those keys are owned by the role: if any one of them appears, the identity precheck fails before anything is written. For the complete reserved list, see [`kafka_parameters`](/docs/kafka/param#kafka_parameters).

Use the corresponding public parameters instead. The role provides no variables for advertised addresses, path subdirectories, the listener map, or exporter options.


--------

## How do I enable TLS, SCRAM, and ACLs?

Set on a new cluster:

```yaml
kafka_security: scram
```

This enables the Pigsty CA node certificates, controller mTLS, broker/client SASL_SSL + SCRAM-SHA-512, StandardAuthorizer, and default-deny all at once. Application users declare their passwords, ACLs, and optional quotas via `kafka_users`.

The security mode is a bootstrap-only property. A formatted cluster cannot switch online from `plaintext` to `scram` via ordinary playbooks; that requires a separate migration state machine. A healthy `scram` cluster can rotate internal credentials or certificates through protected actions.


--------

## Do `kafka_topics` and `kafka_users` delete resources?

No. Removing an entry from the inventory never implicitly deletes a topic or a user.

Topics are created idempotently, partitions only increase, and only the declared configs are updated; an RF change requires an explicit reassignment. A declared user has its password, complete ACL set, and the given quota fields converged. Topic deletion, user deletion, and full privilege revocation are all separate, audited operations.


--------

## What is the difference between the JMX Exporter and kafka_exporter?

The JMX Exporter is injected into every Kafka JVM and collects JVM, broker, replication, request-path, and KRaft internal metrics, registered as a `job=kafka` target with a `role` label.

`kafka_exporter` queries the logical cluster, topics, partitions, offsets, consumer groups, and lag over the Kafka protocol, registered as a target under the same `job=kafka` but without a `role` label. The role runs it only on the first two broker-capable nodes ordered by `kafka_seq`; a single-broker cluster runs one, and pure controllers run none.

The two are complementary. The lifecycle health gate uses the role's own Kafka CLI/metadata channel and does not depend on either exporter.


--------

## Why does a particular broker or pure controller have no kafka_exporter?

This is the expected derived placement. The protocol exporter returns a view of the entire logical cluster, not node metrics; capping it at two replicas avoids a monitoring single point of failure while keeping the cost of duplicate scraping in check.

Check the current targets (one file per instance; the files of selected nodes contain the `:9308` protocol exporter target):

```bash
ls -l /infra/targets/kafka/
grep 9308 /infra/targets/kafka/*.yml
```

A full run refreshes each instance's target file according to the current placement, so you should not run against a single node just to register labels. Note: if the exporter placement moves due to a topology change, the old `kafka_exporter` service on a formerly selected node is not stopped automatically by ordinary playbooks and must be cleaned up manually or via `kafka-rm.yml`.


--------

## Why is the JMX endpoint reachable but `jmx_scrape_error=1`?

HTTP reachability only means the Java agent is loaded; `jmx_scrape_error=1` means the MBean scrape failed this round:

```bash
journalctl -u kafka --since '-30 min' --no-pager
curl -fsS http://<kafka-ip>:9404/metrics | head -n 40
```

Check whether `/etc/kafka/jmx_exporter.yml` matches the currently installed Kafka/JMX Exporter packages, and whether the JVM has passed `startDelaySeconds`. Real startup acceptance requires `jmx_scrape_error 0.0`, JVM metrics, and at least one `kafka_` metric matching the role.


--------

## Why is there no Consumer Lag data?

Common causes: the consumer does not use a group, does not commit offsets to Kafka, stores offsets in an external system, the group has not yet consumed the target topic, or the protocol exporter has a TLS/SCRAM/ACL/network problem.

```bash
/opt/kafka/bin/kafka-consumer-groups.sh \
  --bootstrap-server <broker>:9092 \
  --command-config /etc/kafka/admin.properties \
  --describe --group <group>
```

Then check `kafka_exporter_up`, the exporter logs, the dashboard variables, and the raw `kafka_consumergroup_*` metrics. Endpoint liveness is judged by Prometheus's native `up`; do not substitute a custom metric that may briefly linger after a scrape failure.


--------

## Why can't the cluster metrics from two kafka_exporters be added together?

Both exporters query the same logical cluster and may return the same topic/partition/consumer-group state; summing them directly double-counts. Pigsty's `kafka:cls:*` recording rules first deduplicate across the exporter replicas, then aggregate to the cluster.


--------

## Should applications go through HAProxy, a Keepalived VIP, or an LB?

No. Kafka producers and consumers are cluster-aware clients: once they reach any seed in `bootstrap.servers` and fetch metadata, they connect directly to each partition leader. A VIP or generic TCP LB neither understands partition leaders nor rewrites the broker addresses in metadata; putting one in the data plane only adds long-connection state, an extra point of failure, and troubleshooting complexity.

If a platform mandates a single discovery entry point, DNS or a TCP LB may serve bootstrap only, but `advertised.listeners` still returns a client-reachable address for each broker, and the application network must reach every broker. Exposure across NAT, the public internet, multiple networks, or Kubernetes requires a dedicated external address and an additional listener per broker; the current module always advertises the inventory address and does not support such mapping.

See [Quickstart: why applications should connect directly to multiple brokers](/docs/kafka/start#3-why-applications-should-connect-directly-to-multiple-brokers) and [Cluster Config: network and listeners](/docs/kafka/config#network-and-listeners).


--------

## Can I just add or remove a broker or controller?

Yes. Edit the inventory and let the playbooks orchestrate every step of the [KRaft membership change](https://kafka.apache.org/43/operations/kraft/#controller-membership-changes):

- **Add**: declare the new member in the inventory (`broker`, `combined`, and `controller` all work) and run `./kafka.yml -l <cls>` against the **complete cluster** (you cannot limit the run to the new node only). Pure brokers are formatted, started, and verified as registered one at a time; combined/controller nodes are formatted with `--no-initial-controllers`, catch up as observers, then get promoted with `add-controller`. One node at a time, with health gates throughout.
- **Remove**: `./kafka-rm.yml -l <ip>` (a strict subset of the cluster) performs `remove-controller` and the broker unregistration through a surviving member — it works even when the node is unreachable — then delete the member from the inventory.

You still own the planning: keep the controller count odd with a live majority after the change, make one membership change at a time, and drain the partitions off a removed broker first (or let a same-`kafka_seq` replacement take them over). After a node joins, existing partitions are not migrated automatically; you must run and monitor reassignment separately — "the broker is registered" does not mean "capacity is already balanced."


--------

## Which parameter controls the package version?

The role uses `package_map['java-runtime']` and `package_map['kafka-stack']`; there is no `kafka_version`, `scala_version`, or exporter version parameter. The actual versions are determined by the Pigsty repository for the target platform and the installed packages.

The payload verified on 2026-07-16 is Kafka 4.3.1, `kafka_exporter` 1.9.0, and JMX Exporter 1.6.0. An upgrade still requires a separate review of compatibility, backup/rollback, rolling order, and feature level; you cannot simply swap the packages.


--------

## How do I safely wipe Kafka data?

`kafka.yml` never performs cleanup; deletion lives only in the separate `kafka-rm.yml` playbook. Selecting a whole cluster with `-l` (or running bare for all clusters) is a teardown; selecting a strict subset is member retirement. By default `kafka_rm_data=true` permanently deletes the data/KRaft metadata, node-local `/etc/kafka` recovery state, and monitoring targets; `kafka_rm_data=false` keeps the data and recovery state, and `kafka_safeguard=true` aborts any deletion.

The playbook has no extra gate such as a confirmation string. Commands delete immediately; before running one, manually confirm the exact `-l` target, a recoverable backup or clear rebuild intent, and the business-decommissioned status. Broker unregistration during member retirement tolerates failure, so after a real run also inspect quorum, broker registrations, and replica health. For the full semantics, see [Playbook: `kafka-rm.yml`](/docs/kafka/playbook#kafka-rmyml).
