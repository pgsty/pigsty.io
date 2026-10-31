# Configuration

> JUICE module configuration, instance definition, storage backends, and mount options.

---

LLMS index: [llms.txt](/llms.txt)

---

--------

## Concepts and Implementation

JuiceFS consists of a **metadata engine** and **data storage**.
The current version passes `meta` to `juicefs` as the metadata engine URL. Production deployments typically use PostgreSQL.
Data storage is defined by `data` options passed to `juicefs format`.

JUICE module core commands:

```bash
# Format (only effective on first creation)
juicefs format --no-update <data> "<meta>" "<name>"

# Mount
juicefs mount <mount_opts> --cache-dir <juice_cache> --metrics 0.0.0.0:<port> <meta> <path>
```

Notes:

- `--no-update` ensures existing filesystems are not overwritten.
- `data` applies only to the **initial format**. It does not affect existing filesystems.
- `mount` applies only during mounting. Use it to pass cache and concurrency options.

--------

## Module Parameters

JUICE module has only two parameters:

| Parameter                                              |  Type  | Level | Description                          |
|:-------------------------------------------------------|:------:|:-----:|:-------------------------------------|
| [`juice_cache`](/docs/juice/param#juice_cache)         | `path` |  `C`  | JuiceFS shared cache directory       |
| [`juice_instances`](/docs/juice/param#juice_instances) | `dict` |  `I`  | JuiceFS instance dict (can be empty) |
{.full-width}

- `juice_cache`: shared local cache directory for all instances, default `/data/juice`
- `juice_instances`: Instance-level dictionary. Each key is a filesystem name. An empty dictionary means that the module manages no instances.

--------

## Instance Configuration

Each entry in `juice_instances` represents a JuiceFS instance:

| Field   | Required | Default          | Description                                  |
|:--------|:--------:|:-----------------|:---------------------------------------------|
| `path`  |   Yes    | -                | Mount point path, e.g. `/fs`                 |
| `meta`  |   Yes    | -                | Metadata engine URL (PostgreSQL recommended) |
| `data`  |    No    | `''`             | `juicefs format` options (storage backend)   |
| `unit`  |    No    | `juicefs-<name>` | systemd service name                         |
| `mount` |    No    | `''`             | Extra `juicefs mount` options                |
| `port`  |    No    | `9567`           | Metrics port (unique per node)               |
| `owner` |    No    | `root`           | Mount point owner                            |
| `group` |    No    | `root`           | Mount point group                            |
| `mode`  |    No    | `0755`           | Mount point permissions                      |
| `state` |    No    | `create`         | `create` / `absent`                          |
{.full-width}

> [!WARNING] Important
> - We recommend that you explicitly set `data` on the **first format**. This makes the storage backend clear.
> - Multiple instances on the same node must use different `port` values.

Example:

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port: 9567
```

--------

## Storage Backends

The module appends `data` to `juicefs format`. You can use any supported backend. Common examples follow.

### PostgreSQL Data Backend

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
```

JuiceFS creates a `jfs_blob` table in the database selected by `--bucket` for file data. The PostgreSQL data backend and the `meta` metadata engine have separate roles. They can use one database or separate deployments. The database and a user with read/write privileges must already exist.

### Silo / MinIO-Compatible Object Storage

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage minio --bucket https://sss.pigsty:9000/juice --access-key <s3_access_key> --secret-key <s3_secret_key>
```

### S3-Compatible Storage

```yaml
juice_instances:
  jfs:
    path: /fs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage s3 --bucket https://s3.amazonaws.com/my-bucket --access-key AKIAXXXXXXXX --secret-key XXXXXXXXXX
```

--------

## Typical Configurations

### Multi-Instance (Same Node)

```yaml
juice_instances:
  pgfs:
    path: /pgfs
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data: --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port: 9567
  shared:
    path: /shared
    meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/shared
    data: --storage minio --bucket https://sss.pigsty:9000/shared --access-key <s3_access_key> --secret-key <s3_secret_key>
    port: 9568
    owner: postgres
    group: postgres
```

### Shared Mount Across Nodes

Mount the same JuiceFS on multiple nodes:

```yaml
app:
  hosts:
    10.10.10.11: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
    10.10.10.12: { juice_instances: { shared: { path: /shared, meta: "postgres://...", port: 9567 } } }
```

Only one node needs to format the filesystem. Other nodes skip this operation because of `--no-update`.

--------

## Notes

- `port` is exposed on `0.0.0.0`. Use firewall or security group to restrict access.
- A change to `data` does not update an existing filesystem. Migrate the data manually.
- `meta` and `data` can contain database or object-storage credentials. Restrict access to `pigsty.yml`. Use dedicated accounts with the minimum required privileges. Never keep example passwords in production.
