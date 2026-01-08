---
title: Restore Operations
description: Restore PostgreSQL from backups
icon: fa-solid fa-rotate-left
weight: 1505
categories: [Task]
---


You can perform Point-in-Time Recovery (PITR) in Pigsty using pre-configured pgbackrest.

- [**Manual Approach**](#manual-approach): Manually execute PITR using `pg-pitr` prompt scripts, more flexible but more complex.
- [**Playbook Approach**](#playbook-approach): Automatically execute PITR using `pgsql-pitr.yml` playbook, highly automated but less flexible and error-prone.

If you are very familiar with the configuration, you can use the fully automated playbook, otherwise manual step-by-step operation is recommended.


--------

## Quick Start

If you want to roll back the `pg-meta` cluster to a previous point in time, add the `pg_pitr` parameter:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta2
    pg_pitr: { time: '2025-07-13 10:00:00+00' }  # Recover from latest backup
```

Then run the `pgsql-pitr.yml` playbook, which will roll back the `pg-meta` cluster to the specified point in time.

```bash
./pgsql-pitr.yml -l pg-meta
```


--------

## Post-Recovery

The recovered cluster will have `archive_mode` **disabled** to prevent accidental WAL writes.
If the recovered database state is normal, you can enable `archive_mode` and perform a full backup.

```bash title="postgres @ pg-meta $"
psql -c 'ALTER SYSTEM RESET archive_mode; SELECT pg_reload_conf();'
pg-backup full    # Perform new full backup
```


--------

## Recovery Target

You can specify different types of recovery targets in `pg_pitr`, but they are mutually exclusive:

- [`time`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-TIME): To which point in time to recover?
- [`name`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-NAME): Recover to a named restore point (created by `pg_create_restore_point`)
- [`xid`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-XID): Recover to a specific transaction ID (TXID/XID)
- [`lsn`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-LSN): Recover to a specific LSN (Log Sequence Number) point

If any of the above parameters are specified, the recovery [`type`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-TYPE) will be set accordingly,
otherwise it will be set to `latest` (end of WAL archive stream).
The special `immediate` type can be used to instruct pgbackrest to minimize recovery time by stopping at the first consistent point.


### Target Types

{{< tabpane persist="disabled" >}}
{{% tab header="Recovery Target Types" disabled=true /%}}
{{< tab header="latest" lang="yaml" >}}
pg_pitr: { }  # Recover to latest state (end of WAL archive stream)
{{< /tab >}}
{{< tab header="time" lang="yaml" >}}
pg_pitr: { time: "2025-07-13 10:00:00+00" }
{{< /tab >}}
{{< tab header="lsn" lang="yaml" >}}
pg_pitr: { lsn: "0/4001C80" }
{{< /tab >}}
{{< tab header="xid" lang="yaml" >}}
pg_pitr: { xid: "250000" }
{{< /tab >}}
{{< tab header="name" lang="yaml" >}}
pg_pitr: { name: "some_restore_point" }
{{< /tab >}}
{{< tab header="immediate" lang="yaml" >}}
pg_pitr: { type: "immediate" }
{{< /tab >}}
{{< /tabpane >}}


### Recover by Time

The most commonly used target is a point in time; you can specify the time point to recover to:

```bash title="Recover to specified point in time"
./pgsql-pitr.yml -e '{"pg_pitr": { "time": "2025-07-13 10:00:00+00" }}'
```

Time should be in valid PostgreSQL [`TIMESTAMP`](https://www.postgresql.org/docs/17/datatype-datetime.html#DATATYPE-DATETIME-INPUT-TIME-STAMPS) format, `YYYY-MM-DD HH:MM:SS+TZ` is recommended.


### Recover by Name

You can create named restore points using [`pg_create_restore_point`](https://www.postgresql.org/docs/current/functions-admin.html#id-1.5.8.34.5.5.2.2.1.1.1.1):

```sql
SELECT pg_create_restore_point('shit_incoming');
```

Then use that named restore point in PITR:

```bash
./pgsql-pitr.yml -e '{"pg_pitr": { "name": "shit_incoming" }}'
```


### Recover by XID

If you have a transaction that accidentally deleted some data, the best way to recover is to restore the database to the state before that transaction.

```bash title="Recover to before a transaction"
./pgsql-pitr.yml -e '{"pg_pitr": { "xid": "250000", exclusive: true }}'
```

You can find the exact transaction ID from monitoring dashboards or from the `TXID` field in CSVLOG.

{{% alert color="info" title="Inclusive vs Exclusive" %}}
Target parameters are "inclusive" by default, meaning recovery will include the target point.
The `exclusive` flag will exclude that exact target, e.g., xid 24999 will be the last transaction replayed.

This only applies to `time`, `xid`, `lsn` recovery targets, see [`recovery_target_inclusive`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-INCLUSIVE) for details.
{{% /alert %}}


### Recover by LSN

PostgreSQL uses [LSN](https://www.postgresql.org/docs/current/datatype-pg-lsn.html) (Log Sequence Number) to identify the location of WAL records.
You can find it in many places, such as the PG LSN panel in Pigsty dashboards.

```bash title="Recover to specified LSN"
./pgsql-pitr.yml -e '{"pg_pitr": { "lsn": "0/4001C80", timeline: "1" }}'
```

To recover to an exact position in the WAL stream, you can also specify the [`timeline`](https://www.postgresql.org/docs/current/runtime-config-wal.html#RECOVERY-TARGET-TIMELINE) parameter (defaults to `latest`)


--------

## Recovery Source

- `cluster`: From which cluster to recover? Defaults to current `pg_cluster`, you can use any other cluster in the same pgbackrest repository
- `repo`: Override backup repository, uses same format as `pgbackrest_repo`
- `set`: Defaults to `latest` backup set, but you can specify a specific pgbackrest backup by label

Pigsty will recover from the pgbackrest backup repository. If you use a centralized backup repository (like MinIO/S3),
you can specify another "stanza" (another cluster's backup directory) as the recovery source.

```yaml
pg-meta2:
  hosts: { 10.10.10.11: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta2
    pg_pitr: { cluster: pg-meta }  # Recover from pg-meta cluster backup
```

The above configuration will mark the PITR process to use the `pg-meta` stanza.
You can also pass the `pg_pitr` parameter via CLI arguments:

```bash title="Recover pg-meta2 using pg-meta backup"
./pgsql-pitr.yml -l pg-meta2 -e '{"pg_pitr": { "cluster": "pg-meta" }}'
```

You can also use these targets when PITR from another cluster:

```bash
./pgsql-pitr.yml -l pg-meta2 -e '{"pg_pitr": { "cluster": "pg-meta", "time": "2025-07-14 08:00:00+00" }}'
```


--------

## Step-by-Step Execution

This approach is semi-automatic, you will participate in the PITR process to make critical decisions.

For example, this configuration will restore the `pg-meta` cluster itself to the specified point in time:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta2
    pg_pitr: { time: '2025-07-13 10:00:00+00' }  # Recover from latest backup
```

Let's execute step by step:

```bash
./pgsql-pitr.yml -l pg-meta -t down     # Pause patroni high availability
./pgsql-pitr.yml -l pg-meta -t pitr     # Run pitr process
./pgsql-pitr.yml -l pg-meta -t up       # Generate pgbackrest config and recovery script
```

```yaml
# down                 : # Stop high availability and shutdown patroni and postgres
#   - pause            : # Pause patroni auto-failover
#   - stop             : # Stop patroni and postgres services
#     - stop_patroni   : # Stop patroni service
#     - stop_postgres  : # Stop postgres service
# pitr                 : # Perform PITR process
#   - config           : # Generate pgbackrest config and recovery script
#   - restore          : # Run pgbackrest restore command
#   - recovery         : # Start postgres and complete recovery
#   - verify           : # Verify recovered cluster control data
# up:                  : # Start postgres / patroni and restore high availability
#   - etcd             : # Clean etcd metadata before starting
#   - start            : # Start patroni and postgres services
#     - start_postgres : # Start postgres service
#     - start_patroni  : # Start patroni service
#   - resume           : # Resume patroni auto-failover
```


--------

## PITR Parameter Definition

The `pg_pitr` parameter has more options available:

```yaml
pg_pitr:                           # Define PITR task
    cluster: "some_pg_cls_name"    # Source cluster name
    type: latest                   # Recovery target type: time, xid, name, lsn, immediate, latest
    time: "2025-01-01 10:00:00+00" # Recovery target: time, mutually exclusive with xid, name, lsn
    name: "some_restore_point"     # Recovery target: named restore point, mutually exclusive with time, xid, lsn
    xid:  "100000"                 # Recovery target: transaction ID, mutually exclusive with time, name, lsn
    lsn:  "0/3000000"              # Recovery target: log sequence number, mutually exclusive with time, name, xid
    timeline: latest               # Target timeline, can be integer, defaults to latest
    exclusive: false               # Whether to exclude target point, defaults to false
    action: pause                  # Post-recovery action: pause, promote, shutdown
    archive: false                 # Whether to keep archive settings? Defaults to false
    db_exclude: [ template0, template1 ]
    db_include: []
    link_map:
      pg_wal: '/data/wal'
      pg_xact: '/data/pg_xact'
    process: 4                     # Number of parallel recovery processes
    repo: {}                       # Recovery source repository
    data: /pg/data                 # Data recovery location
    port: 5432                     # Listening port for recovered instance
```
