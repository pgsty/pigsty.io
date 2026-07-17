---
title: Playbook
weight: 4905
description: Run dynamic KRaft lifecycle, strict rolling, resource convergence, rotation, and removal with kafka.yml and kafka-rm.yml.
icon: fa-solid fa-scroll
module: [KAFKA]
categories: [Task]
aliases: [/docs/pilot/kafka/playbook]
---


The KAFKA module ships two playbooks: [`kafka.yml`](https://github.com/pgsty/pigsty/blob/main/kafka.yml) deploys an Apache Kafka 4.x dynamic KRaft cluster and converges its security,
resource, and monitoring state; [`kafka-rm.yml`](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml) tears down a cluster or removes a member.

{{% alert title="Exact Full-Cluster Constraint" color="warning" %}}
Every lifecycle operation must use `-l/--limit` to select all members of a single `kafka_cluster`. A missing limit, a partial selection, or a cross-cluster selection fails before anything is written. Run `--check` first against the exact same target; before the real run, still verify the backup/rebuild intent, capacity, business window, rollback plan, and change approval by hand.
{{% /alert %}}


--------

## Basic Usage

```bash
./kafka.yml --check -l kf-main
./kafka.yml -l kf-main
```

Check mode validates the public API, the full cluster, roles, racks, ports, the manifest, and any inspectable file changes, but it skips formatting, service startup, and live health acceptance. A successful `--check` is therefore not a guarantee of a successful runtime.


--------

## Execution Stages

`kafka.yml` is itself a thin wrapper: a single play runs the `node_id` and `kafka` roles in sequence, mirroring the structure of `pgsql.yml`. Inside the role, the lifecycle is split into six task stages; all cross-node ordering (parallel bootstrap, one-broker-at-a-time admission, strict node-by-node rolling) is handled centrally by the launch stage:

| Stage    | Tag               | Purpose                                                                                       |
|:---------|:------------------|:----------------------------------------------------------------------------------------------|
| Identity | `kafka-id`        | Derive and assert identity, the full-cluster limit, roles, racks, ports, and reserved keys    |
| Install  | `kafka_install`   | Create the `kafka` system user, install the `java-runtime` and `kafka-stack` packages         |
| Config   | `kafka_config`    | Read/restore/create the manifest, issue security material, render config, compute the static fingerprint, format empty storage, decide the lifecycle path |
| Launch   | `kafka_launch`    | Converge an unhealthy cluster, admit new brokers one at a time, strict node-by-node rolling, commit the manifest and applied static state |
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
3. Verify that the initial controller directory IDs are still in the live quorum;
4. Start the pure brokers;
5. Wait for the broker listener and require the full cluster to be healthy;
6. Persist the static fingerprint only after the config has been proven to run successfully.

JMX plays no part in the lifecycle gates: the decisions for startup, admission, and rolling are made entirely on the role's own Kafka CLI/metadata admin channel.


### Adding Pure Brokers to a Healthy Cluster

The role only auto-admits newly formatted `kafka_role: broker` nodes. It handles one new broker at a time and requires it to be registered and not fenced before continuing. Adding a controller or combined node cannot take this shortcut.

Admission only proves that the service has joined; existing partitions are not migrated onto the new broker automatically, so you must run an explicit reassignment separately.


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
| `kafka_launch`                                | Converge, serialized pure-broker admission, strict single-node rolling, and manifest commission |
| `kafka_provision`                             | Convergence of dynamic min-ISR, topics, users, ACLs, and quotas       |
| `kafka_monitor` / `monitor`                   | The overall entry point for protocol-exporter configuration and monitoring registration |
| `kafka_register` / `register` / `add_metrics` | Refresh only the VictoriaMetrics file-discovery targets               |
{.full-width}

An ordinary configuration change should run the full `kafka.yml` and let the role choose its own lifecycle path. Stage tags are meant primarily for development, diagnostics, and controlled repair; you cannot bypass the full state machine with `-t kafka_config` or by limiting to a single node.


--------

## Identity, Formatting, and Manifest

Before writing any config, the role validates that:

- The limit contains exactly all members of one Kafka cluster;
- `kafka_seq` is unique, and the role sequences are either all omitted or all explicit;
- There is at least one controller and one broker;
- Racks are either all present or all absent across the broker-capable nodes;
- Ports are valid and non-conflicting, and the role-owned keys are not overridden by `kafka_parameters`;
- The manifest, security profile, `meta.properties`, and the live cluster identity are consistent.

A new cluster randomly generates the cluster ID and the initial controller directory IDs and formats each node in explicit dynamic mode. When `${kafka_data}/metadata/meta.properties` already exists, it only validates the cluster ID, node ID, and directory ID; it does not reformat automatically.

The bootstrap manifest lives at:

```text
files/kafka/<kafka_cluster>/manifest.yml
```

Each cluster member also keeps an authoritative copy at `/etc/kafka/manifest.yml` (a `scram` cluster additionally has `/etc/kafka/secrets.yml`). The live cluster is the authoritative runtime fact, but an ordinary playbook will not silently rewrite either side on conflict:

- When the admin-node cache is lost, it is restored automatically from any member's node copy, without reformatting;
- When neither the admin node nor any member has a manifest but the storage is already formatted, it fails closed and asks you to restore the manifest first;
- When a manifest exists but all data disks are empty, it fails closed;
- When the cluster ID, security profile, or controller identity conflicts, it fails closed;
- A non-initial controller newly added in the inventory does not automatically become a voter.

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

The role discards the node certificates already issued in the admin-node cache, re-issues a private key and certificate for each node from the same Pigsty CA, updates the PEM certificate bundle on the nodes, and enters the strict rolling restart. Because the old and new certificates are issued by the same CA and trust each other, no staged trust swap is needed; if the health precheck fails, the rotation does not begin and the existing certificates on the nodes are left unchanged.


--------

## Cluster Teardown

Cluster removal is not in `kafka.yml`; it uses the separate [`kafka-rm.yml`](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml) playbook:

```bash
./kafka-rm.yml -l kf-main                          # Remove the cluster: deregister monitoring, stop services, delete config; deletes data and manifest by default
./kafka-rm.yml -l kf-main -e kafka_rm_data=false   # Keep the on-disk data, remove only services and config
./kafka-rm.yml -l kf-main -e kafka_rm_pkg=true     # Also uninstall the kafka-stack packages (the shared Java runtime is not removed)
```

The execution order is: deregister the VictoriaMetrics targets (`kafka_deregister`) → stop and disable the `kafka`/`kafka_exporter` services (`kafka`) → delete the config, Systemd units, and helper scripts (`kafka_config`) → delete the data directories and the admin-node manifest/secrets/PKI cache (`kafka_data`, controlled by `kafka_rm_data`) → optionally uninstall the packages (`kafka_pkg`, controlled by `kafka_rm_pkg`).

The safeguard switch is `kafka_safeguard`: when set to `true` (on the command line or in the inventory), the playbook aborts immediately and deletes nothing.

{{% alert title="Permanent Deletion" color="danger" %}}
`kafka_rm_data` defaults to `true`: a single default-parameter run of `kafka-rm.yml` deletes the selected nodes' data/KRaft metadata, node security state, and the bootstrap manifest, secrets, and PKI cache on the admin node. The playbook has no extra gate such as a confirmation string, so before running it you must verify the `-l` target, the backup or an explicit rebuild intent, and the impact on producers/consumers by hand.
{{% /alert %}}

`kafka-rm.yml` can also select a single member for scale-in (for example, `-l 10.10.10.13`). But removing a controller-capable member is a quorum membership change: you must first complete the explicit `remove-controller` procedure and confirm the new majority. An identity conflict, an exporter anomaly, or an ordinary startup failure is not a reason to delete data.


--------

## Playbook Boundaries

`kafka.yml` currently does not perform automatically:

- The controller `add-controller` / `remove-controller` membership procedures;
- Reassignment of existing partitions after a new broker joins, decommission drain, and data balancing;
- Changing the RF of an existing topic, deleting a topic, or deleting a user;
- Online migration between `plaintext` and `scram` for a formatted cluster;
- Kafka version upgrades, feature-level finalization, cross-version migration, and rollback;
- Kafka data backup, recovery orchestration, and disaster drills;
- Ecosystem components such as Connect, Schema Registry, MirrorMaker, and Cruise Control.

These operations require their own production runbooks. For day-to-day read-only checks and resource management, see [Administration](/docs/kafka/admin).
