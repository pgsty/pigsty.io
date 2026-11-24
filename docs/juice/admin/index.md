# Administration

> JUICE module operations and troubleshooting guide.

---

LLMS index: [llms.txt](/llms.txt)

---

Common operations:

- [Initialize Instance](#initialize-instance)
- [Reconfigure](#reconfigure)
- [Remove Instance](#remove-instance)
- [Add New Instance](#add-new-instance)
- [Shared Mount Across Nodes](#shared-mount-across-nodes)
- [Decommission a Node](#decommission-a-node)
- [PITR Recovery](#pitr-recovery)
- [Troubleshooting](#troubleshooting)
- [Performance Tuning](#performance-tuning)

See [FAQ](/docs/juice/faq/) for more.

-------------

## Initialize Instance

```bash
./juice.yml -l <host>
./juice.yml -l <host> -e fsname=<name>
```

Initialization steps:

- Skip hosts where `juice_instances` is undefined, `null`, or empty, or where `-e fsname=<name>` has no match
- Validate `ansible-core >= 2.16` on the control node, `juice_cache`, and instance settings (names, required fields, `unit`, and port/path conflicts; see [**Configuration Validation**](/docs/juice/config#configuration-validation))
- Install `juicefs` package
- Create shared cache dir (default `/data/juice`)
- Run `juicefs format --no-update` (effective only on first creation; print the last error line on failure), then use `juicefs status` to verify that the existing metadata volume name matches the instance name
- Render `/etc/default/<unit>` with mode `0600` and the systemd unit with mode `0644`
- Start the service and wait for a real mount using `systemctl is-active`, `findmnt` (requiring exactly `FSTYPE="fuse.juicefs"` and `SOURCE="JuiceFS:<name>"`), and `stat -f`; `juicefs mount` creates the mount point if absent
- After mount readiness is verified, set the filesystem root owner, group, and mode (default `root:root 0755`)
- Register to VictoriaMetrics (if infra node exists)

-------------

## Reconfigure

After configuration changes, we recommend this command to update the configuration and make sure the service is running:

```bash
./juice.yml -l <host> -t juice_config,juice_launch
```

To generate the configuration without changing the service state:

```bash
./juice.yml -l <host> -t juice_config
```

Notes:

- `juice_config,juice_launch` ensures the service is `started` and waits for the mount, but does not force a restart of a running instance
- `data` only takes effect on the first `format`
- After changing `mount` options and running `juice_config,juice_launch`, manually restart the service (`systemctl restart juicefs-<name>`). Restarting unmounts and remounts the filesystem, interrupting open files and container bind mounts.

-------------

## Remove Instance

1. Stop applications using the mount point and leave any shell whose current directory is on it. Set the instance `state` to `absent`. With the default `unit`, `path` and `meta` can be omitted; retain a custom `unit` if one was used.
2. Run `juice_clean`

```yaml
juice_instances:
  jfs:
    state: absent
    # unit: my-juice-unit   # retain the original custom unit, if any
```

```bash
./juice.yml -l <host> -t juice_clean
./juice.yml -l <host> -e fsname=jfs -t juice_clean
```

Removal actions:

- Stop and disable the active systemd service (`ExecStop` runs `juicefs umount`) and require `systemctl show <unit> --property=Result` to be `success`; **no forced lazy unmount with `umount -l` is performed**
- If unmount fails, for example with `Device or resource busy`, stop immediately before deleting unit/environment files or refreshing targets. Release the mount with `fuser -vm <path>` or `lsof`, then rerun `juice_clean`.
- After confirming a successful stop, delete the `.service` unit and `/etc/default/<unit>` environment file, then reload systemd
- Rewrite this node's VictoriaMetrics target file without `state: absent` instances; delete `/infra/targets/juice/<ip>.yml` if no `state: create` instances remain

A full `juice.yml` run without tags also removes `state: absent` instances. Delete the inventory entry only after cleanup succeeds.

Removal **does not delete** metadata, file data (the PostgreSQL `jfs_blob` table or object storage), the filesystem's local cache subdirectory under [`juice_cache`](/docs/juice/param#juice_cache), or the mount point directory.

> [!WARNING] Earlier versions
> In v4.5.0 and earlier, `-t juice_clean` does not execute cleanup tasks. Use a full run without tags: `./juice.yml -l <host> -e fsname=<name>`.

-------------

## Add New Instance

Add an instance with a unique `port` and `path` on the node:

```yaml
juice_instances:
  newfs:
    path: /newfs
    meta: postgres://...
    data: --storage minio --bucket https://sss.pigsty:9000/newfs --access-key <s3_access_key> --secret-key <s3_secret_key>
    port: 9568
```

Deploy:

```bash
./juice.yml -l <host> -e fsname=newfs
```

-------------

## Shared Mount Across Nodes

Configure the same `meta` and instance name on multiple nodes:

```yaml
app:
  hosts:
    10.10.10.11: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
    10.10.10.12: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
```

Only one node needs to format the filesystem. Other nodes skip this operation because of `--no-update`.

You can also define `juice_instances` once under cluster-level `vars` for all members:

```yaml
app:
  hosts:
    10.10.10.11: {}
    10.10.10.12: {}
  vars:
    juice_instances:
      shared: { path: /shared, meta: "postgres://...", port: 9567 }
```

`owner` / `group` / `mode` apply to the shared filesystem root. Keep them identical on all nodes to avoid overwriting each other's settings.

-------------

## Decommission a Node

`node_deregister` in [`node-rm.yml`](/docs/node/playbook#node-rmyml) deletes the node's `/infra/targets/juice/<ip>.yml` target file, but **does not** stop JuiceFS services or unmount filesystems.
Before decommissioning a node, mark all its instances `state: absent` and remove them:

```bash
./juice.yml -l <host> -t juice_clean    # remove this node's JuiceFS instances first
./node-rm.yml -l <host>                 # then decommission the node
```

-------------

## PITR Recovery

Restore JuiceFS metadata and data to a mutually consistent state. Before any restore, stop every writer. Unmount or stop the corresponding JuiceFS service on every client. Identify the exact PostgreSQL cluster and target time. Confirm that a backup is available:

```bash
# Inspect Patroni members; inspect the target stanza's backup on a database node
pig pt list <cluster>
pig pb info -s <stanza>

# On the target database node, run the restore command as postgres
sudo -iu postgres pg-pitr -s <stanza> -t "2026-08-14 10:30:00+08"
```

> [!CAUTION] PITR overwrites the PostgreSQL data directory
> First, confirm the exact cluster name, a recent backup, the recovery target, and a rollback plan. Only then follow the [PostgreSQL PITR tutorial](/docs/pgsql/tutorial/pitr/) to stop Patroni/PostgreSQL and restore the data. The `pg-pitr` command does not stop services, repair Patroni/DCS, validate data, or rebuild replicas. The command above is not a complete recovery procedure.

If metadata and the `--storage postgres` `jfs_blob` table share the restored PostgreSQL database, PITR can restore both to the same time. If they reside in different databases or clusters, design a coordinated recovery point for both.

If file data resides in Silo/S3, PostgreSQL PITR **rolls back metadata only**. It does not restore objects. Newer objects can remain. Older objects can be unavailable if they were deleted or removed by garbage collection.

Recovery depends on object versioning, trash, and lifecycle policies. Do not run garbage collection until validation is complete.

-------------

## Troubleshooting

### Configuration Validation Failure

`juice_id` lists all invalid instances in one error, for example:

```text
invalid juice_instances: [jfs] port conflicts with jfs2. [jfs2] port conflicts with jfs.
```

Resolve the reported conflicts by assigning distinct `port` or `path` values. Mark an instance being retired as `state: absent` to exempt it from port/path checks. **All instances must still have unique `unit` values**; run `juice_clean` on the old instance before reusing its name or unit.
Other common errors include overlap between `juice_cache` and a mount path, missing `path` / `meta`, invalid `state` / `unit`, and names that do not meet the 3–63 character `[a-z0-9-]` rule.

### Format or Volume Name Validation Failure

If `juicefs format --no-update` fails, `juice_init` prints its last error line while keeping the credential-bearing command hidden. After formatting, `juicefs status` checks that the metadata volume name (`Setting.Name`) matches the instance name. Common causes include:

- `meta` points to metadata already formatted with **another volume name**. Do not mount an initialized volume under the wrong instance key; use separate PostgreSQL databases or appropriate instance keys when sharing PostgreSQL.
- The database referenced by `meta` or `--bucket` does not exist
- The database user lacks privileges
- The object storage bucket is nonempty or not writable

Use the commands under [**Metadata Connection Issues**](#metadata-connection-issues) below to verify database connectivity first.

### Mount Not Ready

After starting the service, `juice_launch` checks readiness every 2 seconds, retrying up to 30 times for a total of 60 seconds. Running `-t juice_dir` alone performs the same check before changing directory attributes. All three conditions must hold:

1. `systemctl is-active --quiet <unit>` reports an active service;
2. `findmnt -knP -d backward -f -M <path> -o FSTYPE,SOURCE` returns exactly `FSTYPE="fuse.juicefs" SOURCE="JuiceFS:<name>"`;
3. `stat -f <path>` can access the mounted filesystem.

A timeout or source mismatch fails the task. Inspect service state, mounts, and logs:

```bash
systemctl show juicefs-jfs -p ActiveState -p MainPID -p Result
journalctl -u juicefs-jfs -n 50 --no-pager
findmnt -knP -d backward -f -M /fs -o FSTYPE,SOURCE
```

### Metadata Connection Issues

```bash
psql "postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta" -c "SELECT 1"
```

### Metrics Port Check

```bash
ss -tlnp | grep 9567
curl http://localhost:9567/metrics
```

If another process occupies the metrics port, JuiceFS logs `listen on ... failed` but continues mounting. The filesystem works without metrics, usually appearing as a scrape failure in monitoring.
Confirm with `journalctl -u juicefs-<name>`, change `port`, run `./juice.yml -l <host> -t juice_config,juice_launch,juice_register`, then manually restart the instance.

-------------

## Performance Tuning

Pass `juicefs mount` options via `mount`:

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://...
    mount: --cache-size 102400 --prefetch 3 --max-uploads 50
```

Key metrics to watch:

- `juicefs_blockcache_hits/juicefs_blockcache_miss`: cache hit ratio
- `juicefs_object_request_durations_histogram_seconds`: object storage latency
- `juicefs_transaction_durations_histogram_seconds`: metadata transaction latency
