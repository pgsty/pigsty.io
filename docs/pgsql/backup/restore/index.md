# Restore Operations

> Perform PITR with pgsql-pitr.yml, pig pitr, or pig pb restore; select targets, run stages, and verify the result.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty provides three restore interfaces.
They use the [same parameter semantics](/docs/pgsql/backup/mechanism/#parameter-mapping) for different scopes:

| Entry point | Use case | What it controls |
|:------------|:---------|:-----------------|
| [`pgsql-pitr.yml`](#quick-start) | Production cluster recovery | HA pause, multiple nodes, etcd cleanup, restore, and restart |
| [`pig pitr`](#single-instance-pig-pitr) | A local database node | Single-instance orchestration without the admin node |
| [`pig pb restore`](#primitive-pig-pb-restore) | An instance not managed by Patroni | A direct pgBackRest restore wrapper |
{.full-width}

For a sandbox drill, see [Manual Recovery](/docs/pgsql/tutorial/pitr).
To recover into another cluster without changes to production, see [Clone a PG Cluster](/docs/pgsql/backup/cluster/).

> [!CAUTION] PITR overwrites the target cluster
> `pgsql-pitr.yml` pauses HA and stops Patroni/PostgreSQL.
> It overwrites the target data directory with `pgbackrest --force restore`.
> It then deletes the target cluster's etcd prefix and rebuilds HA.
> The playbook prints a plan but **does not wait for confirmation**.
> Before a real restore, inspect the topology with `pig pg list <target-cluster>`.
> Verify a recent usable backup and recovery window with `pig pb info`.
> Have the operator state and confirm the exact target cluster and recovery point.
> For production recovery, schedule a maintenance window and retain an independently verified backup.


--------

## Quick Start

To roll `pg-meta` back to an earlier time, declare [`pg_pitr`](#pitr-parameter-definition):

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_pitr: { time: '2025-07-13 10:00:00+00', action: promote }
```

Before recovery, verify the same target with these checks, then run the playbook:

```bash
pig pg list pg-meta
pig pb info
./pgsql-pitr.yml -l pg-meta
```

You can pass the same object temporarily on the command line:

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "time": "2025-07-13 10:00:00+00", "action": "promote" }}'
```

> [!NOTE] Use valid JSON for command-line variables
> The `-e` value must be valid JSON: quote keys and string values, for example `{"pg_pitr": {"time": "...", "archive": true}}`.
> Booleans are not quoted. Invalid quoting can fail parsing or silently produce the wrong value.

The playbook pauses Patroni HA, stops the cluster, and performs a delta pgBackRest restore.
It starts PostgreSQL and waits for a consistent recovery state.
It then prints control data, removes old etcd metadata, and starts the cluster under Patroni again.
The playbook first prints the source, target, and restore command, but does not ask for interactive approval.
For a one-shot targeted recovery, explicitly set `action: promote`.
To inspect data at the target, use [step-by-step execution](#step-by-step-execution) with `action: pause`.


--------

## Recovery Targets

`pg_pitr` supports [six recovery target forms](/docs/concept/pitr/mechanism/#targets-where-replay-stops).
The four target values are mutually exclusive.

```yaml {tab="default/latest"}
pg_pitr: { }  # Replay to the end of the WAL archive stream
```

```yaml {tab="time"}
pg_pitr: { time: "2025-07-13 10:00:00+00" }
```

```yaml {tab="lsn"}
pg_pitr: { lsn: "0/4001C80" }
```

```yaml {tab="xid"}
pg_pitr: { xid: "250000" }
```

```yaml {tab="name"}
pg_pitr: { name: "some_restore_point" }
```

```yaml {tab="immediate"}
pg_pitr: { type: "immediate" }
```

With no target, recovery replays all archived WAL to the latest available state.
Pigsty uses the internal type `default` for this mode.
`immediate` stops at the first consistent point.
Use it to get a usable instance as quickly as possible or to test a backup.

### Recover by Time

Use a valid PostgreSQL [`TIMESTAMP`](https://www.postgresql.org/docs/current/datatype-datetime.html#DATATYPE-DATETIME-INPUT-TIME-STAMPS).
We strongly recommend an explicit time zone:

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "time": "2025-07-13 10:00:00+00", "action": "promote" }}'
```

### Recover by Name

Create an unambiguous marker before a risky change with [`pg_create_restore_point`](https://www.postgresql.org/docs/current/functions-admin.html#FUNCTIONS-RECOVERY-CONTROL):

```sql
SELECT pg_create_restore_point('before_migration');
```

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "name": "before_migration", "action": "promote" }}'
```

### Recover by Transaction ID

If monitoring or the CSVLOG `TXID` field identifies the offending transaction, use `exclusive` to stop before that transaction:

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "xid": "250000", "exclusive": true, "action": "promote" }}'
```

### Recover by LSN

An [LSN](https://www.postgresql.org/docs/current/datatype-pg-lsn.html) identifies a position in the WAL stream.
Pigsty's PG LSN dashboard panel also shows it.
If the required position is on a particular timeline, set `timeline`.
The default is `latest`.

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "lsn": "0/4001C80", "timeline": "1", "action": "promote" }}'
```

> [!NOTE] Inclusive and exclusive targets
> Targets are inclusive by default, so recovery replays the target transaction.
> `exclusive: true` excludes the exact target.
> It applies only to `time`, `xid`, and `lsn`.
> It maps to PostgreSQL's [`recovery_target_inclusive`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-INCLUSIVE).


--------

## Recovery Source

By default, recovery uses the target cluster's own backup.
Use these three fields to select another source:

- `cluster`: the source stanza, including another cluster in a shared repository
- `repo`: a temporary repository definition in the same format as a [`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo) entry
- `set`: a specific [backup label](/docs/pgsql/backup/mechanism/#backup-chains-and-labels); otherwise pgBackRest selects a suitable set

For example, recover `pg-meta2` from `pg-meta`:

```bash
./pgsql-pitr.yml -l pg-meta2 -e '{"pg_pitr": { "cluster": "pg-meta", "archive": false, "action": "promote" }}'
./pgsql-pitr.yml -l pg-meta2 -e '{"pg_pitr": { "cluster": "pg-meta", "time": "2025-07-14 08:00:00+00", "archive": false, "action": "promote" }}'
```


--------

## Step-by-Step Execution

During an incident, use tags to require a human decision between stages.
Confirm the backup, recovery point, and exact target.
Then run the stages in order:

```bash
./pgsql-pitr.yml -l pg-meta -t down  # Pause HA; stop Patroni and PostgreSQL
./pgsql-pitr.yml -l pg-meta -t pitr  # Restore, replay WAL, and print control information
./pgsql-pitr.yml -l pg-meta -t up    # Remove etcd metadata; start the cluster and resume HA
```

```yaml
# down                 : # stop HA and PostgreSQL
#   - pause            : # pause Patroni automatic failover
#   - stop             : # stop Patroni and PostgreSQL
# pitr                 : # perform PITR
#   - config           : # render pgBackRest config and restore script
#   - backup           : # optionally move PGDATA to /pg/data-backup
#   - restore          : # run pgBackRest restore
#   - recovery         : # start PostgreSQL and replay WAL
#   - verify           : # print recovered control data
# up                   : # rebuild HA
#   - etcd             : # remove old cluster metadata
#   - start            : # start Patroni/PostgreSQL
#   - resume           : # resume Patroni automatic failover
```

After `down`, confirm that the processes have stopped.
After `pitr`, inspect `/pg/tmp/recovery.log` and query the recovery state.
Then perform the narrowly authorized checks of business data.
`pg_controldata /pg/data` reports checkpoint and timeline metadata.
This information alone does not prove that recovery reached a time, XID, or LSN target.

```sql
SELECT pg_is_in_recovery(), pg_is_wal_replay_paused(),
       pg_last_wal_replay_lsn(), pg_last_xact_replay_timestamp();
```

With `action: pause`, validate the data before promotion, then run `up`.
If the target is wrong, adjust `pg_pitr` and repeat `pitr` before `up`.
`pause` or `shutdown` provides an effective human decision point only in this staged procedure.
For a one-shot targeted recovery, explicitly set `action: promote`.

```bash
pg_ctl -D /pg/data promote            # only after validating an action: pause recovery
./pgsql-pitr.yml -l pg-meta -t up     # rebuild Patroni HA
```

> [!WARNING] Repeating the pitr stage
> With `backup: true`, the playbook moves the current data directory to `/pg/data-backup`.
> It deletes any existing `/pg/data-backup` first.
> The staged procedure is supported. A restore with `backup: true` is not generally idempotent.


--------

## PITR Parameter Definition

Declare the target, action, and treatment of existing data explicitly:

```yaml
pg_pitr:
  cluster: pg-meta                 # source cluster/stanza; defaults to pg_cluster
  type: default                    # default | time | xid | name | lsn | immediate
  time: "2025-07-13 10:00:00+00"  # mutually exclusive with xid, name, and lsn
  name: "some_restore_point"       # mutually exclusive with time, xid, and lsn
  xid: "250000"                    # mutually exclusive with time, name, and lsn
  lsn: "0/4001C80"                 # mutually exclusive with time, xid, and name
  exclusive: false                 # exclude the exact target; time/xid/lsn only
  timeline: latest                 # target timeline; integer or latest
  set: latest                      # backup label; auto-select by default
  action: pause                    # pause | promote | shutdown
                                   # a specified target defaults to pause
  archive: true                    # preserve archiving; false sets archive-mode=off
  backup: false                    # move old PGDATA to /pg/data-backup before restore
  db_exclude: []                   # databases to exclude
  db_include: []                   # databases to include
  link_map:                        # tablespace/WAL link remapping
    pg_wal: '/data/wal'
    pg_xact: '/data/pg_xact'
  process: 4                       # restore workers; defaults to node_cpu
  repo: {}                        # temporary source repository definition
  data: /pg/data                  # target data directory
  port: 5432                      # recovery instance port
```

See [Parameter Mapping](/docs/pgsql/backup/mechanism/#parameter-mapping) for the corresponding pgBackRest options.


--------

## Single Instance: `pig pitr`

[`pig pitr`](/docs/pig/pitr) performs a local-node procedure without Ansible.
It validates the target, stanza, and backup, then stops Patroni/PostgreSQL and restores the data.
It can optionally start PostgreSQL.
It then prints instructions for the next steps.

```bash
pig pitr -t "2025-07-13 10:00:00+00"    # Recover to a point in time
pig pitr --xid 250000 -X                # Recover to before transaction 250000
pig pitr --name before_migration        # Recover to a named restore point
pig pitr -d                             # Recover to the end of the WAL archive stream
pig pitr -I --no-restart                # Restore for immediate recovery and leave PostgreSQL stopped
pig pitr -t "..." --plan                # Print the execution plan without making changes
```

Use `-b/--set` for a backup set, `-T/--target-timeline` for a timeline, and `--target-action` for the action after recovery reaches the target.
For a side restore, use `-D/--data` with `--no-restart`.
The command normally attempts a fast stop and aborts if that fails.
Only explicit `--force-stop` permits immediate shutdown and a kill fallback.

For managed PGDATA, the command leaves Patroni stopped.
Validate the instance before `pig pt start`.
The command does not remove etcd metadata, rebuild replicas, or rejoin the instance to an HA cluster.


--------

## Primitive: `pig pb restore`

Use [`pig pb restore`](/docs/pig/pb) for an instance that Patroni does not manage, or that you deliberately removed from management.
The command directly wraps `pgbackrest restore`.
It validates the environment and requires PostgreSQL to be stopped.
It then shows the plan and asks for confirmation.

```bash
pig pb restore --time "2025-07-13 10:00"
pig pb restore --set 20250715-013657F
pig pb restore -d
```

It rejects a live Patroni-managed target because Patroni could restart a partially restored instance.
It also rejects any running PostgreSQL target.
Arguments after `--`, such as `--tablespace-map` or `--link-all`, pass through to pgBackRest.
You cannot override wrapped options, such as target, stanza, and repository, after `--`.


--------

## Post-Recovery

After restore:

1. Verify the recovery state and the smallest authorized set of application checks.
2. After a cross-cluster clone, complete [stanza cleanup](/docs/pgsql/backup/cluster/#post-clone-cleanup). Create a full backup on the new timeline as soon as practical:

   ```bash
   pg-backup full
   ```

3. If exploratory recovery used `archive: false`, restore archiving. The `archive_mode` setting requires a restart. First confirm the maintenance window, current primary, and replication state. Then obtain explicit approval for the restart:

   ```bash
   psql -c 'ALTER SYSTEM RESET archive_mode;'
   pg restart pg-meta
   pg-backup full
   ```
