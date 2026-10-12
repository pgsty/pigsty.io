---
title: "Server Ping Command (server-ping)"
linkTitle: "server-ping"
weight: 130
description: "Reference for pgBackRest `server-ping` command options and behavior."
icon: fa-solid fa-heart-pulse
module: [PGBACKREST]
categories: [Reference]
---

> Source: [pgBackRest Command Docs: server-ping](https://pgbackrest.org/command.html#command-server-ping)

Ping a pgBackRest TLS server to check whether it accepts connections. This checks availability only; it does not attempt authentication.

If the command line does not specify a host, use `tls-server-host`.

## Command Options

### TLS Server Address Option (`--tls-server-address`)

TLS server address.

Set the IP address on which the server accepts client requests.

```yaml
default: localhost
example: --tls-server-address=*
```

### TLS Server Port Option (`--tls-server-port`)

TLS server port.

Set the port on which the server accepts client requests.

```yaml
default: 8432
allowed: [1, 65535]
example: --tls-server-port=8000
```

## General Options

### Allow Run as Root Option (`--allow-root`)

Allow the command to run as the root user.

By default, only `restore` can run as root because it manages file ownership. Other commands can create root-owned files, for example in the repository. The PostgreSQL user cannot access these files, which causes later commands to fail.

Enable this option to run another command as root. Preferably, run pgBackRest as the user that owns the repository and PostgreSQL cluster.

```yaml
default: n
example: --allow-root
```

### Buffer Size Option (`--buffer-size`)

Buffer size for I/O operations.

Set the buffer size for copy, compression, encryption, and other operations. Options determine the number of buffers. Each operation can also use more memory. For example, `gz` compression can use an additional 256KiB.

Allowed values are `16KiB`, `32KiB`, `64KiB`, `128KiB`, `256KiB`, `512KiB`, `1MiB`, `2MiB`, `4MiB`, `8MiB`, and `16MiB`.

```yaml
default: 1MiB
example: --buffer-size=2MiB
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

### I/O Timeout Option (`--io-timeout`)

I/O timeout.

Set the connection and read/write timeout in seconds.

The complete read/write operation can take longer than this timeout. However, it must make some progress before the timeout, even if only one byte.

```yaml
default: 1m
allowed: [100ms, 1h]
example: --io-timeout=120
```

### Set Process Priority Option (`--priority`)

Set process priority.

Set the process priority, or niceness, used by the kernel scheduler. Positive values decrease priority. Negative values increase priority. Processes usually lack permission to increase their priority.

```yaml
allowed: [-20, 19]
example: --priority=19
```

### Keep Alive Option (`--sck-keep-alive`)

Keep-alive enable.

Enables keep-alive messages on socket connections.

```yaml
default: y
example: --no-sck-keep-alive
```

### Keep Alive Count Option (`--tcp-keep-alive-count`)

Keep-alive count.

Set how many TCP keep-alive messages can be lost before the connection is considered dead.

This option is available on systems that support the `TCP_KEEPCNT` socket option.

```yaml
allowed: [1, 32]
example: --tcp-keep-alive-count=3
```

### Keep Alive Idle Option (`--tcp-keep-alive-idle`)

Keep-alive idle time.

Set how many seconds of network inactivity must pass before the operating system sends a TCP keep-alive message.

This option is available on systems that support the `TCP_KEEPIDLE` socket option.

```yaml
allowed: [1, 3600]
example: --tcp-keep-alive-idle=60
```

### Keep Alive Interval Option (`--tcp-keep-alive-interval`)

Keep-alive interval time.

Set how many seconds to wait before retransmitting a TCP keep-alive message that has no acknowledgement.

This option is available on systems that support the `TCP_KEEPINTVL` socket option.

```yaml
allowed: [1, 900]
example: --tcp-keep-alive-interval=30
```

### TLSv1.2 cipher suites Option (`--tls-cipher-12`)

Allowed TLSv1.2 cipher suites.

All TLS connections between the pgBackRest client and server use encryption. Connections to object stores, such as S3, also use encryption by default.

> **NOTE:** The absolute minimum security level for any transport connection is TLSv1.2.

Change the accepted cipher suites if necessary. The example is suitable unless you have specific security requirements. By default, this option is unset and the underlying OpenSSL library default applies.

```yaml
example: --tls-cipher-12=HIGH:MEDIUM:+3DES:!aNULL
```

### TLSv1.3 cipher suites Option (`--tls-cipher-13`)

Allowed TLSv1.3 cipher suites.

All TLS connections between the pgBackRest client and server use encryption. Connections to object stores, such as S3, also use encryption by default.

> **NOTE:** The absolute minimum security level for any transport connection is TLSv1.2.

Change the accepted cipher suites if necessary. By default, this option is unset and the underlying OpenSSL library default applies.

```yaml
example: --tls-cipher-13=TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256
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
