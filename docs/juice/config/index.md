# Configuration

> JUICE module configuration, instance definition, storage backends, and mount options.

---

LLMS index: [llms.txt](/llms.txt)

---

--------

## Concepts and Implementation

JuiceFS consists of a **metadata engine** and **data storage**.
The current version passes `meta` to `juicefs` as the metadata engine URL. Production deployments typically use PostgreSQL.
The `data` parameter selects file storage through options passed to `juicefs format`.

JUICE module core commands:

```bash
# Format (only effective on first creation)
juicefs format --no-update <data> "<meta>" "<name>"

# Mount
juicefs mount <mount_opts> --cache-dir <juice_cache> --metrics 0.0.0.0:<port> <meta> <path>
```

Notes:

- `--no-update` prevents overwriting an existing filesystem. `juice_init` also runs `juicefs status <meta>` and requires its volume name (`Setting.Name`) to match the instance name, preventing accidental use of another volume's metadata.
- `data` applies only to the **initial format**. It does not affect existing filesystems.
- `mount` applies only during mounting. Use it to pass cache and concurrency options.
- `/etc/default/<unit>` uses mode `0600` and systemd `EnvironmentFile` syntax; do not `source` it as a shell script. Unit ordering places JuiceFS after local `patroni` / `postgres` / `silo` / `minio` and before `code-server` / `jupyter`.
- `juicefs mount` creates a missing mount point. After verifying a real JuiceFS mount, `owner` / `group` / `mode` apply to the **filesystem root**, not the local directory beneath the mount.

--------

## Module Parameters

JUICE module has only two parameters:

| Parameter                                              |  Type  | Level | Description                          |
|:-------------------------------------------------------|:------:|:-----:|:-------------------------------------|
| [`juice_cache`](/docs/juice/param#juice_cache)         | `path` |  `C`  | JuiceFS shared cache directory       |
| [`juice_instances`](/docs/juice/param#juice_instances) | `dict` |  `I`  | JuiceFS instance dict (can be empty) |
{.full-width}

- `juice_cache`: shared local cache directory for all instances, default `/data/juice`
- `juice_instances`: a dict usually defined at the **instance level**, keyed by filesystem name. An empty dict means no managed instances, so the playbook skips that host.

--------

## Instance Configuration

Each `juice_instances` entry describes a JuiceFS instance; its key is both the instance name and the JuiceFS volume name:

| Field   | Required | Default          | Description                                  |
|:--------|:--------:|:-----------------|:------------------------------------------------------|
| `path` | Conditional | - | Non-root absolute mount path, such as `/fs`; required for `create` and unique on the node |
| `meta` | Conditional | - | Metadata engine URL; required for `create`, PostgreSQL recommended |
| `data`  |    No    | `''`             | `juicefs format` options (storage backend)   |
| `unit` | No | `juicefs-<name>` | Bare systemd service name without `.service` |
| `mount` |    No    | `''`             | Extra `juicefs mount` options                |
| `port` | No | `9567` | Metrics port, unique among active instances on the node |
| `owner` | No | `root` | Filesystem root owner, set after mounting |
| `group` | No | `root` | Filesystem root group, set after mounting |
| `mode` | No | `0755` | Filesystem root mode, set after mounting |
| `state` |    No    | `create`         | `create` / `absent`                          |
{.full-width .wide .expand}

> [!WARNING] Important
> - We recommend that you explicitly set `data` on the **first format**. This makes the storage backend clear.
> - Instances on the same node must use different `port` and `path` values.
> - Names must be 3–63 lowercase letters, digits, or hyphens, without a leading or trailing hyphen. `jfs` and `pg-fs` are valid; `fs`, `pg_fs`, and `JFS` are not.

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

## Configuration Validation

Every `juice.yml` run starts with `juice_id`, which validates the runtime environment, `juice_cache`, and `juice_instances`. These tasks use the `always` tag, run with any tag selection, and fail immediately on invalid input:

- The control node requires `ansible-core >= 2.16`.
- `juice_cache` must be a non-root absolute path without `.` or `..` components. It must neither equal nor contain, nor be contained by, any `state: create` instance's `path`.
- `juice_instances` must be a dict; `state` accepts only `create` (default) or `absent`.
- `state: create` instances require a non-root absolute `path` without `.` or `..` components and a `meta` URL. Names must match `^[a-z0-9][a-z0-9-]{1,61}[a-z0-9]$`.
- `unit` must be a valid bare systemd unit name without `.service`. **All instances on the node, including `state: absent` entries, must have distinct units** so cleanup cannot stop a new instance accidentally.
- `state: create` instances on a node must use distinct `port` values (default `9567`) and distinct `path` values.

`state: absent` instances need neither `path` nor `meta`, but must retain an original custom `unit`. They are exempt from name and port/path conflict checks. An old instance can therefore be marked `absent` while a new name reuses its port or mount point. Legacy entries with invalid names can also be removed.

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

For a shorter configuration, define `juice_instances` once in cluster-level `vars` and share it across members:

```yaml
app:
  hosts:
    10.10.10.11: {}
    10.10.10.12: {}
  vars:
    juice_instances:
      shared: { path: /shared, meta: "postgres://...", port: 9567 }
```

`owner` / `group` / `mode` apply to the shared filesystem root. Keep all three identical across nodes to avoid overwriting each other's settings.

--------

## Notes

- `port` is exposed on `0.0.0.0`. Use firewall or security group to restrict access.
- A change to `data` does not update an existing filesystem. Migrate the data manually.
- `meta` and `data` can contain database or object-storage credentials. Restrict access to `pigsty.yml`. Use dedicated accounts with the minimum required privileges. Never keep example passwords in production.
- Normal playbook output shows only the instance name for loop items and hides the format command. However, `--diff` still exposes `meta` in environment file differences.
- A client mounted with `--read-only` cannot change filesystem root attributes. `juice_dir` fails if actual values differ from `owner` / `group` / `mode`; make the configuration match the existing attributes.
