---
title: Manual PITR Drill
weight: 1706
description: Run, validate, and complete PostgreSQL point-in-time recovery in explicit stages inside an isolated sandbox.
icon: fa-solid fa-flask
categories: [Task]
aliases: [/docs/pgsql/tutorial/example/]
---

This tutorial drills PostgreSQL point-in-time recovery in Pigsty v4.5.0's four-node sandbox. The main path runs [`pgsql-pitr.yml`](/docs/pgsql/backup/restore/) as `down → pitr → up`, giving the operator a separate validation gate before data overwrite, timeline promotion, and HA reconstruction.

For one current node, use [`pig pitr`](/docs/pig/pitr/). For direct pgBackRest control, see the low-level [`pg-pitr` utility](/docs/pgsql/tutorial/pg-fork/#pg-pitr).

> [!CAUTION] Follow this literally only in a disposable sandbox
> Recovery stops Patroni/PostgreSQL and overwrites the target PGDATA with `pgbackrest --force restore`; the `up` stage also deletes the target cluster's etcd prefix and rebuilds Patroni state. The playbook prints a plan but has **no interactive confirmation**. Before production use, the operator must state and confirm the exact cluster and recovery point, verify a recent usable backup that has been independently tested, run `--check` with exactly the same `-l`, variables, and tags, and schedule a maintenance window. This tutorial does not authorize running these commands in any production environment.


--------

## Prepare an Isolated Sandbox

Use [Vagrant](/docs/deploy/vagrant/) or another disposable four-node lab and select the `ha/full` template, which includes a Silo backup repository:

```bash
curl -fsSL https://repo.pigsty.io/get | bash
cd ~/pigsty
./configure -c ha/full
./deploy.yml
```

`ha/full` defines the single-node `pg-meta`, three-node `pg-test`, and a Silo/pgBackRest repository. The rest of this tutorial uses the exact target `pg-meta`; do not copy that selector into another environment without resolving its inventory first.

Initial deployment and backup both change sandbox state. Production environments require their own deployment and backup approval process.


--------

## Establish Recovery Evidence

Start with read-only topology, backup-chain, and WAL-range checks:

```bash
pig pg list pg-meta
sudo -iu postgres pig pb info
sudo -iu postgres pig pb check
```

`info` must show at least one usable backup with `status: ok`, and archived WAL must cover the intended target. `check` validates the current stanza and archive path, but it does not replace a real restore drill or independent-copy validation.

In the sandbox, run Pigsty's heartbeat helper to create an easy-to-verify time series:

```bash
sudo -iu postgres /pg/bin/pg-heartbeat
```

Record, then stop the workload:

- the timezone-qualified timestamp you intend to recover to;
- heartbeat, LSN, and transaction boundaries around that point;
- current primary, timeline, and backup label;
- target cluster `pg-meta` and target node.

Inspecting real application tables requires separate authorization. This tutorial uses only sandbox heartbeat data.


--------

## Declare the Recovery Task

Declare the target under `pg-meta.vars` in the sandbox inventory:

```yaml
pg_pitr:
  cluster: pg-meta
  time: "2026-08-13 10:00:00+08"
  action: pause
  archive: true
  backup: false
```

- `cluster` is the source backup stanza and defaults to the target `pg_cluster`.
- `action: pause` pauses PostgreSQL at the target for a human validation gate.
- `archive: true` preserves archive settings.
- `backup: true` is not a safe-backup substitute: it deletes an existing `<pg_data>-backup` before moving current PGDATA, so this drill keeps it `false`.

The same object can be supplied temporarily with `-e`, but preflight and all three stages must repeat the exact same valid JSON to prevent variable drift.


--------

## Full Preflight

Before any stop or write action, check the complete workflow against the same target:

```bash
./pgsql-pitr.yml -l pg-meta --check
```

Confirm that Ansible resolves exactly `pg-meta`, then review the output for:

- source stanza, recovery type, time, timeline, and action;
- destination `pg_data`, port, and repository;
- tablespace/link mappings;
- `archive` and `backup` behavior.

`--check` validates inventory, variables, and task selection. It cannot prove that a pgBackRest backup is restorable. Any change to target, backup, or variables requires a new preflight.


--------

## Stage One: Stop

Only after the operator reconfirms exact target `pg-meta`, recovery point, and maintenance window, run:

```bash
./pgsql-pitr.yml -l pg-meta -t down
```

`down` attempts to pause Patroni automatic failover, stops Patroni on every target member, and uses immediate shutdown if PostgreSQL remains running. Then verify every target node rather than trusting only the playbook result:

```bash
sudo systemctl is-active patroni
sudo -iu postgres pg_ctl -D /pg/data status
```

Expected results are `inactive` and “server is not running.” If any member remains active, stop and diagnose; do not enter restore.


--------

## Stage Two: Restore and Validate

Recheck `pg_pitr` and the target nodes before running the destructive stage:

```bash
./pgsql-pitr.yml -l pg-meta -t pitr
```

This stage:

1. renders `/pg/conf/pitr.conf` and `/pg/bin/pg-restore`;
2. optionally moves old PGDATA according to `backup`;
3. creates the destination and runs pgBackRest restore with `--force` and `delta=y`;
4. starts PostgreSQL directly and waits for a consistent recovery state in the log;
5. prints a `pg_controldata` summary.

Control data proves only that the directory has readable control state; it does not prove that a time, XID, or application boundary is correct. With `action: pause`, confirm WAL reached and paused near the target:

```bash
sudo -iu postgres psql -p 5432 -Atqc \
  'SELECT pg_is_in_recovery(), pg_is_wal_replay_paused(), pg_last_wal_replay_lsn(), pg_last_xact_replay_timestamp()'
```

Then inspect only the smallest authorized data scope; in the sandbox, check heartbeat rows. If the target is wrong:

1. keep every Patroni member stopped;
2. stop the manually started PostgreSQL;
3. adjust the target and rerun the complete `--check`;
4. rerun the `pitr` stage.

Do not run `up` or allow replicas from the old timeline to rejoin.


--------

## Promote and Stage Three: Rebuild HA

Promote only after the operator accepts the recovered result and the creation of a new timeline:

```bash
sudo -iu postgres pg_ctl -D /pg/data promote
sudo -iu postgres psql -p 5432 -Atqc 'SELECT pg_is_in_recovery()'
```

The expected result is `f`. Promotion is not read-only validation and cannot be losslessly undone.

With every Patroni member still stopped and exact target still `pg-meta`, run:

```bash
./pgsql-pitr.yml -l pg-meta -t up
```

`up` deletes the `/pg/pg-meta/` prefix from etcd for the primary (the effective prefix also depends on `pg_namespace` and Citus settings), stops the manually started PostgreSQL, starts Patroni on the primary, then starts replicas one by one and resumes HA. The etcd deletion task tolerates errors, so a successful playbook result does not prove that stale DCS state was removed correctly.


--------

## Post-Recovery Acceptance

Verify each layer; “service started” is not recovery completion:

```bash
pig pg list pg-meta
sudo -iu postgres psql -Atqc \
  "SELECT pg_is_in_recovery(), pg_current_wal_lsn(), current_setting('archive_mode')"
sudo -iu postgres pig pb check
```

Also confirm:

- exactly the intended member is primary and replicas stream from the new timeline;
- HAProxy/VIP/DNS and application traffic point only to accepted instances;
- data and event boundaries around the recovery target are correct;
- `archive_mode`, `archive_command`, and new-WAL archiving work;
- monitoring, alerts, and the backup repository contain no stale cluster state.

After the new timeline is stable, create and verify a new full backup under the applicable approval process:

```bash
sudo -iu postgres pg-backup full
sudo -iu postgres pig pb info
```

If the recovery explicitly used `archive: false`, it wrote `archive-mode=off`. Reset that override and perform a controlled restart only after validating recovery and confirming a maintenance window; default `archive: true` does not require this step.


--------

## Multi-Node and Cross-Cluster Recovery

- Old-timeline replicas must not rejoin without validation. `up` starts replicas one at a time and waits for clone/recovery; monitor them to completion.
- In cross-stanza recovery, `pg_pitr.cluster` is the source while `-l` is the destination being overwritten. Record and state both separately.
- Cross-cluster recovery should normally use `archive: false` so a test destination cannot write WAL into the source stanza. Enable its own archiving only after acceptance and [post-clone stanza cleanup](/docs/pgsql/backup/cluster/#post-clone-cleanup).
- `link_map`, `data`, `port`, and a temporary `repo` change the actual storage and data targets; include all of them in both `--check` and human review.


--------

## Related

- [Complete Restore Operations Reference](/docs/pgsql/backup/restore/)
- [PITR Concepts and Target Semantics](/docs/concept/pitr/)
- [Backup Chains and Recovery Window](/docs/pgsql/backup/mechanism/)
- [Clone and Low-Level `pg-pitr`](/docs/pgsql/tutorial/pg-fork/)
- [`pig pitr`](/docs/pig/pitr/)
