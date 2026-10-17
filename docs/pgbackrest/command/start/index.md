# Start Command (start)

> Reference for pgBackRest `start` command options and behavior.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: [pgBackRest Command Docs: start](https://pgbackrest.org/command.html#command-start)

After `stop` prevents pgBackRest processes from running, use `start` to permit them again. This does not immediately start any processes. See [Starting and Stopping](/docs/pgbackrest/user-guide/#starting-and-stopping) for details and examples.

## General Options

### Allow Run as Root Option (`--allow-root`)

Allow the command to run as the root user.

By default, only `restore` can run as root because it manages file ownership. Other commands can create root-owned files, for example in the repository. The PostgreSQL user cannot access these files, which causes later commands to fail.

Enable this option to run another command as root. Preferably, run pgBackRest as the user that owns the repository and PostgreSQL cluster.

```yaml
default: n
example: --allow-root
```

### Config Option (`--config`)

pgBackRest configuration file.

Use this option to select a configuration file other than the default.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_FILE
example: --config=/conf/pgbackrest/pgbackrest.conf
```

### Config Include Path Option (`--config-include-path`)

Path to additional pgBackRest configuration files.

pgBackRest combines files with the `.conf` extension in this location with its configuration file. The result is one configuration file.

```yaml
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_INCLUDE_PATH
example: --config-include-path=/conf/pgbackrest/conf.d
```

### Config Path Option (`--config-path`)

Base path of pgBackRest configuration files.

Set the default base path for `--config` and `--config-include-path`. Explicit command-line values for these options override this setting.

For example, specify only `--config-path=/conf/pgbackrest` to set the `--config` default to `/conf/pgbackrest/pgbackrest.conf`. This also sets the `--config-include-path` default to `/conf/pgbackrest/conf.d`.

```yaml
default: CFGOPTDEF_CONFIG_PATH
example: --config-path=/conf/pgbackrest
```

### Lock Path Option (`--lock-path`)

Path where lock files are stored.

pgBackRest creates lock files in this path to prevent conflicting operations from running at the same time.

```yaml
default: /tmp/pgbackrest
example: --lock-path=/backup/db/lock
```

### Neutral Umask Option (`--neutral-umask`)

Use a neutral umask.

Set the umask to 0000 to control repository permissions. The default directory mode is 0750. The default file mode is 0640.

To use the executing user's umask, set `neutral-umask=n` in the configuration file or `--no-neutral-umask` on the command line.

```yaml
default: y
example: --no-neutral-umask
```

### Set Process Priority Option (`--priority`)

Set process priority.

Set the process priority, or niceness, used by the kernel scheduler. Positive values decrease priority. Negative values increase priority. Processes usually lack permission to increase their priority.

```yaml
allowed: [-20, 19]
example: --priority=19
```

### Stanza Option (`--stanza`)

Defines the stanza.

A stanza contains the configuration for a PostgreSQL database cluster. It defines the cluster location, backup method, archive options, and other settings. Most database servers have one PostgreSQL cluster and one stanza. A backup server has a stanza for each cluster that needs a backup.

Choose a stanza name that describes the databases in the cluster. The primary and all replicas use the same stanza name. A functional name, such as app or dw, is preferable to a local cluster name, such as main or prod.

```yaml
example: --stanza=main
```

## Log Options

### Console Log Level Option (`--log-level-console`)

Level for console logging.

The following log levels are supported:

- `off` - No logging at all (not recommended)
- `error` - Log only errors
- `warn` - Log warnings and errors
- `info` - Log info, warnings, and errors
- `detail` - Log detail, info, warnings, and errors
- `debug` - Log debug, detail, info, warnings, and errors
- `trace` - Log trace (very verbose debugging), debug, info, warnings, and errors

```yaml
default: warn
example: --log-level-console=error
```

### File Log Level Option (`--log-level-file`)

Level for file logging.

The following log levels are supported:

- `off` - No logging at all (not recommended)
- `error` - Log only errors
- `warn` - Log warnings and errors
- `info` - Log info, warnings, and errors
- `detail` - Log detail, info, warnings, and errors
- `debug` - Log debug, detail, info, warnings, and errors
- `trace` - Log trace (very verbose debugging), debug, info, warnings, and errors

```yaml
default: info
example: --log-level-file=debug
```

### Std Error Log Level Option (`--log-level-stderr`)

Level for stderr logging.

Select the log levels that write to `stderr` instead of `stdout`, which `log-level-console` controls. Output to `stderr` excludes the timestamp and process.

The following log levels are supported:

- `off` - No logging at all (not recommended)
- `error` - Log only errors
- `warn` - Log warnings and errors
- `info` - Log info, warnings, and errors
- `detail` - Log detail, info, warnings, and errors
- `debug` - Log debug, detail, info, warnings, and errors
- `trace` - Log trace (very verbose debugging), debug, info, warnings, and errors

```yaml
default: off
example: --log-level-stderr=error
```

### Log Path Option (`--log-path`)

Path where log files are stored.

pgBackRest stores log files in this path. If `log-level-file=off`, no log path is necessary.

```yaml
default: /var/log/pgbackrest
example: --log-path=/backup/db/log
```

### Log Timestamp Option (`--log-timestamp`)

Enable timestamp in logging.

Include timestamps in console and file logs. Disable this option for special uses, such as documentation generation.

```yaml
default: y
example: --no-log-timestamp
```
