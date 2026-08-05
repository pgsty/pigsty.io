---
title: Manual Recovery
weight: 1706
description: Manually execute PITR in a sandbox using pgbackrest primitives.
icon: fa-solid fa-flask
categories: [Task]
---

You can run PITR through `pgsql-pitr.yml`, but in advanced scenarios you may want to execute recovery manually with pgBackRest primitives for tighter control.

This guide summarizes the manual workflow. For an end-to-end sandbox demo with detailed command output, see [Recovery Example](/docs/pgsql/tutorial/example/).


--------

## Prerequisites

- A cluster with pgBackRest backup and WAL archiving enabled
- A clear recovery target (`time`, `lsn`, `xid`, restore point, or latest)
- Shell access as admin and `postgres` user

Use a sandbox for rehearsal before production execution.


--------

## Check Backup

Switch to `postgres` and verify available backup sets:

```bash
sudo su - postgres
pb info
```

`pb` is the Pigsty alias for `pgbackrest` with automatic stanza detection.

For a sandbox drill, `/pg/bin/pg-heartbeat` can generate a timestamped workload that makes the recovery boundary easy to verify:

```bash
sudo -iu postgres /pg/bin/pg-heartbeat
```


--------

## Run PITR

Choose a recovery target and generate recovery operations:

```bash
pg-pitr -t "2025-07-13 03:03:00+00"
```

Typical sequence:

1. Stop Patroni and PostgreSQL. If you need to stop PostgreSQL directly, use `pg-stop` only after Patroni has been stopped or paused so it cannot restart the instance or trigger failover.
2. Run `pgbackrest restore` with the selected target.
3. Start PostgreSQL and replay WAL.
4. Verify data state, then promote if correct.
5. Verify archive mode and reset it only when required.
6. Rebuild replicas if needed and resume cluster automation.

With `pgsql-pitr.yml`, Pigsty {{< param version_short >}} preserves archive settings by default. A manual `pgbackrest restore`, an older recovery script, or an explicit `archive: false` run may leave `archive_mode = off` in `postgresql.auto.conf`; in that case, reset it and restart PostgreSQL because `archive_mode` is a postmaster parameter:

```bash
psql -c 'show archive_mode'
psql -c 'ALTER SYSTEM RESET archive_mode;'
pg-restart
psql -c 'show archive_mode'
```


--------

## Post-Recovery Checklist

- Verify business data at the target point.
- Confirm cluster role and service endpoints.
- Reinitialize replicas if timeline diverges.
- Take a fresh full backup after recovery.


--------

## Related

- Script reference: [Instance Recovery (`pg-fork` + `pg-pitr`)](/docs/pgsql/tutorial/instance/)
- PITR concepts: [PITR Overview](/docs/concept/pitr/)
- Automated workflow: [Pig `pitr` Command](/docs/pig/pitr/)
