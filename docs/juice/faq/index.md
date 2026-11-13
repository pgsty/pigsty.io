# FAQ

> JUICE module frequently asked questions.

---

LLMS index: [llms.txt](/llms.txt)

---

--------

## Port Conflicts?

Multiple instances on the same node must use different `port` values. Example:

```yaml
juice_instances:
  fs1:
    path: /fs1
    meta: postgres://...
    port: 9567
  fs2:
    path: /fs2
    meta: postgres://...
    port: 9568
```

`state: absent` entries are exempt from port/path conflict checks, but their `unit` must remain unique across all instances on the node. To replace an instance, mark the old one `absent` and give the replacement a new name while reusing the port.

--------

## What Are the Instance Name Restrictions?

An instance name (the `juice_instances` key) is the JuiceFS volume name: 3–63 lowercase letters, digits, or hyphens, with no leading or trailing hyphen.
`jfs` and `pg-fs` are valid; `fs`, `pg_fs`, and `JFS` are not. `state: absent` entries are exempt, so invalid legacy names can still be cleaned up.

--------

## Why does changing `data` not take effect?

Only `juicefs format --no-update` uses `data`. This setting does not change the filesystem after creation. To change the backend, migrate the data and reformat manually.

--------

## How to add a new instance?

1. Add instance definition in config
2. Run:

```bash
./juice.yml -l <host> -e fsname=<name>
```

--------

## What Happens If I Run `juice.yml` Without `-l`?

Hosts where `juice_instances` is undefined, `null`, or empty are skipped, as are hosts with no matching instance for `-e fsname=<name>`. No packages, cache directories, or target files are created on these hosts. Hosts with defined instances run normally.
Using `-l` to make the scope explicit is still recommended.

--------

## How to remove an instance?

1. Stop applications using the mount point and set the instance `state` to `absent`. With the default `unit`, `path` and `meta` can be omitted.
2. Run:

```bash
./juice.yml -l <host> -t juice_clean
```

`juice_clean` stops the service and requires a successful normal unmount. It does not use `umount -l`; a busy mount causes an immediate failure that preserves the unit and environment files for troubleshooting. On success, it removes configuration and updates or deletes the node's target file. Metadata, file data (PostgreSQL `jfs_blob` or object storage), local cache, and the mount point directory remain.
In v4.5.0 and earlier, `-t juice_clean` does not execute cleanup tasks. Use a full run without tags: `./juice.yml -l <host> -e fsname=<name>`.

--------

## Where is file data stored?

Depends on `data`:

- `--storage postgres`: JuiceFS creates a `jfs_blob` table in the PostgreSQL database selected by `--bucket`
- `--storage minio/s3`: data is stored in a Silo/S3-compatible object-storage bucket

`meta` specifies the metadata engine. Pigsty production deployments usually use PostgreSQL for this role.

--------

## Multi-node mount notes?

- Use the same `meta` and instance name on all nodes
- Only one node needs to format the filesystem. Other nodes skip this operation.
- Ensure `port` does not conflict on each node
- Keep `owner` / `group` / `mode` identical across nodes to avoid overwriting each other's settings

--------

## Which Directory Do `owner` / `group` / `mode` Affect?

They affect the JuiceFS filesystem root, not the local directory underneath the mount. The playbook sets them only after mount readiness. They are stored in metadata and shared by all clients mounting that filesystem.
A newly formatted filesystem root is `root:root 0777`; the playbook applies the configured values (default `root:root 0755`). A `--read-only` client cannot modify these attributes. If actual values differ from the configuration, `juice_dir` fails; make the configuration match the actual values.

--------

## Monitoring target not generated?

`juice_register` only writes `/infra/targets/juice/` when `infra` group exists.
You can run manually:

```bash
./juice.yml -l <host> -t juice_register
```

--------

## How to change mount options?

After you update `mount` in the instance, refresh the configuration. Then restart the service manually:

```bash
./juice.yml -l <host> -t juice_config,juice_launch
systemctl restart juicefs-<name>
```

The playbook never automatically restarts a running instance. Restarting unmounts and remounts the filesystem, interrupting open files and container bind mounts.
