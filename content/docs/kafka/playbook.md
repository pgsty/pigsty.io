---
title: Playbook
weight: 4905
description: Run dynamic KRaft lifecycle, strict rolling, resource convergence, rotation, and removal with kafka.yml and kafka-rm.yml.
icon: fa-solid fa-scroll
module: [KAFKA]
categories: [Task]
aliases: [/docs/pilot/kafka/playbook]
---


The KAFKA module ships two playbooks: [`kafka.yml`](https://github.com/pgsty/pigsty/blob/main/kafka.yml) deploys an Apache Kafka 4.1+ dynamic KRaft cluster and converges its security,
resource, and monitoring state; [`kafka-rm.yml`](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml) tears down a cluster or removes a member.

{{% alert title="Cluster Completeness Constraint" color="warning" %}}
Every selected `kafka_cluster` must include all of its members: a partial selection fails before anything is written, while one cluster, several complete clusters, or a bare run over the whole inventory are all allowed. Run `--check` first against the exact same target; before the real run, still verify the backup/rebuild intent, capacity, business window, rollback plan, and change approval by hand.
{{% /alert %}}


--------

## `kafka.yml`

```bash
./kafka.yml --check -l kf-main   # dry run first
./kafka.yml -l kf-main           # create or converge one cluster
./kafka.yml                      # bare run: create / converge ALL kafka clusters
```

The limit rule is: **every selected cluster must be complete**. You may select one cluster, several clusters, or run bare against the whole inventory (strictly serial within a cluster, concurrent across clusters); a partial selection of a cluster's members is refused outright.

Check mode validates the public API, the full cluster, roles, racks, ports, the manifest, and any inspectable file changes, but it skips formatting, service startup, and live health acceptance. A successful `--check` is therefore not a guarantee of a successful runtime.


--------

## Execution Stages

`kafka.yml` is itself a thin wrapper: a single play runs the `node_id` and `kafka` roles in sequence, mirroring the structure of `pgsql.yml`. Inside the role, the lifecycle is split into six task stages; all cross-node ordering (parallel bootstrap, one-controller-at-a-time join, one-broker-at-a-time admission, strict node-by-node rolling) is handled centrally by the launch stage:

| Stage    | Tag               | Purpose                                                                                       |
|:---------|:------------------|:----------------------------------------------------------------------------------------------|
| Identity | `kafka-id`        | Derive and assert identity, cluster completeness, roles, racks, ports, and reserved keys      |
| Install  | `kafka_install`   | Create the `kafka` system user, install the `java-runtime` and `kafka-stack` packages         |
| Config   | `kafka_config`    | Read/restore/create the manifest, issue security material, render config, compute the static fingerprint, format empty storage, decide the lifecycle path |
| Launch   | `kafka_launch`    | Converge an unhealthy cluster, join controllers and admit brokers one at a time, strict rolling, commit the manifest and applied static state |
| Provision | `kafka_provision` | Converge dynamic min-ISR, user credentials, ACLs, quotas, and declarative topics; report internal-topic RF drift |
| Monitor  | `kafka_monitor`   | Configure the protocol exporter and register VictoriaMetrics targets                          |
{.full-width}

The play uses `any_errors_fatal: true`. When a stage fails, dangerous forward progress stops; once you fix the cause, you can re-run against the full cluster, and the role recovers from live state and the persistent fingerprint instead of blindly reformatting.


--------

## Lifecycle Paths

The config stage uses the role's own admin channel to judge cluster health and select exactly one downstream path:

### Cold Start, First Deployment, or Repair

When the cluster is stopped or the health predicate does not hold, it enters converge:

1. Start all controller-capable nodes;
2. Wait for the controller listener and a dynamic quorum leader;
3. On the first bootstrap, verify that the initial controller directory IDs have entered the live quorum;
4. Start the pure brokers;
5. Wait for the broker listener and require the full cluster to be healthy;
6. Persist the static fingerprint only after the config has been proven to run successfully.

JMX plays no part in the lifecycle gates: the decisions for startup, admission, and rolling are made entirely on the role's own Kafka CLI/metadata admin channel.


### Adding Brokers or Controllers to a Healthy Cluster

Newly formatted `kafka_role: broker` nodes are admitted one at a time (`admit`): after starting, each must be registered and not fenced before the next one proceeds.

New combined/controller nodes join the dynamic quorum one at a time instead (`join`): on a commissioned cluster the node is formatted fresh with `--no-initial-controllers`, starts as an observer and catches up on metadata, then the role promotes it with `add-controller` and verifies through the health post-check that it entered the voter set with the cluster fully healthy. The join flow is re-entrant: an interrupted run continues from live state on the next rerun, and if the node's `node.id` still has a stale voter entry from a dead predecessor, the config phase fails fast with the exact `kafka-rm.yml` retirement command.

Admission/join only proves membership; existing partitions are not migrated onto the new broker automatically, so you must run an explicit reassignment separately.


### Static Changes on a Healthy Cluster

When the rendered static fingerprint changes, the strict rolling restart handles one node at a time:

- Before restarting, it checks the controller majority, that all voters have zero lag and recently completed catch-up, offline partitions, under-replicated, under-min-ISR, and the effective ISR of each partition once the target is excluded;
- After restarting, it requires the target controller to be back as a voter and re-caught-up, the target broker to be registered and not fenced, and its replicas to re-enter the ISR;
- Any failed gate immediately stops the remaining nodes.

If a fault to repair and a static change coexist, converge only starts the stopped members and does not restart the still-online members in parallel; once the quorum recovers and catches up, the static changes that have not yet been loaded proceed into the strict rolling restart.

If the static fingerprint is unchanged, Kafka is not restarted. Dynamic resource changes still take effect online during the resource-convergence stage.


--------

## Task Tags

| Tag                                           | Stage / Purpose                                                        |
|:----------------------------------------------|:----------------------------------------------------------------------|
| `kafka-id`                                    | The identity, full-cluster, and topology-derivation assertions that always run |
| `kafka_install`                               | The overall entry point for the install stage                         |
| `kafka_user`                                  | Create the `kafka` system user and group                              |
| `kafka_pkg`                                   | Install the `java-runtime` and `kafka-stack` packages per platform mapping |
| `kafka_config`                                | Manifest, security material, config rendering, static fingerprint, storage formatting, and path decision |
| `kafka_launch`                                | Converge, serialized controller join and broker admission, strict rolling, and manifest commission |
| `kafka_provision`                             | Convergence of dynamic min-ISR, topics, users, ACLs, and quotas       |
| `kafka_monitor` / `monitor`                   | The overall entry point for protocol-exporter configuration and monitoring registration |
| `kafka_register` / `register` / `add_metrics` | Refresh only the VictoriaMetrics file-discovery targets               |
{.full-width}

An ordinary configuration change should run the full `kafka.yml` and let the role choose its own lifecycle path. Stage tags are meant primarily for development, diagnostics, and controlled repair; you cannot bypass the full state machine with `-t kafka_config` or by limiting to a single node.


--------

## Identity, Formatting, and Manifest

Before writing any config, the role validates that:

- Every selected cluster contains all of its members;
- `kafka_seq` is unique, and the roles are either all omitted or all explicit;
- There is at least one controller and one broker;
- Racks are either all present or all absent across the broker-capable nodes;
- Ports are valid and non-conflicting, and the role-owned keys are not overridden by `kafka_parameters`;
- The manifest, security profile, `meta.properties`, and the live cluster identity are consistent.

A new cluster randomly generates the cluster ID and the initial controller directory IDs and formats each node in explicit dynamic-quorum mode. When `${kafka_data}/metadata/meta.properties` already exists, it validates the cluster ID and node ID locally; initial controller directory IDs are compared against the live quorum only on the first bootstrap — after commissioning, membership is authoritative in the live Raft state. The role never reformats existing storage automatically.

The authoritative bootstrap manifest lives on every cluster member:

```text
/etc/kafka/manifest.yml
```

Each member of a `scram` cluster additionally has `/etc/kafka/secrets.yml`; the admin node keeps no kafka state and resolves both from any member copy on every run. The live cluster is the authoritative runtime fact, but an ordinary playbook will not silently rewrite either side on conflict:

- When no member has a manifest copy but the storage is already formatted, it fails closed and asks you to restore the file on any member first;
- When a manifest exists but all data disks are empty, it fails closed;
- When the cluster ID, security profile, or controller identity conflicts, it fails closed;
- A new node whose `node.id` still has a stale predecessor voter entry in the quorum fails fast and asks you to retire it with `kafka-rm.yml` first.

Do not delete `meta.properties`, the manifest, or the secrets to bypass these protections.


--------

## Static Fingerprint and Recoverable Re-runs

The role computes an expected fingerprint over the static files that affect the Kafka process, and writes `/etc/kafka/.pigsty-applied-static.sha256` only after one of the following holds:

- Converge has successfully started and passed the global health check;
- The strict rolling restart has restarted this node, let it catch up, and passed the post-restart gates.

If the run is interrupted, changes that have not been proven to take effect are not recorded as "applied." The next full re-run can still recognize the pending static restart.


--------

## Resource Convergence and Monitoring Registration

Once the cluster is fully healthy, the resource-convergence and monitoring stages run in order:

1. Converge the role-owned dynamic cluster min-ISR;
2. Idempotently process the credentials, ACLs, and declared quotas of `kafka_users`;
3. Idempotently process the creation, partition growth, and explicit config of `kafka_topics`;
4. Check internal-topic RF drift, but do not reassign automatically;
5. Configure and start the protocol exporter on the first two broker-capable nodes, ordered by `kafka_seq`;
6. Refresh the file-discovery targets on all infra nodes.

Each instance maps to one target file, and both the JMX target and the (selected nodes') protocol-exporter target live under the same `kafka` scrape job:

```text
/infra/targets/kafka/<kafka_instance>.yml
```

The target files are refreshed on every full run to match the current exporter placement; target deletion is handled by the deregistration step of `kafka-rm.yml`.


--------

## Protected Rotation

The rotation variables are one-shot extra-vars and should not be written into `pigsty.yml`. The two actions are mutually exclusive and only one may run at a time; the prerequisites are that all members are formatted, the cluster is healthy, the security profile is `scram`, the role-owned secret material exists, and `kafka_rotate_confirm` matches the cluster name exactly.

### Internal Credential Rotation

```bash
./kafka.yml --check -l kf-main \
  -e kafka_rotate_credentials=true \
  -e kafka_rotate_confirm=kf-main

./kafka.yml -l kf-main \
  -e kafka_rotate_credentials=true \
  -e kafka_rotate_confirm=kf-main
```

The role uses active/standby internal identities: it first updates the inactive credential through the live admin channel, then atomically switches the local protected record, and enters the normal strict rolling restart. The old active identity is kept as the next round's standby, so a re-run after an interruption is recoverable.


### Certificate Rotation

```bash
./kafka.yml --check -l kf-main \
  -e kafka_rotate_certificates=true \
  -e kafka_rotate_confirm=kf-main

./kafka.yml -l kf-main \
  -e kafka_rotate_certificates=true \
  -e kafka_rotate_confirm=kf-main
```

The role discards the node certificates already issued in the shared PKI tree, re-issues a private key and certificate for each node from the same Pigsty CA, updates the PEM certificate bundle on the nodes, and enters the strict rolling restart. Because the old and new certificates are issued by the same CA and trust each other, no staged trust swap is needed; if the health precheck fails, the rotation does not begin and the existing certificates on the nodes are left unchanged.


--------

## `kafka-rm.yml`

Removal is not in `kafka.yml`; it uses the separate [`kafka-rm.yml`](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml) playbook. Selecting **all members** of a cluster with `-l` is a teardown, selecting a **strict subset** is member retirement; both share the same execution order:

Deregister the VictoriaMetrics targets (`kafka_deregister`) → stop and disable the `kafka`/`kafka_exporter` services (`kafka`) → remove the KRaft voter entry and broker registration through a surviving member (`kafka_retire`, which only has a surviving member to work through when a strict subset is selected) → delete exporter config, Systemd environment/units, and helper scripts (`kafka_config`) → delete the data directories and node-local `/etc/kafka` recovery state (`kafka_data`, controlled by `kafka_rm_data`) → optionally uninstall the packages (`kafka_pkg`, controlled by `kafka_rm_pkg`).

The safeguard switch is `kafka_safeguard`: when set to `true` (on the command line or in the inventory), the playbook aborts immediately and deletes nothing. An identity conflict, an exporter anomaly, or an ordinary startup failure is not a reason to delete data — converge with [`kafka.yml`](#kafkayml) first and read the failure reason.


### Cluster Teardown

```bash
./kafka-rm.yml -l kf-main --check                  # Rehearse the exact same full-cluster target first
./kafka-rm.yml -l kf-main                          # Remove the cluster: deregister monitoring and stop services; deletes data and /etc/kafka recovery state by default
./kafka-rm.yml -l kf-main -e kafka_rm_data=false   # Keep data and /etc/kafka recovery state; remove only service integration
./kafka-rm.yml -l kf-main -e kafka_rm_pkg=true     # Also uninstall the kafka-stack packages (the shared Java runtime is not removed)
```

{{% alert title="Permanent Deletion" color="danger" %}}
`kafka_rm_data` defaults to `true`: a single default-parameter run of `kafka-rm.yml` deletes the selected nodes' data/KRaft metadata and `/etc/kafka` recovery state. The playbook has no extra gate such as a confirmation string, so before running it you must verify the `-l` target, the backup or an explicit rebuild intent, and the impact on producers/consumers by hand.
{{% /alert %}}


### Member Retirement

```bash
./kafka-rm.yml -l 10.10.10.13 --check              # Rehearse the exact same member target first
./kafka-rm.yml -l 10.10.10.13                      # Retire one member: drop its voter entry and broker registration, then clean the node
```

The playbook attempts to remove the leaving node's KRaft voter entry through a surviving member (`remove-controller`, strictly serialized for several members) and drops its broker registration (`unregister`) before local cleanup. Metadata actions are delegated to the survivor, so this also works for nodes that are already dead and unreachable—step one of [Replace Failed Node](/docs/kafka/admin#replace-failed-node). Broker unregistration is deliberately re-entrant and tolerates failure; after a real run, inspect the live quorum, broker registrations, and replica health instead of treating the playbook status alone as proof of retirement.

Automated retirement does not remove the need for planning: after the shrink, the remaining controllers should stay odd-numbered and keep a live majority, and the remaining broker count must not fall below the highest topic RF; when the retiring broker still hosts partition replicas, the playbook prints a warning — a planned shrink should drain with a reassignment first.


--------

## Playbook Boundaries

Neither playbook performs partition reassignment and data balancing, topic/user deletion, online `plaintext` → `scram` migration, version upgrades and feature-level finalization, or data backup and disaster recovery, and neither deploys ecosystem components such as Connect, Schema Registry, MirrorMaker, or Cruise Control. For the full list see [Module Boundaries](/docs/kafka#current-boundaries); for day-to-day read-only checks and resource management, see [Administration](/docs/kafka/admin).
