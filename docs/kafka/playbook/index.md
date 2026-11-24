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
{.full-width .wide .expand}

`any_errors_fatal: true` stops further dangerous work after a stage failure. Fix the cause, then rerun on the full cluster. The role uses live state and persistent fingerprints to resume without blindly reformatting.


--------

## Lifecycle Paths

Configuration uses the role's administration channel to assess health and select one execution path:

### Cold Start, First Deployment, or Repair

Stopped or unhealthy clusters enter convergence:

1. Start controller-capable nodes.
2. Wait for the controller listener and a quorum leader.
3. On initial bootstrap, verify that the initial Controller Directory IDs appear in the live Quorum. When restoring a fully stopped commissioned cluster with pending Controller Observers, resume their `add-controller` promotion after recovery;
4. Start pure brokers.
5. Wait for broker listeners and full cluster health.
6. Commission the Manifest (`kafka_commission`) and persist the static fingerprint only after the configuration has run successfully and all declared Controllers are official Voters, rather than Observers.

Startup, admission, and rolling decisions use only the role's Kafka CLI/metadata administration channel. JMX does not participate.


### Adding Brokers or Controllers to a Healthy Cluster

Newly formatted `kafka_role: broker` nodes enter through `admit`, one at a time. Each must start, register, and become unfenced before the next proceeds.

New Combined/Controller nodes join the dynamic Quorum one at a time (`join`). For a commissioned cluster, the role formats each new node with `--no-initial-controllers`, starts it as an Observer, waits for metadata catch-up, then runs `add-controller` to promote it to Voter. Post-checks require membership in the Voter set and full cluster health; the static fingerprint is persisted only after promotion. The process is reentrant and resumes from live state after interruption. If a dead predecessor's Voter entry still uses the node's `node.id`, configuration fails early with the exact `kafka-rm.yml` command needed to retire it first.

Admission and join prove membership only. They do not move existing partitions to new brokers. Run explicit reassignment separately.


### Static Changes on a Healthy Cluster

When the rendered static fingerprint changes, the strict rolling restart handles one node at a time:

- Before restart, check Controller majority, zero lag and recent catch-up for all official Voters, Offline Partitions, Under Replicated, Under Min ISR, and each partition's effective ISR after removing the target;
- Single-Controller or single-Broker development clusters skip majority/ISR prechecks with a brief outage warning. Two-Controller clusters skip the Controller majority-loss check only when both declared Controllers are confirmed active official Voters, never pending Observers; Broker `min.insync.replicas` checks remain, and a warning is emitted.
- After restart, require controller voter membership and catch-up, broker registration and unfenced state, and replica reentry into ISR.
- Any failed check immediately stops work on remaining nodes.

When repairs and static changes coincide, convergence starts only stopped members. It does not restart online members in parallel. After quorum recovery and catch-up, strict rolling restarts apply remaining static changes.

An unchanged static fingerprint causes no restart. Dynamic resources still update online during resource convergence.


--------

## Task Tags

Main `kafka.yml` tags:

| Tag | Phase / Purpose |
|:----------------------------------------------|:-------------------------------------------------------|
| `id` / `node-id` | Derive host identity through `node_id` |
| `kafka-id` | Always-run identity, full-cluster scope, and topology assertions |
| `kafka_install` | Installation entry point, including `kafka_user` and `kafka_pkg` |
| `kafka_config` | Configuration entry point, including `kafka_dir`, `kafka_meta`, `kafka_manifest`, `kafka_security`, `kafka_fingerprint`, `kafka_format`, and `kafka_lifecycle` |
| `kafka_launch` | Launch entry point, including `converge`, `join`, `admit`, `roll`, and `kafka_commission` |
| `kafka_provision` | Converge dynamic minISR, Topics, Users, ACLs, and Quotas |
| `kafka_monitor` / `monitor` | Configure/clean protocol exporters (`kafka_exporter`) and register monitoring |
| `kafka_register` / `register` / `add_metrics` | Refresh VictoriaMetrics file-discovery targets only |
{.full-width}

Main `kafka-rm.yml` tags:

| Tag | Phase / Purpose |
|:------------------------------------------------|:-----------------------------------------|
| `kafka-id` | Always-run identity, path safety, and deletion protection assertions |
| `kafka_retire` | For proper-subset retirement, remove KRaft Voters before stopping and unregister Brokers afterward through survivors |
| `kafka_deregister` / `deregister` / `rm_metrics` | Remove VictoriaMetrics file-discovery targets |
| `kafka` | Stop and disable `kafka_exporter` and `kafka` services |
| `kafka_config` | Delete exporter configuration, systemd units/environment files, and health scripts |
| `kafka_data` | Delete data roots and `/etc/kafka` according to `kafka_rm_data` |
| `kafka_pkg` | Uninstall `kafka-stack` according to `kafka_rm_pkg` |
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
- Fail closed if a commissioned Manifest exists but every data disk is empty; automatically discard and regenerate an uncommissioned Manifest left before initial formatting completed;
- Conflicting Cluster ID, security profile, or controller identity blocks execution.
- A new node with a stale predecessor voter entry for its `node.id` must first be retired with `kafka-rm.yml`.

Do not delete `meta.properties`, the manifest, or the secrets to bypass these protections.


--------

## Static Fingerprint and Recoverable Re-runs

The role fingerprints static files that affect Kafka. It writes `/etc/kafka/.pigsty-applied-static.sha256` only after one of these conditions:

- Converge has started successfully and passed global health checks; nodes awaiting Quorum promotion defer persistence until `join` promotion completes;
- Strict rolling restarts the node, completes catch-up, and passes post-restart checks.

Interrupted runs do not mark unverified changes as applied. The next full run still detects the pending static restart.


--------

## Resource Convergence and Monitoring Registration

After full cluster health, resource and monitoring stages run in order:

1. Apply role-managed dynamic cluster min-ISR.
2. Idempotently apply `kafka_users` credentials, ACLs, and declared quotas.
3. Idempotently create `kafka_topics`, increase partitions, and apply declared settings.
4. Check internal-topic RF drift without automatic reassignment.
5. Configure and start protocol exporters on the first two Broker-capable nodes ordered by `kafka_seq`, and stop and clean stale exporters on all other nodes;
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

Removal uses the separate [`kafka-rm.yml`](https://github.com/pgsty/pigsty/blob/main/kafka-rm.yml) playbook, not `kafka.yml`.
A **nonempty `-l/--limit` is mandatory**; running without it fails before entering the role. Selecting **all members** of a cluster decommissions the cluster; selecting a **proper subset** retires those members, in this order:

1. Remove KRaft Voter entries through a survivor (`kafka_retire`, proper subsets only, **before stopping services or deleting disks**). Quorum must be readable; an unreadable Quorum or failed `remove-controller` aborts the entire play before further stops or deletion;
2. Deregister VictoriaMetrics targets (`kafka_deregister`);
3. Stop and disable `kafka_exporter` and `kafka` (`kafka`);
4. Unregister Brokers through a survivor (`kafka_retire`, proper subsets only, using `kafka-cluster.sh unregister` after stopping). Only already-unregistered results are tolerated; other errors abort;
5. Delete exporter configuration, systemd environment/unit files, and helper scripts (`kafka_config`);
6. Delete data directories and node-local `/etc/kafka` recovery state (`kafka_data`, controlled by `kafka_rm_data`);
7. Optionally uninstall packages (`kafka_pkg`, controlled by `kafka_rm_pkg`).

Before any retirement, deregistration, or stop, the role verifies that `kafka_data` is a dedicated safe absolute path without `.` or `..` components. It cannot be `/`, `/data`, `/var`, `/etc`, `/opt`, `/usr`, `/home`, `/root`, or `/pg`.
`kafka_safeguard` protects against accidental deletion: when `true` in the CLI or inventory, the playbook aborts without deleting anything. Identity conflicts, exporter errors, and ordinary startup failures are not reasons to delete data. First converge with [`kafka.yml`](#kafkayml) and inspect the failure.

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
./kafka-rm.yml -l 10.10.10.13                      # retire one member: remove Voter, stop, unregister Broker, clean local state
```

Partial retirement requires at least one Broker-capable (`combined`/`broker`) and one Controller-capable (`combined`/`controller`) member outside `-l`.
They may be the same Combined node. Without either survivor, the playbook fails before retirement, deregistration, or stopping.
While target services are still running, the playbook uses a survivor to run `remove-controller`. Multiple members are retired strictly serially; shrinking two Voters to one is supported. If dead and live targets coexist, retire dead members first to restore writable Quorum. After successful removal, it deregisters monitoring, stops local services, then uses a survivor to `unregister` the Broker and cleans local data.
Metadata operations are delegated to survivors, so they also work for dead, unreachable targets. This is the first step in [replacing a failed node](/docs/kafka/admin#replace-failed-node).
Voter removal and Broker deregistration both fail closed. Only an already-absent Voter or already-unregistered Broker (`no longer registered` / `IdNotRegisteredException`) is accepted for idempotent reruns. After execution, verify live Quorum, Broker registration, and replica health.

Plan retirement even with automation. Remaining controllers should have an odd count and live majority. Remaining brokers must support the highest topic RF. The playbook warns if departing brokers still hold replicas. For planned shrink, drain them through reassignment first.


--------

## Playbook Boundaries

Neither playbook reassigns partitions, balances data, deletes topics/users, or migrates online from `plaintext` to `scram`. They do not upgrade versions, finalize features, back up data, or perform disaster recovery. They do not deploy Connect, Schema Registry, MirrorMaker, or Cruise Control. See [Module Boundaries](/docs/kafka#current-boundaries) and [Administration](/docs/kafka/admin).
