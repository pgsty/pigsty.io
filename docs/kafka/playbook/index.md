# Playbook

> Run dynamic KRaft lifecycle, strict rolling, resource convergence, rotation, and removal with kafka.yml and kafka-rm.yml.

---

LLMS index: [llms.txt](/llms.txt)

---

[`kafka.yml`](https://github.com/pgsty/pigsty/blob/main/kafka.yml) deploys Apache Kafka 4.1+ dynamic KRaft and applies security, resources, and monitoring. [`kafka-rm.yml`](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml) removes members or tears down clusters.

> [!WARNING] Cluster Completeness Constraint
> Each selected `kafka_cluster` must include every member. Partial selection fails before writes. One cluster, several complete clusters, and a bare whole-inventory run are permitted.
> First run `--check` against the identical target. Before execution, manually verify backup or rebuild intent, capacity, business window, rollback, and change approval.


--------

## `kafka.yml`

```bash
./kafka.yml --check -l kf-main   # dry run first
./kafka.yml -l kf-main           # create or converge one cluster
./kafka.yml                      # bare run: create / converge ALL kafka clusters
```

**Every selected cluster must be complete.** Select one cluster, several clusters, or the whole inventory without a limit. Execution is serial within each cluster and concurrent across clusters. Partial cluster selection is rejected.

Check mode validates the API, cluster completeness, roles, racks, ports, manifest, and inspectable file changes. It skips formatting, startup, and live acceptance checks. Passing `--check` does not guarantee runtime success.


--------

## Execution Stages

A single `kafka.yml` play runs `node_id`, then `kafka`, like `pgsql.yml`. The role has six stages. Launch controls cross-node ordering: parallel bootstrap, serial controller join, serial broker admission, and strict rolling restarts.

| Stage    | Tag               | Purpose                                                                                       |
|:---------|:------------------|:----------------------------------------------------------------------------------------------|
| Identity | `kafka-id`        | Derive and assert identity, cluster completeness, roles, racks, ports, and reserved keys      |
| Install  | `kafka_install`   | Create the `kafka` system user, install the `java-runtime` and `kafka-stack` packages         |
| Config   | `kafka_config`    | Read/restore/create the manifest, issue security material, render config, compute the static fingerprint, format empty storage, decide the lifecycle path |
| Launch   | `kafka_launch`    | Converge an unhealthy cluster, join controllers and admit brokers one at a time, strict rolling, commit the manifest and applied static state |
| Provision | `kafka_provision` | Converge dynamic min-ISR, user credentials, ACLs, quotas, and declarative topics; report internal-topic RF drift |
| Monitor  | `kafka_monitor`   | Configure the protocol exporter and register VictoriaMetrics targets                          |
{.full-width}

`any_errors_fatal: true` stops further dangerous work after a stage failure. Fix the cause, then rerun on the full cluster. The role uses live state and persistent fingerprints to resume without blindly reformatting.


--------

## Lifecycle Paths

Configuration uses the role's administration channel to assess health and select one execution path:

### Cold Start, First Deployment, or Repair

Stopped or unhealthy clusters enter convergence:

1. Start controller-capable nodes.
2. Wait for the controller listener and a quorum leader.
3. At first bootstrap, verify that initial controller Directory IDs entered live quorum.
4. Start pure brokers.
5. Wait for broker listeners and full cluster health.
6. Save the static fingerprint only after proving that the configuration runs successfully.

Startup, admission, and rolling decisions use only the role's Kafka CLI/metadata administration channel. JMX does not participate.


### Adding Brokers or Controllers to a Healthy Cluster

Newly formatted `kafka_role: broker` nodes enter through `admit`, one at a time. Each must start, register, and become unfenced before the next proceeds.

New combined/controller nodes use serial `join`. A commissioned cluster formats each with `--no-initial-controllers`, starts it as an observer, and waits for metadata catch-up. The role then promotes it with `add-controller` and verifies voter membership and full health. Interrupted runs resume from live state. If `node.id` retains a dead predecessor's voter entry, configuration fails with the exact `kafka-rm.yml` retirement command.

Admission and join prove membership only. They do not move existing partitions to new brokers. Run explicit reassignment separately.


### Static Changes on a Healthy Cluster

When the rendered static fingerprint changes, the strict rolling restart handles one node at a time:

- Before restart, check controller majority, zero voter lag, recent catch-up, offline partitions, under-replication, and under-min-ISR. Also check effective partition ISR with the target excluded.
- After restart, require controller voter membership and catch-up, broker registration and unfenced state, and replica reentry into ISR.
- Any failed check immediately stops work on remaining nodes.

When repairs and static changes coincide, convergence starts only stopped members. It does not restart online members in parallel. After quorum recovery and catch-up, strict rolling restarts apply remaining static changes.

An unchanged static fingerprint causes no restart. Dynamic resources still update online during resource convergence.


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

Run full `kafka.yml` for ordinary configuration changes. Let the role select the lifecycle path. Tags mainly support development, diagnostics, and controlled repair. Do not bypass the state machine with `-t kafka_config` or single-node limits.


--------

## Identity, Formatting, and Manifest

Before writing configuration, the role verifies:

- Every selected cluster includes all members.
- `kafka_seq` is unique; roles are all omitted or all explicit.
- At least one controller and one broker exist.
- All broker-capable nodes have racks, or none do.
- Ports are valid and distinct; `kafka_parameters` does not override role-managed keys.
- The manifest, security profile, `meta.properties`, and live identity agree.

New clusters generate random Cluster and initial controller Directory IDs, then format nodes explicitly for dynamic quorum. Existing `${kafka_data}/metadata/meta.properties` triggers local Cluster/Node ID validation. Only first bootstrap compares initial controller Directory IDs with live quorum. After commissioning, live Raft state controls membership. The role never reformats existing storage automatically.

The authoritative bootstrap manifest lives on every cluster member:

```text
/etc/kafka/manifest.yml
```

`scram` members also store `/etc/kafka/secrets.yml`. The administration node keeps no Kafka state and retrieves both files from member copies each run. Live state controls runtime facts. On conflict, ordinary playbooks do not silently overwrite either side:

- Formatted storage without a member manifest copy blocks execution. Restore the file on any member first.
- A manifest with all data disks empty blocks execution.
- Conflicting Cluster ID, security profile, or controller identity blocks execution.
- A new node with a stale predecessor voter entry for its `node.id` must first be retired with `kafka-rm.yml`.

Do not delete `meta.properties`, the manifest, or the secrets to bypass these protections.


--------

## Static Fingerprint and Recoverable Re-runs

The role fingerprints static files that affect Kafka. It writes `/etc/kafka/.pigsty-applied-static.sha256` only after one of these conditions:

- Convergence starts the cluster successfully and passes global health checks.
- Strict rolling restarts the node, completes catch-up, and passes post-restart checks.

Interrupted runs do not mark unverified changes as applied. The next full run still detects the pending static restart.


--------

## Resource Convergence and Monitoring Registration

After full cluster health, resource and monitoring stages run in order:

1. Apply role-managed dynamic cluster min-ISR.
2. Idempotently apply `kafka_users` credentials, ACLs, and declared quotas.
3. Idempotently create `kafka_topics`, increase partitions, and apply declared settings.
4. Check internal-topic RF drift without automatic reassignment.
5. Start protocol exporters on the first two broker-capable nodes by `kafka_seq`.
6. Refresh discovery targets on all INFRA nodes.

Each instance has one target file containing its JMX target when enabled and any selected protocol exporter target, all under the `kafka` scrape job. An instance with JMX disabled and no protocol exporter writes an empty list, `[]`:

```text
/infra/targets/kafka/<kafka_instance>.yml
```

Full runs refresh targets for the current exporter placement and JMX toggle. `kafka-rm.yml` deregistration deletes targets. After changing `kafka_jmx_exporter_enabled`, run the full playbook to restart JVMs in rolling order; registration alone does not change the Java Agent's running state.


--------

## Protected Rotation

Rotation variables are one-time extra-vars; do not put them in `pigsty.yml`. Run only one of the mutually exclusive actions. Every member must be formatted. The cluster must be healthy, use `scram`, and retain role-managed secrets. `kafka_rotate_confirm` must exactly match the cluster name.

### Internal Credential Rotation

```bash
./kafka.yml --check -l kf-main \
  -e kafka_rotate_credentials=true \
  -e kafka_rotate_confirm=kf-main

./kafka.yml -l kf-main \
  -e kafka_rotate_credentials=true \
  -e kafka_rotate_confirm=kf-main
```

The role maintains active and standby internal identities. It updates the inactive credential through the live administration channel, then atomically switches the protected local record. A strict rolling restart follows. The old active identity becomes standby for the next rotation. Reruns can therefore recover after interruption.


### Certificate Rotation

```bash
./kafka.yml --check -l kf-main \
  -e kafka_rotate_certificates=true \
  -e kafka_rotate_confirm=kf-main

./kafka.yml -l kf-main \
  -e kafka_rotate_certificates=true \
  -e kafka_rotate_confirm=kf-main
```

The role removes issued node certificates from shared PKI. The same Pigsty CA issues new node keys and certificates. It updates node PEM bundles, then performs strict rolling restarts. Old and new certificates share trust, so staged CA changes are unnecessary. If the health precheck fails, rotation never starts and deployed certificates stay unchanged.


--------

## `kafka-rm.yml`

Removal uses separate [`kafka-rm.yml`](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml), never `kafka.yml`. It **requires non-empty `-l/--limit`** and fails before roles if omitted. Selecting **all members** with `-l` tears down a cluster. A **strict subset** retires members. Both follow this order:

1. Deregister VictoriaMetrics targets (`kafka_deregister`).
2. Stop and disable `kafka` and `kafka_exporter` (`kafka`).
3. Remove voter entries and broker registrations through survivors (`kafka_retire`). Survivors exist only for strict-subset selection.
4. Delete exporter configuration, Systemd environments/units, and helpers (`kafka_config`).
5. Delete data and node-local `/etc/kafka` recovery state (`kafka_data`), controlled by `kafka_rm_data`.
6. Optionally uninstall packages (`kafka_pkg`), controlled by `kafka_rm_pkg`.

Before deregistration or shutdown, the role validates a dedicated absolute `kafka_data` path. It must contain no `.`/`..` segments. Forbidden roots are `/`, `/data`, `/var`, `/etc`, `/opt`, `/usr`, `/home`, `/root`, and `/pg`. `kafka_safeguard` set to `true` in inventory or the command line immediately stops removal without deletion. Identity conflicts, exporter errors, and ordinary startup failures do not justify data deletion. First run [`kafka.yml`](#kafkayml) and read the failure reason.


### Cluster Teardown

```bash
./kafka-rm.yml -l kf-main                          # Remove the cluster: deregister monitoring and stop services; deletes data and /etc/kafka recovery state by default
./kafka-rm.yml -l kf-main -e kafka_rm_data=false   # Keep data and /etc/kafka recovery state; remove only service integration
./kafka-rm.yml -l kf-main -e kafka_rm_pkg=true     # Also uninstall the kafka-stack packages (the shared Java runtime is not removed)
```

> [!CAUTION] Permanent Deletion
> `kafka_rm_data` defaults to `true`. One default `kafka-rm.yml` run deletes selected nodes' data, KRaft metadata, and `/etc/kafka` recovery state.
> There is no additional confirmation string. Before execution, manually verify the `-l` target, backups or explicit rebuild intent, and producer/consumer impact.


### Member Retirement

```bash
./kafka-rm.yml -l 10.10.10.13                      # Retire one member: drop its voter entry and broker registration, then clean the node
```

Partial retirement needs a broker-capable (`combined`/`broker`) survivor and a controller-capable (`combined`/`controller`) survivor outside `-l`. One combined node can satisfy both. Missing either stops execution before deregistration or shutdown. Survivors run `remove-controller`, strictly serializing multiple targets, then broker `unregister`, before local cleanup. Delegation also handles dead, unreachable targets: step one of [Replace Failed Node](/docs/kafka/admin#replace-failed-node).

Broker unregistration tolerates failure for repeatable execution. After a real run, verify live quorum, broker registrations, and replica health. Playbook success alone does not prove retirement.

Plan retirement even with automation. Remaining controllers should have an odd count and live majority. Remaining brokers must support the highest topic RF. The playbook warns if departing brokers still hold replicas. For planned shrink, drain them through reassignment first.


--------

## Playbook Boundaries

Neither playbook reassigns partitions, balances data, deletes topics/users, or migrates online from `plaintext` to `scram`. They do not upgrade versions, finalize features, back up data, or perform disaster recovery. They do not deploy Connect, Schema Registry, MirrorMaker, or Cruise Control. See [Module Boundaries](/docs/kafka#current-boundaries) and [Administration](/docs/kafka/admin).
