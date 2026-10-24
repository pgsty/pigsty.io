# Backup Mechanism

> pgBackRest concepts—stanzas, repositories, backup chains, retention, and timelines—and how Pigsty maps parameters to commands.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty's backup and restore operations execute [**pgBackRest**](/docs/pgbackrest/) commands.
For safe operation, understand the pgBackRest model and how Pigsty maps its orchestration parameters to native options.


--------

## Core pgBackRest Concepts

### Stanza: the Cluster's Backup Identity

A **stanza** names one PostgreSQL backup configuration and isolates that cluster inside a repository.
Pigsty uses [**`pg_cluster`**](/docs/pgsql/param#pg_cluster) as the stanza name.
The `pg-meta` stanza stores data under `backup/pg-meta/` and `archive/pg-meta/`.
Thus, several clusters can share one repository.

The stanza records the source system identifier and major version.
pgBackRest checks these values before a backup.
Because of this check, a [**cross-cluster clone**](/docs/pgsql/backup/cluster) needs `stanza-upgrade` afterward.
Pigsty creates the stanza during cluster initialization.
[**`stanza-upgrade`**](/docs/pgbackrest/command/stanza-upgrade) updates it after a major-version change or clone.

### Repository: Where Backups Live

A **repository** stores backup files and WAL archives.
`repo1-type` selects POSIX, S3, Azure, GCS, or SFTP.
`repo1-path`, `repo1-cipher-*`, and `repo1-retention-*` define location, encryption, and retention.
Pigsty generates these settings from [**`pgbackrest_repo`**](/docs/pgsql/param#pgbackrest_repo).
See [**Backup Repository**](/docs/pgsql/backup/repository).

### Backup Chains and Labels

| Type | Contents | Label suffix |
|:-----|:---------|:------------:|
| Full | Complete database-cluster copy | `F` |
| Differential | Changes since the latest full | `D` |
| Incremental | Changes since the latest backup of any type | `I` |
{.full-width}

Labels identify the backup chain.
`20250715-013657F` is a full backup.
`20250715-013657F_20250715-013724D` and `..._20250715-013730I` depend on the full backup identified before the underscore.
Use `--set` to select the starting backup explicitly.
Otherwise, pgBackRest selects the newest usable set before the target.

### Retention: Keeping the Repository Bounded

`repo1-retention-full` and `repo1-retention-full-type` (`count` or `time`) determine when full backup chains expire.
Dependent differential/incremental backups and WAL needed only by that chain expire with the full backup.
Pigsty enables `expire-auto`.
Use [**`pig pb expire --plan`**](/docs/pgsql/backup/admin/#expire-old-backups) to preview a manual run.

Time retention defines a minimum window.
It does not remove every full backup older than N days.
An old full backup expires only when another retained full backup has reached that age.
With weekly full backups, a 14-day setting therefore commonly retains three full chains and approximately 14–21 days of history.

### WAL Archiving

PostgreSQL calls [**`archive-push`**](/docs/pgbackrest/command/archive-push) when a WAL segment fills or `archive_timeout` elapses.
During recovery, `restore_command` calls [**`archive-get`**](/docs/pgbackrest/command/archive-get).
Pigsty enables asynchronous archiving through `/pg/spool`.
Thus, a temporary repository delay does not block the primary directly.

### Timelines

Each promotion after recovery or failover creates a new timeline.
Older timeline history remains in the repository.
`--target-timeline` selects the recovery branch and defaults to `latest`.
See the conceptual [**PITR mechanism**](/docs/concept/pitr/mechanism/#timelines).

### What `restore` Actually Does

[**`restore`**](/docs/pgbackrest/command/restore) first reconstructs the data directory.
Pigsty enables `--delta`, so pgBackRest validates existing files and rewrites only files that differ.
It then writes the recovery state (`recovery.signal`, `restore_command`, and `recovery_target_*`).
WAL replay starts after PostgreSQL starts.

A successful `restore` command does not complete PITR.
`--target-action` controls what happens when replay reaches the target: `pause`, `promote`, or `shutdown`.

```bash
pgbackrest --stanza=pg-meta restore
pgbackrest --stanza=pg-meta --type=immediate restore
pgbackrest --stanza=pg-meta --type=time --target='2025-07-13 10:00:00+00' restore
pgbackrest --stanza=pg-meta --type=xid --target='250000' --target-exclusive restore
pgbackrest --stanza=pg-meta --type=name --target='my-restore-point' restore
pgbackrest --stanza=pg-meta --type=lsn --target='0/4001C80' --target-action=promote restore
```


--------

## Observe a Backup Chain

Run read-only `info` after full, differential, and incremental backups to inspect labels, size, WAL bounds, and references:

```bash
pig pb info
```

A representative sequence looks like:

```text
full backup: 20250715-013657F
diff backup: 20250715-013657F_20250715-013724D
    backup reference total: 1 full
incr backup: 20250715-013657F_20250715-013730I
    backup reference total: 1 full, 1 diff
```


--------

## Pigsty's Wrapper Layers

| Layer | Interface | What it does |
|:------|:----------|:-------------|
| Cluster orchestration | `pg_pitr` + `pgsql-pitr.yml` | Pause HA, stop nodes, render configuration, restore/replay, inspect control data, clean etcd, and rebuild HA |
| Instance orchestration | [**`pig pitr`**](/docs/pig/pitr) | Preflight, keep one target offline, restore, optionally start PostgreSQL, and leave Patroni stopped for inspection |
| Command primitive | [**`pig pb`**](/docs/pig/pb), `pb`, `pg-backup` | Supply stanza/DBSU context and call the corresponding pgBackRest command |
| Engine | [**`pgbackrest`**](/docs/pgbackrest/) | Read `/etc/pgbackrest/pgbackrest.conf` and perform backup, archive, and restore operations |
{.full-width}

### Command Primitives

`pb` is a login-shell function that reads the first stanza from the local configuration and forwards arguments:

```bash
pb() (
    stanza=$(grep -o '\[[^][]*]' /etc/pgbackrest/pgbackrest.conf | head -n1 | sed 's/.*\[\([^]]*\)].*/\1/')
    pgbackrest --stanza="${stanza}" "$@"
)
pb info     # pgbackrest --stanza=pg-meta info
pb backup   # pgbackrest --stanza=pg-meta backup
```

`pg-backup` adds a primary-role check for scheduled use:

```bash
pg-backup full
pg-backup diff
pg-backup incr   # the default; pgBackRest promotes it when no full exists
```

[**`pig pb`**](/docs/pig/pb) adds stanza detection, DBSU privilege handling, primary checks for backup, and plan/confirmation guards for destructive primitives. See [**Admin Commands**](/docs/pgsql/backup/admin/#command-overview).

### Parameter Mapping

| `pg_pitr` field | `pig pitr` option | pgBackRest option | Meaning |
|:----------------|:------------------|:------------------|:--------|
| `cluster` | `--stanza` | `--stanza` | Source cluster/stanza |
| `type` plus `time`/`xid`/`lsn`/`name` | corresponding target option | `--type` + `--target` | Recovery target |
| `default` | `--default` | no `--type`/`--target` | Replay to archive end |
| `immediate` | `--immediate` | `--type=immediate` | Stop at the first consistent point |
| `exclusive` | `--exclusive` / `-X` | `--target-exclusive` | Stop before the target |
| `action` | `--target-action` | `--target-action` | `pause`, `promote`, or `shutdown` |
| `timeline` | `--target-timeline` / `-T` | `--target-timeline` | Target timeline |
| `set` | `--set` / `-b` | `--set` | Starting backup set |
| `db_include` / `db_exclude` | — | `--db-include` / `--db-exclude` | Select databases in a physical restore |
| `link_map` | — | `--link-map` | Remap directory or tablespace links |
| `process` | — | `process-max` | Parallel restore processes |
| `data` | `--data` / `-D` | `--pg1-path` | Target data directory |
| `repo` | repository number only in `pig pitr` | rendered `repo1-*` | Override repository definition in the playbook |
{.full-width}

A selective restore is still a physical restore.
Excluded databases receive sparse zeroed files so PostgreSQL can complete recovery.
These databases are inaccessible.
You must remove them explicitly afterward.
This is not a logical subset as with `pg_dump`.

### How Configuration Is Rendered

[**`pgbackrest_method`**](/docs/pgsql/param#pgbackrest_method) selects the entry that Pigsty writes to `/etc/pgbackrest/pgbackrest.conf`.
Pigsty converts underscores to hyphens and adds the `repo1-` prefix to keys.

```yaml
pgbackrest_repo:
  minio:
    type: s3                  # repo1-type=s3
    s3_endpoint: sss.pigsty   # repo1-s3-endpoint=sss.pigsty
    cipher_type: aes-256-cbc  # repo1-cipher-type=aes-256-cbc
    retention_full: 14        # repo1-retention-full=14
```

`pgsql-pitr.yml` generates a separate temporary configuration at `/pg/conf/pitr.conf`.
PostgreSQL recovery output goes to `/pg/tmp/recovery.log`.


--------

## Scheduled Backups

Pigsty installs [**`pg_crontab`**](/docs/pgsql/param#pg_crontab) entries for the `postgres` OS user on every cluster node.
`pg-backup` checks the current role, so only the primary makes backups.
After promotion, the new primary runs future scheduled backups.

```yaml
pg_crontab:
  - '00 01 * * 1 /pg/bin/pg-backup full'
  - '00 01 * * 2,3,4,5,6,7 /pg/bin/pg-backup'
```

```bash
./pgsql.yml -t pg_crontab -l pg-meta
```

See [**Backup Policy**](/docs/pgsql/backup/policy) for frequency and retention design.


--------

## Deployment Details

The `pg_backup` subtask installs and configures pgBackRest, then creates the stanza.
If [**`pgbackrest_init_backup`**](/docs/pgsql/param#pgbackrest_init_backup) is enabled, it attempts an initial full backup.
It writes `/etc/pgbackrest/initial.done` only after that backup succeeds.

| Path | Purpose |
|:-----|:--------|
| `/usr/bin/pgbackrest` | pgBackRest binary |
| `/etc/pgbackrest/pgbackrest.conf` | Main stanza and repository configuration |
| `/pg/backup` | Local repository path |
| `/pg/spool` | Asynchronous archive spool |
| `/pg/log/pgbackrest/` | Backup, archive, and restore logs |
| `/pg/conf/pitr.conf` | Temporary PITR configuration |
| `/pg/tmp/recovery.log` | PostgreSQL recovery log |
{.full-width}

`pgbackrest_exporter` exports [**backup metrics**](/docs/pgbackrest/metric) and listens on [**`pgbackrest_exporter_port`**](/docs/pgsql/param#pgbackrest_exporter_port), which defaults to `9854`.
To disable it, use [**`pgbackrest_exporter_enabled`**](/docs/pgsql/param#pgbackrest_exporter_enabled).
To customize it, use [**`pgbackrest_exporter_options`**](/docs/pgsql/param#pgbackrest_exporter_options).
