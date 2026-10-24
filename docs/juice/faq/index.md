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

## How to remove an instance?

1. Set instance `state` to `absent`
2. Run:

```bash
./juice.yml -l <host> -t juice_clean,juice_register
```

Removal does not delete PostgreSQL metadata or object storage data.
`juice_register` updates the target file. If you run only `juice_clean`, a stale monitoring scrape endpoint remains.

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
