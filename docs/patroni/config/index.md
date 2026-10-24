# Patroni configuration

> Patroni configuration model, precedence rules, and validation tooling.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/patroni_configuration.html

<a id="config"></a>
There are 3 types of Patroni configuration:

- Global [dynamic configuration](/docs/patroni/config/dynamic#dynamic).  
  These options are stored in the DCS (Distributed Configuration Store) and apply to all nodes. Change them at any time with [patronictl_edit_config](/docs/patroni/patronictl#patronictl_edit_config) or the [REST API](/docs/patroni/rest_api#rest_api). Changes outside startup configuration apply asynchronously on each node's next wake-up cycle, followed by a reload. Changed [PostgreSQL parameters](https://www.postgresql.org/docs/current/view-pg-settings.html) with postmaster context require a restart. Patroni sets `pending_restart` in members.data JSON for these nodes. Node status also shows `"restart_pending": true`.

- Local [configuration file](/docs/patroni/config/yaml#yaml) (patroni.yml).  
  Local options override dynamic configuration. To reload `patroni.yml` without restarting Patroni, send SIGHUP, send `POST /reload`, or run [patronictl_reload](/docs/patroni/patronictl#patronictl_reload). Local configuration can be one YAML file or a directory. Patroni loads all YAML files in a directory in sorted order. If several files define a key, the last file takes precedence.

- [Environment configuration](/docs/patroni/config/env#env).  
  Environment variables can set or override some local parameters. Use them in dynamic environments where some values are unknown in advance. For example, the external IP address may be unknown inside `docker`.

<a id="important_configuration_rules"></a>

--------

## Important rules

### PostgreSQL parameters controlled by Patroni

These PostgreSQL parameters **must have the same values on the primary and replicas**. **Local configuration and environment values have no effect**. Set them through shared DCS configuration. The list shows their defaults and minimum values:

- **max_connections**: default value 100, minimal value 25
- **max_locks_per_transaction**: default value 64, minimal value 32
- **max_worker_processes**: default value 8, minimal value 2
- **max_prepared_transactions**: default value 0, minimal value 0
- **wal_level**: default value hot_standby, accepted values: hot_standby, replica, logical
- **track_commit_timestamp**: default value off

PostgreSQL permits different primary and replica values for the parameters below. However, a replica can become primary at any time. Different values are therefore unsuitable, and **Patroni permits changes only through** [dynamic configuration](/docs/patroni/config/dynamic#dynamic).

- **max_wal_senders**: default value 10, minimal value 3
- **max_replication_slots**: default value 10, minimal value 4
- **wal_keep_segments**: default value 8, minimal value 1
- **wal_keep_size**: default value 128MB, minimal value 16MB
- **wal_log_hints**: on

Patroni validates these values for correctness or a required minimum.

There are some other Postgres parameters controlled by Patroni:

- **listen_addresses** - is set either from `postgresql.listen` or from `PATRONI_POSTGRESQL_LISTEN` environment variable
- **port** - is set either from `postgresql.listen` or from `PATRONI_POSTGRESQL_LISTEN` environment variable
- **cluster_name** - is set either from `scope` or from `PATRONI_SCOPE` environment variable
- **hot_standby: on**

Patroni writes the parameters above to `postgresql.conf`. Except for `wal_keep_segments` and `wal_keep_size`, it also passes them as `postgres` arguments. These arguments take precedence over all other settings, including [ALTER SYSTEM](https://www.postgresql.org/docs/current/static/sql-altersystem.html).

Parameters such as **postgresql.listen** and **postgresql.data_dir** **can only be set locally**. Use the [configuration file](/docs/patroni/config/yaml#yaml) or [environment variables](/docs/patroni/config/env#env). Local configuration overrides dynamic configuration in most cases.

When applying the local or dynamic configuration options, the following actions are taken:

- The node checks for `postgresql.base.conf` and `custom_conf`.
- If `custom_conf` is set, its file supplies the base configuration. Patroni ignores `postgresql.base.conf` and `postgresql.conf` as base files.
- Otherwise, an existing `postgresql.base.conf` supplies the base configuration. It contains the renamed original configuration.
- If neither exists, Patroni renames the original `postgresql.conf` to `postgresql.base.conf` and uses it as the base.
- Patroni writes dynamic options to `postgresql.conf`, subject to the exceptions above. It adds an include for `postgresql.base.conf` or the `custom_conf` file. New options can then apply without rereading the file to check for the include.
- Command-line arguments override parameters essential for Patroni cluster management.
- If a changed value requires restart according to pg_settings context, Patroni sets pending_restart on the node. Any restart resets this flag.

The parameters would be applied in the following order (run-time are given the highest priority):

1.  load parameters from file `postgresql.base.conf` (or from a `custom_conf` file, if set)
2.  load parameters from file `postgresql.conf`
3.  load parameters from file `postgresql.auto.conf`
4.  run-time parameter using `-o --name=value`

This order supports shared node configuration (2) and node-specific `ALTER SYSTEM` settings (3). It enforces essential Patroni parameters (4). It also permits external tools to manage the base configuration directly (1).

<a id="shared_memory_gucs"></a>

### PostgreSQL parameters that touch shared memory

PostgreSQL has some parameters that determine the size of the shared memory used by them:

- **max_connections**
- **max_prepared_transactions**
- **max_locks_per_transaction**
- **max_wal_senders**
- **max_worker_processes**

Changes require a PostgreSQL restart. Standby shared memory structures must not be smaller than the corresponding primary structures.

Change these values through [dynamic configuration](/docs/patroni/config/dynamic#dynamic), as Patroni requires. The usual sequence is:

1.  Applying changes through [patronictl_edit_config](/docs/patroni/patronictl#patronictl_edit_config) (or via REST API `/config` endpoint)
2.  Restarting nodes through [patronictl_restart](/docs/patroni/patronictl#patronictl_restart) (or via REST API `/restart` endpoint)

**Note:** Restart PostgreSQL through [patronictl_restart](/docs/patroni/patronictl#patronictl_restart) or the REST API `/restart` endpoint. Restarting the Patroni daemon with `systemctl restart patroni` can trigger failover if the node is primary.

These shared memory settings require a specific restart order:

- If you want to **increase** the value of any of those settings:

  > 1.  Restart all standbys first
  > 2.  Restart the primary after that

- If you want to **decrease** the value of any of those settings:

  > 1.  Restart the primary first
  > 2.  Restart all standbys after that

**Note:** If you restart all nodes together after a **decrease**, Patroni restarts standbys with the original value. You must restart them again later. This prevents an endless crash loop: PostgreSQL exits with `FATAL` if a value is below that recorded in standby `pg_controldata`. A standby value can decrease only after its `pg_controldata` reflects the primary change.

More information about that can be found at [PostgreSQL Administrator's Overview](https://www.postgresql.org/docs/current/hot-standby.html#HOT-STANDBY-ADMIN).

### Patroni configuration parameters

Also the following Patroni configuration options **can be changed only dynamically**:

- **ttl**: 30
- **loop_wait**: 10
- **retry_timeout**: 10
- **maximum_lag_on_failover**: 1048576
- **max_timelines_history**: 0
- **check_timeline**: false
- **postgresql.use_slots**: true

After a change, Patroni reads the relevant DCS configuration section and updates its runtime values.

After each configuration change, Patroni writes DCS options to `patroni.dynamic.json` in the Postgres data directory. Only the leader can restore these options from disk. It can do so only when DCS options are absent or invalid.

<a id="validate_generate_config"></a>

--------

## Configuration generation and validation

The `patroni` executable can generate and validate [local configuration](/docs/patroni/config/yaml#yaml). Use it to:

- Create a sample local Patroni configuration;
- Create a Patroni configuration file for the locally running PostgreSQL instance (e.g. as a preparation step for the [Patroni integration](/docs/patroni/existing_data#existing_data));
- Validate a given Patroni configuration file.

<a id="generate_sample_config"></a>

### Sample Patroni configuration

```text
patroni --generate-sample-config [configfile]
```

#### Description

Generate a sample Patroni configuration in `yaml` format. Values come from [Environment configuration](/docs/patroni/config/env#env). For unset parameters, use Patroni defaults or `#FIXME` for values that the user must supply.

Some default values are defined based on the local setup:

> - **postgresql.listen**: the IP address returned by `gethostname` call for the current machine's hostname and the standard `5432` port.
> - **postgresql.connect_address**: the IP address returned by `gethostname` call for the current machine's hostname and the standard `5432` port.
> - **postgresql.authentication.rewind**: is only defined if the PostgreSQL version can be defined from the binary and the version is 11 or later.
> - **restapi.listen**: IP address returned by `gethostname` call for the current machine's hostname and the standard `8008` port.
> - **restapi.connect_address**: IP address returned by `gethostname` call for the current machine's hostname and the standard `8008` port.

#### Parameters

`configfile` - full path to the configuration file used to store the result. If not provided, the result is sent to `stdout`.

<a id="generate_config"></a>

### Patroni configuration for a running instance

```text
patroni --generate-config [--dsn DSN] [configfile]
```

#### Description

Generate a `yaml` configuration for the local running PostgreSQL instance. Connection settings use the supplied DSN first, then PostgreSQL [environment variables](https://www.postgresql.org/docs/current/libpq-envars.html). If no password is supplied, enter it at the prompt.

All non-internal GUCs from the source instance supply these Patroni parameters. This includes GUCs set through files, postmaster command-line arguments, or environment variables:

> - **scope**: `cluster_name` GUC value;
> - **postgresql.listen**: `listen_addresses` and `port` GUC values;
> - **postgresql.datadir**: `data_directory` GUC value;
> - **postgresql.parameters**: `archive_command`, `restore_command`, `archive_cleanup_command`, `recovery_end_command`, `ssl_passphrase_command`, `hba_file`, `ident_file`, `config_file` GUC values;
> - **bootstrap.dcs**: all other gathered PostgreSQL GUCs.

If Postgres GUCs do not supply `scope`, `postgresql.listen`, or `postgresql.datadir`, Patroni uses the corresponding [Environment configuration](/docs/patroni/config/env#env) value.

Other rules applied for the values definition:

> - **name**: `PATRONI_NAME` environment variable value if set, otherwise the current machine's hostname.
> - **postgresql.bin_dir**: path to the Postgres binaries gathered from the running instance.
> - **postgresql.connect_address**: the IP address returned by `gethostname` call for the current machine's hostname and the port used for the instance connection or the `port` GUC value.
> - **postgresql.authentication.superuser**: the configuration used for the instance connection;
> - **postgresql.pg_hba**: the lines gathered from the source instance's `hba_file`.
> - **postgresql.pg_ident**: the lines gathered from the source instance's `ident_file`.
> - **restapi.listen**: IP address returned by `gethostname` call for the current machine's hostname and the standard `8008` port.
> - **restapi.connect_address**: IP address returned by `gethostname` call for the current machine's hostname and the standard `8008` port.

The generated file also includes other parameters from [Environment configuration](/docs/patroni/config/env#env).

#### Parameters

`configfile`  
Full path to the configuration file used to store the result. If not provided, result is sent to `stdout`.

`dsn`  
Optional DSN string for the local PostgreSQL instance to get GUC values from.

### Validate Patroni configuration

```text
patroni --validate-config [configfile] [--ignore-listen-port | -i]
```

#### Description

Validate the Patroni configuration and print failed checks.

#### Parameters

`configfile`  
Full path to the file to check. If absent or nonexistent, read `PATRONI_CONFIG_VARIABLE`. If that variable is unset, use [Patroni environment variables](/docs/patroni/config/env#env).

`--ignore-listen-port | -i`  
Optional flag to ignore bind failures for occupied `listen` ports during `configfile` validation.

`--print | -p`  
Optional flag to print local configuration, including environment overrides, after successful validation.

---

Section pages:

- [Dynamic Configuration Settings](/docs/patroni/config/dynamic/): Dynamic configuration settings stored in DCS and applied cluster-wide.
- [YAML Configuration Settings](/docs/patroni/config/yaml/): Complete reference for Patroni YAML configuration options and sections.
- [Environment Configuration Settings](/docs/patroni/config/env/): Environment variables for overriding Patroni configuration parameters.
