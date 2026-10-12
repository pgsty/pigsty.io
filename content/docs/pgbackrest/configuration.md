---
title: "Configuration Reference"
linkTitle: "Configuration"
weight: 50
description: "Complete pgBackRest configuration reference for all settings including archive, backup, repository, and cloud storage options."
icon: fa-solid fa-code
module: [PGBACKREST]
categories: [Reference]
---

--------

## Introduction

You can configure pgBackRest entirely with command-line parameters. For complex installations or many options, a configuration file is more practical. Its default location is `/etc/pgbackrest/pgbackrest.conf`. If that file is absent, pgBackRest checks the old default, `/etc/pgbackrest.conf`.

The following option types are used:

**String**: A text string, commonly an identifier, password, etc.

Command line example: `--stanza=demo`<br/>Configuration file example: `repo1-cipher-pass=zWaf6XtpjIVZC5444yXB...`

**Path**: Identify a location in a directory structure. Paths must start with /. They cannot contain double // and should not end with /.

Command line example: `--repo1-path=/var/lib/pgbackrest`<br/>Configuration file example: `repo1-path=/var/lib/pgbackrest`

**Boolean**: Enables or disables the option. Only y/n are valid argument values.

Command line examples: `--start-fast`, `--no-start-fast`, `--start-fast=y`, `--start-fast=n`<br/>Configuration file examples: `start-fast=y`, `start-fast=n`

**Integer**: Used for ports, retention/retry counts, parallel processes allowed, etc.

Command line example: `--compress-level=3`<br/>Configuration file example: `pg1-port=5432`

**Size**: Specify buffer sizes, disk usage, and similar values. Use bytes (the default), KiB, MiB, GiB, TiB, or PiB. Each unit uses powers of 1024. For example, use 5GiB, 5GB, or 5g instead of 5368709120; values are case-insensitive. Fractional values are not permitted. Use 2560MiB instead of 2.5GiB.

Command line example: `--archive-get-queue-max=1GiB`<br/>Configuration file example: `buffer-size=2MiB`

**Time**: Time in seconds.

Command line example: `--io-timeout=90`<br/>Configuration file example: `db-timeout=600`

**List**: Specify the option multiple times.

Command line example: `--db-exclude=db1 --db-exclude=db2 --db-exclude=db5`

Configuration file example, each on its own line:

```ini
db-exclude=db1
db-exclude=db2
db-exclude=db5
```

**Key/Value**: Specify the option multiple times as `key=value`.

Command line example: `--tablespace-map=ts_01=/db/ts_01 --tablespace-map=ts_02=/db/ts_02`

Configuration file example, each on its own line:

```ini
tablespace-map=ts_01=/db/ts_01
tablespace-map=ts_02=/db/ts_02
```

--------

## Archive Options

The `archive` section defines options for the `archive-push` and `archive-get` commands.

### Asynchronous Archiving Option (`--archive-async`)

Push/get WAL segments asynchronously.

Enables asynchronous operation for the `archive-push` and `archive-get` commands.

Asynchronous operation can reuse connections and process work in parallel, which improves efficiency. See `spool-path`, `archive-get-queue-max`, and `archive-push-queue-max` for more information.

```text
default: n
example: archive-async=y
```

### Maximum Archive Get Queue Size Option (`--archive-get-queue-max`)

Maximum size of the pgBackRest archive-get queue.

When `archive-async` is enabled, set the maximum `archive-get` queue size. pgBackRest stores the queue in `spool-path` to supply WAL to PostgreSQL faster.

```text
default: 128MiB
allowed: [0B, 4PiB]
example: archive-get-queue-max=1GiB
```

### Retry Missing WAL Segment Option (`--archive-missing-retry`)

Retry missing WAL segment

In asynchronous mode, retry a WAL segment that `archive-get` previously reported as missing. This prevents reuse of spool-path notifications from an earlier restore. Such notifications could cause recovery to fail before consistency is reached.

Disable this option to help PostgreSQL reliably detect the end of archived WAL and switch to streaming from the primary. With retries enabled, a continuous flow of archived WAL keeps PostgreSQL reading the archive instead of switching to streaming.

Before you disable this option, make sure the stanza spool path is empty. The `restore` command empties it automatically if the spool path is configured at restore time. Otherwise, empty it yourself.

```text
default: y
example: archive-missing-retry=n
```

### Archive Push Batch Size Option (`--archive-push-batch-size`)

Maximum amount of WAL to push per asynchronous run.

In asynchronous mode, each `archive-push` run processes all WAL segments that are ready. It checks `archive-push-queue-max` only at the start. A large run can let the queue grow far past the limit before the next check.

Set the amount of WAL to process per run. The process then exits, and the next `archive-push` starts it again and checks the queue. Lower values check the queue more often but start the asynchronous process more frequently. pgBackRest rounds the value down to a whole number of WAL segments. It always processes at least one segment.

```text
default: 16GiB
allowed: [1MiB, 4PiB]
example: archive-push-batch-size=1GiB
```

### Maximum Archive Push Queue Size Option (`--archive-push-queue-max`)

Maximum size of the PostgreSQL archive queue.

When the queue reaches the limit:

- pgBackRest tells PostgreSQL that it archived the WAL successfully, then **DROPS IT**.
- PostgreSQL logs a warning.

This interrupts the archive log stream. PITR cannot continue past this point. Take a new backup to restore full recovery capability.

In asynchronous mode, pgBackRest drops the entire queue. This prevents brief WAL transfers before the queue exceeds the limit again.

In asynchronous mode, each `archive-push` run checks this limit only at the start. The queue can exceed it during the run. Reduce `archive-push-batch-size` to check more often.

This feature prevents WAL from filling the log volume, which would stop PostgreSQL completely. It sacrifices backup continuity to keep PostgreSQL running.

```text
allowed: [0B, 4PiB]
example: archive-push-queue-max=1TiB
```

Deprecated Name: archive-queue-max

### Archive Timeout Option (`--archive-timeout`)

Archive timeout.

Set the maximum wait, in seconds, for each WAL segment to reach the pgBackRest archive repository. The `check` and `backup` commands use this timeout while waiting for WAL segments necessary for backup consistency.

```text
default: 1m
allowed: [100ms, 1d]
example: archive-timeout=30
```

--------

## Backup Options

The `backup` section defines settings related to backup.

### Backup Annotation Option (`--annotation`)

Annotate backup with user-defined key/value pairs.

Attach informative key/value pairs to the backup. Repeat this option to attach multiple annotations.

When `--set` specifies a backup, the `info` command includes its annotations in text output. JSON output always includes annotations.

```text
example: annotation=source="Sunday backup for website database"
```

### Check Archive Option (`--archive-check`)

Check that WAL segments are in the archive before backup completes.

Check that the WAL archive contains all segments necessary for backup consistency. Keep the default unless you use another archive method.

This option must be enabled if `archive-copy` is enabled.

```text
default: y
example: archive-check=n
```

### Copy Archive Option (`--archive-copy`)

Copy WAL segments needed for consistency to the backup.

Store WAL segments necessary for consistency directly in the backup. This protects against corruption in the WAL archive. The archive still stores these segments, so this option uses additional space.

When you use this option, give `archive-push` and `backup` the same `compress-type`, such as `lz4`. Otherwise, pgBackRest must recompress WAL segments with the backup compression type. This can require substantial processing when the backup generates a large amount of WAL.

After a restore, these WAL segments are in `pg_xlog/pg_wal`. PostgreSQL uses them before it calls `restore_command`.

The `archive-check` option must be enabled if `archive-copy` is enabled.

```text
default: n
example: archive-copy=y
```

### Check Archive Mode Option (`--archive-mode-check`)

Check the PostgreSQL `archive_mode` setting.

Enabled by default, this option disallows PostgreSQL `archive_mode=always`.

A standby can push WAL segments with the same logical contents as primary segments but different checksums. Disable archiving from multiple sources to avoid these conflicts.

CAUTION:

If you disable this option, make sure that only one archiver writes to the repository through `archive-push`.

```text
default: y
example: archive-mode-check=n
```

### Backup from Standby Option (`--backup-standby`)

Backup from the standby cluster.

Enable backups from the standby to reduce primary cluster load. Configure both the primary and standby hosts to use this option.

The following modes are supported:

- `y` - Standby is required for backup.
- `prefer` - Backup from standby if available otherwise backup from primary.
- `n` - Backup from primary only.

```text
default: n
example: backup-standby=y
```

### Page Checksums Option (`--checksum-page`)

Validate data page checksums.

Validate all data page checksums during a cluster backup. pgBackRest enables this option automatically when the cluster has data page checksums enabled.

Checksum validation failures do not stop a backup. pgBackRest writes warnings to the log and, with default settings, the console. It stores the invalid page list in the backup manifest.

```text
example: checksum-page=n
```

### Path/File Exclusions Option (`--exclude`)

Exclude paths/files from the backup.

All exclusions are relative to `$PGDATA`. An exclusion ending in / excludes files in the directory but keeps the directory itself. For example, `--exclude=junk/` excludes files in `$PGDATA/junk`. Without a final /, an exclusion matches either the exact file name or the name followed by /. For example, `--exclude=junk` excludes the `$PGDATA/junk` directory and all its files.

**Use this feature with care. An excluded critical file can make the backup inconsistent. Test your restores.**

pgBackRest logs each excluded file and its exclusion rule at `info` level. Review the list to make sure all exclusions are intended.

NOTE:

Delta restores do not preserve exclusions. They *remove* files and directories that the backup excluded.

Do not use this option to exclude PostgreSQL logs. Use PostgreSQL `log_directory` to move logs outside `PGDATA`. This also preserves logs after a restore.

Specify multiple exclusions on the command line or in a configuration file.

```text
example: exclude=junk/
```

### Expire Auto Option (`--expire-auto`)

Automatically run the `expire` command after a successful backup.

This setting is enabled by default. Disable it with care: pgBackRest then keeps all backups and archives indefinitely, which can fill the repository. Run `expire` regularly to prevent this.

Automatic expiration after a successful backup uses the `backup` command configuration. Options set only in an `expire` command section, such as `[global:expire]`, do not apply. To use those options, disable automatic expiration and run `expire` separately.

```text
default: y
example: expire-auto=y
```

### Manifest Save Threshold Option (`--manifest-save-threshold`)

Manifest save threshold during backup.

Set how often pgBackRest saves the manifest during a backup. The manifest stores checksums so that backup resume can work efficiently. The actual threshold is 1% of backup size or `manifest-save-threshold`, whichever is greater.

```text
default: 1GiB
allowed: [1B, 1TiB]
example: manifest-save-threshold=8GiB
```

### Resume Option (`--resume`)

Allow resume of failed backup.

Enable or disable backup resume. After a backup fails, resume can substantially reduce the time for another backup of the same type. This feature adds complexity. You can disable it in environments that do not need it.

```text
default: y
example: resume=n
```

### Start Fast Option (`--start-fast`)

Force a checkpoint to start backup quickly.

Pass `y` to the backup start function `fast` parameter to force a checkpoint and start the backup immediately. Otherwise, the backup waits for the next regular checkpoint.

```text
default: n
example: start-fast=y
```

--------

## General Options

The `general` section defines options that are common for many commands.

### Allow Run as Root Option (`--allow-root`)

Allow the command to run as the root user.

By default, only `restore` can run as root because it manages file ownership. Other commands can create root-owned files, for example in the repository. The PostgreSQL user cannot access these files, which causes later commands to fail.

Enable this option to run another command as root. Preferably, run pgBackRest as the user that owns the repository and PostgreSQL cluster.

```text
default: n
example: allow-root=y
```

### Buffer Size Option (`--buffer-size`)

Buffer size for I/O operations.

Set the buffer size for copy, compression, encryption, and other operations. Options determine the number of buffers. Each operation can also use more memory. For example, `gz` compression can use an additional 256KiB.

Allowed values are `16KiB`, `32KiB`, `64KiB`, `128KiB`, `256KiB`, `512KiB`, `1MiB`, `2MiB`, `4MiB`, `8MiB`, and `16MiB`.

```text
default: 1MiB
example: buffer-size=2MiB
```

### pgBackRest Command Option (`--cmd`)

pgBackRest command.

pgBackRest can generate a command string, for example when `restore` generates the restore_command setting. It uses the command that started the pgBackRest process unless you specify the `cmd` option.

CAUTION:

Wrapping the pgBackRest command may cause unpredictable behavior and is not recommended.

```text
default: [path of executed pgbackrest binary]
example: cmd=/var/lib/pgsql/bin/pgbackrest_wrapper.sh
```

### SSH Client Command Option (`--cmd-ssh`)

SSH client command.

Use this option to select a different SSH client or when the `ssh` command is not in $PATH.

```text
default: ssh
example: cmd-ssh=/usr/bin/ssh
```

### Compress Option (`--compress`)

Use file compression.

Backup files are compatible with command-line compression tools.

This option is deprecated. Use `compress-type` instead.

```text
default: y
example: compress=n
```

### Compress Level Option (`--compress-level`)

File compression level.

Set the file compression level when `compress-type` is not `none` or when `compress=y` (deprecated).

```text
default (depending on compress-type):
    bz2 - 9
    gz - 6
    lz4 - 1
    zst - 3

allow range (depending on compress-type):
    bz2 - [1, 9]
    gz - [-1, 9]
    lz4 - [-5, 12]
    zst - [-7, 22]

example: compress-level=9
```

### Network Compress Level Option (`--compress-level-network`)

Network compression level.

Set the network compression level when `compress-type=none` and the command runs on a host other than the repository host. Compression reduces network traffic. When `compress-type` is not `none`, pgBackRest ignores `compress-level-network` and uses `compress-level`. This prevents compression of the same file twice.

```text
default: 1
allowed: [-5, 12]
example: compress-level-network=1
```

### Compress Type Option (`--compress-type`)

File compression type.

The following compression types are supported:

- `none` - no compression
- `bz2` - bzip2 compression format
- `gz` - gzip compression format
- `lz4` - lz4 compression format (not available on all platforms)
- `zst` - Zstandard compression format (not available on all platforms)

```text
default: gz
example: compress-type=none
```

### Database Timeout Option (`--db-timeout`)

Database query timeout.

Set the database query timeout in seconds. This includes backup start/stop functions, which can each take substantial time. Keep a high timeout unless these functions will return quickly. For example, you have set `start-fast=y` and know the cluster will generate few WAL segments during the backup.

NOTE:

The `db-timeout` option must be less than the `protocol-timeout` option.

```text
default: 30m
allowed: [100ms, 7d]
example: db-timeout=600
```

### Delta Option (`--delta`)

Restore or backup using checksums.

By default, a restore expects existing but empty PostgreSQL data and tablespace directories. Enable this option for a delta restore that uses checksums.

During a backup, use checksums instead of timestamps to determine which files to copy.

```text
default: n
example: delta=y
```

### I/O Timeout Option (`--io-timeout`)

I/O timeout.

Set the connection and read/write timeout in seconds.

The complete read/write operation can take longer than this timeout. However, it must make some progress before the timeout, even if only one byte.

```text
default: 1m
allowed: [100ms, 1h]
example: io-timeout=120
```

### Lock Path Option (`--lock-path`)

Path where lock files are stored.

pgBackRest creates lock files in this path to prevent conflicting operations from running at the same time.

```text
default: /tmp/pgbackrest
example: lock-path=/backup/db/lock
```

### Neutral Umask Option (`--neutral-umask`)

Use a neutral umask.

Set the umask to 0000 to control repository permissions. The default directory mode is 0750. The default file mode is 0640.

To use the executing user's umask, set `neutral-umask=n` in the configuration file or `--no-neutral-umask` on the command line.

```text
default: y
example: neutral-umask=n
```

### Set Process Priority Option (`--priority`)

Set process priority.

Set the process priority, or niceness, used by the kernel scheduler. Positive values decrease priority. Negative values increase priority. Processes usually lack permission to increase their priority.

```text
allowed: [-20, 19]
example: priority=19
```

### Process Maximum Option (`--process-max`)

Max processes to use for compress/transfer.

Each process compresses and transfers data to increase command speed. Do not set `process-max` so high that database performance decreases.

```text
default: 1
allowed: [1, 999]
example: process-max=4
```

### Protocol Timeout Option (`--protocol-timeout`)

Protocol timeout.

Set how many seconds a local or remote process waits for a new protocol message. This prevents an indefinite wait.

NOTE:

The `protocol-timeout` option must be greater than the `db-timeout` option.

```text
default: 31m
allowed: [100ms, 7d]
example: protocol-timeout=630
```

### Keep Alive Option (`--sck-keep-alive`)

Keep-alive enable.

Enables keep-alive messages on socket connections.

```text
default: y
example: sck-keep-alive=n
```

### Spool Path Option (`--spool-path`)

Path where transient data is stored.

This path stores data for asynchronous `archive-push` and `archive-get` commands.

After it stores WAL in the archive, asynchronous `archive-push` writes an acknowledgement in the spool path. On failure, it writes an error. The foreground process can then notify PostgreSQL quickly. Acknowledgement files contain zero bytes on success and a few hundred bytes on error.

Asynchronous `archive-get` queues WAL in the spool path to supply it quickly when PostgreSQL requests it. Transfers are most efficient when the spool path uses the same filesystem as `pg_xlog`/`pg_wal`. However, do not put the spool path inside `pg_xlog`/`pg_wal`. This can cause problems for PostgreSQL utilities, such as `pg_rewind`.

Spool-path data can and should survive a reboot. However, loss of this data does not cause a problem. For `archive-push`, pgBackRest checks again that each WAL segment is safely archived. For `archive-get`, it rebuilds the queue.

Use a local Posix-compatible filesystem for the spool path. It is not intended for remote filesystems, such as NFS or CIFS.

```text
default: /var/spool/pgbackrest
example: spool-path=/backup/db/spool
```

### Keep Alive Count Option (`--tcp-keep-alive-count`)

Keep-alive count.

Set how many TCP keep-alive messages can be lost before the connection is considered dead.

This option is available on systems that support the `TCP_KEEPCNT` socket option.

```text
allowed: [1, 32]
example: tcp-keep-alive-count=3
```

### Keep Alive Idle Option (`--tcp-keep-alive-idle`)

Keep-alive idle time.

Set how many seconds of network inactivity must pass before the operating system sends a TCP keep-alive message.

This option is available on systems that support the `TCP_KEEPIDLE` socket option.

```text
allowed: [1, 3600]
example: tcp-keep-alive-idle=60
```

### Keep Alive Interval Option (`--tcp-keep-alive-interval`)

Keep-alive interval time.

Set how many seconds to wait before retransmitting a TCP keep-alive message that has no acknowledgement.

This option is available on systems that support the `TCP_KEEPINTVL` socket option.

```text
allowed: [1, 900]
example: tcp-keep-alive-interval=30
```

### TLSv1.2 cipher suites Option (`--tls-cipher-12`)

Allowed TLSv1.2 cipher suites.

All TLS connections between the pgBackRest client and server use encryption. Connections to object stores, such as S3, also use encryption by default.

NOTE:

The absolute minimum security level for any transport connection is TLSv1.2.

Change the accepted cipher suites if necessary. The example is suitable unless you have specific security requirements. By default, this option is unset and the underlying OpenSSL library default applies.

```text
example: tls-cipher-12=HIGH:MEDIUM:+3DES:!aNULL
```

### TLSv1.3 cipher suites Option (`--tls-cipher-13`)

Allowed TLSv1.3 cipher suites.

All TLS connections between the pgBackRest client and server use encryption. Connections to object stores, such as S3, also use encryption by default.

NOTE:

The absolute minimum security level for any transport connection is TLSv1.2.

Change the accepted cipher suites if necessary. By default, this option is unset and the underlying OpenSSL library default applies.

```text
example: tls-cipher-13=TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256
```

--------

## Log Options

The `log` section defines logging-related settings.

CAUTION:

Trace-level logs can expose secrets, including keys and passwords. Use them with care.

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

```text
default: warn
example: log-level-console=error
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

```text
default: info
example: log-level-file=debug
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

```text
default: off
example: log-level-stderr=error
```

### Log Path Option (`--log-path`)

Path where log files are stored.

pgBackRest stores log files in this path. If `log-level-file=off`, no log path is necessary.

```text
default: /var/log/pgbackrest
example: log-path=/backup/db/log
```

### Log Subprocesses Option (`--log-subprocess`)

Enable logging in subprocesses.

Enable file logging for subprocesses created by this process. Use the level specified by `log-level-file`.

```text
default: n
example: log-subprocess=y
```

### Log Timestamp Option (`--log-timestamp`)

Enable timestamp in logging.

Include timestamps in console and file logs. Disable this option for special uses, such as documentation generation.

```text
default: y
example: log-timestamp=n
```

--------

## Maintainer Options

Maintainer options support PostgreSQL forks. The fork maintainer should determine the correct settings and give them to users.

WARNING:

Improper use of these options may lead to unexpected behavior or data corruption.

The fork maintainer must test pgBackRest with the required options. pgBackRest does not guarantee compatibility with any fork.

### Check WAL Headers Option (`--archive-header-check`)

Check PostgreSQL version/id in WAL headers.

This option is enabled by default. It compares WAL headers with the PostgreSQL version and system identifier to check that WAL goes to the correct stanza. pgBackRest also checks `pg_control` against the stanza. It verifies that WAL comes from the PostgreSQL data directory that contains `pg_control`.

Thus, disabling this check is relatively safe. Disable it only when necessary, for example for encrypted WAL.

```text
default: y
example: archive-header-check=n
```

### Page Header Check Option (`--page-header-check`)

Check PostgreSQL page headers.

Enabled by default, this option adds page header checks.

Disable this option only when necessary, for example for encrypted pages.

```text
default: y
example: page-header-check=n
```

### Force PostgreSQL Version Option (`--pg-version-force`)

Force PostgreSQL version.

Use the specified PostgreSQL version instead of the version detected from `pg_control` or WAL headers. This is mainly useful for PostgreSQL forks or development versions whose values differ from the release version. The version that PostgreSQL reports through `server_version_num` must match the forced version.

WARNING:

Use this option with care. pgBackRest still reads `pg_control` and WAL headers in the official open-source PostgreSQL format for the specified version. Changes to fields that pgBackRest uses can cause unexpected behavior. Generally, the fork must add all custom struct members *after* the standard PostgreSQL members for this option to work correctly.

```text
example: pg-version-force=15
```

--------

## Repository Options

The `repository` section defines options used to configure the repository.

**Indexing**: Every `repo-` option has an index to support multiple repositories. For one repository, use options such as `repo1-path` and `repo1-host`. With multiple repositories and no `--repo` command option, operations follow priority order: repo1, then repo2, and so on.

The `repo-retention-*` options control backup retention. With count-based retention, expiration starts only when completed backups exceed the allowed count. For example, set `repo1-retention-full-type` to `count` (the default) and `repo1-retention-full` to 2. The oldest backup expires after 3 complete backups. With `repo1-retention-full-type` set to `time`, `repo1-retention-full` specifies days. Expiration requires at least that many days of full backups. Always reserve space for retention + 1 backups.

### Azure Repository Account Option (`--repo-azure-account`)

Azure repository account.

Azure account used to store the repository.

```text
example: repo1-azure-account=pg-backup
```

### Azure Repository Container Option (`--repo-azure-container`)

Azure repository container.

Azure container used to store the repository.

Set `repo-path=/` to store the repository in the container root. Usually, specify a prefix such as `/repo`. The container can then also store logs and other Azure-generated content.

```text
example: repo1-azure-container=pg-backup
```

### Azure Repository Endpoint Option (`--repo-azure-endpoint`)

Azure repository endpoint.

Set the blob service endpoint. The default is usually correct unless you use Azure Government.

For custom/test configurations the `repo-storage-ca-file`, `repo-storage-ca-path`, `repo-storage-host`, `repo-storage-port`, and `repo-storage-verify-tls` options may be useful.

```text
default: blob.core.windows.net
example: repo1-azure-endpoint=blob.core.usgovcloudapi.net
```

### Azure Repository Key Option (`--repo-azure-key`)

Azure repository key.

A shared key or shared access signature depending on the `repo-azure-key-type` option.

```text
example: repo1-azure-key=T+9+aov82qNhrcXSNGZCzm9mjd4d75/oxxOr6r1JVpgTLA==
```

### Azure Repository Key Type Option (`--repo-azure-key-type`)

Azure repository key type.

The following types are supported for authorization:

- `shared` - Shared key
- `sas` - Shared access signature
- `auto` - Automatically authorize using Azure managed identities

```text
default: shared
example: repo1-azure-key-type=sas
```

### Azure Repository URI Style Option (`--repo-azure-uri-style`)

Azure URI Style.

The following URI styles are supported:

- `host` - Connect to `account.endpoint` host.
- `path` - Connect to `endpoint` host and prepend account to URIs.

```text
default: host
example: repo1-azure-uri-style=path
```

### Block Incremental Backup Option (`--repo-block`)

Enable block incremental backup.

Block incremental backup divides files into blocks that can be backed up independently. This saves repository space. It can also improve delta restore performance because pgBackRest can fetch individual blocks without reading the entire repository file.

NOTE:

The `repo-bundle` option must be enabled before `repo-block` can be enabled.

File size and age determine block size. Older or larger files generally use larger blocks. Files above the age threshold do not use block incremental backup.

For maximum efficiency, enable block incremental for all backup types, including full backups. Full backups become slightly larger. Later differential and incremental backups use their block maps to save space.

```text
default: n
example: repo1-block=y
```

### Repository Bundles Option (`--repo-bundle`)

Bundle files in repository.

Combine smaller files into bundles to reduce the number of repository files. Fewer file writes usually improve efficiency, especially with object stores such as S3. Zero-length files have only manifest entries and no stored file contents. This saves time and space.

```text
default: n
example: repo1-bundle=y
```

### Repository Bundle Limit Option (`--repo-bundle-limit`)

Limit for file bundles.

Set the maximum file size for inclusion in bundles. Larger files are stored separately.

A resumed backup cannot reuse bundled files. Higher limits put more files in bundles and leave fewer files available for resume.

```text
default: 2MiB
allowed: [8KiB, 1PiB]
example: repo1-bundle-limit=10MiB
```

### Repository Bundle Size Option (`--repo-bundle-size`)

Target size for file bundles.

Set the target size of one file bundle. The uncompressed bundle can be as large as `repo-bundle-size` + `repo-bundle-limit`. Do not set this option to the maximum file size your filesystem permits.

Avoid very large bundles. A retry must repeat the entire bundle.

```text
default: 20MiB
allowed: [1MiB, 1PiB]
example: repo1-bundle-size=10MiB
```

### Repository Cipher Passphrase Option (`--repo-cipher-pass`)

Repository cipher passphrase.

Passphrase used to encrypt/decrypt files of the repository.

NOTE:

Without `stanza`, `info` reads encryption settings only from `global`. For stanza-specific encryption settings, run `info` with `stanza` to read the encrypted stanza.

```text
example: repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
```

### Repository Cipher Type Option (`--repo-cipher-type`)

Cipher used to encrypt the repository.

The following cipher types are supported:

- `none` - The repository is not encrypted
- `aes-256-cbc` - Advanced Encryption Standard with 256 bit key length

pgBackRest always encrypts data on the client, even when the repository type, such as S3, supports encryption.

```text
default: none
example: repo1-cipher-type=aes-256-cbc
```

### GCS Repository Bucket Option (`--repo-gcs-bucket`)

GCS repository bucket.

GCS bucket used to store the repository.

Set `repo-path=/` to store the repository in the bucket root. Usually, specify a prefix such as `/repo`. The bucket can then also store logs and other GCS-generated content.

```text
example: repo1-gcs-bucket=/pg-backup
```

### GCS Repository Endpoint Option (`--repo-gcs-endpoint`)

GCS repository endpoint.

Set the endpoint for the storage service connection. You can select a local GCS server or another endpoint.

```text
default: storage.googleapis.com
example: repo1-gcs-endpoint=localhost
```

### GCS Repository Key Option (`--repo-gcs-key`)

GCS repository key.

A token or service key file depending on the `repo-gcs-key-type` option.

```text
example: repo1-gcs-key=/etc/pgbackrest/gcs-key.json
```

### GCS Repository Key Type Option (`--repo-gcs-key-type`)

GCS repository key type.

The following types are supported for authorization:

- `auto` - Authorize using the instance service account.
- `service` - Service account from locally stored key.
- `token` - For local testing, e.g. `fakegcs`.

When `repo-gcs-key-type=service`, pgBackRest reloads credentials when it renews the authentication token.

```text
default: service
example: repo1-gcs-key-type=auto
```

### GCS Repository Project ID Option (`--repo-gcs-user-project`)

GCS project ID.

GCS project ID used to determine request billing.

```text
example: repo1-gcs-user-project=my-project
```

### Repository Hardlink Option (`--repo-hardlink`)

Hardlink files between backups in the repository.

Hard-link differential and incremental backup files to their full backups. Each backup then appears to be a full backup at the filesystem level. Use care: changes to hard-linked files can affect every backup in the set.

```text
default: n
example: repo1-hardlink=y
```

Deprecated Name: hardlink

### Repository Host Option (`--repo-host`)

Repository host when operating remotely.

This setting is not necessary for backups and archives on a locally mounted filesystem.

```text
example: repo1-host=repo1.domain.com
```

Deprecated Name: backup-host

### Repository Host Certificate Authority File Option (`--repo-host-ca-file`)

Repository host certificate authority file.

Use a CA file other than the system default for connecting to the repository host.

```text
example: repo1-host-ca-file=/etc/pki/tls/certs/ca-bundle.crt
```

### Repository Host Certificate Authority Path Option (`--repo-host-ca-path`)

Repository host certificate authority path.

Use a CA path other than the system default for connecting to the repository host.

```text
example: repo1-host-ca-path=/etc/pki/tls/certs
```

### Repository Host Certificate File Option (`--repo-host-cert-file`)

Repository host certificate file.

pgBackRest sends this certificate to the repository host to prove the client identity.

```text
example: repo1-host-cert-file=/path/to/client.crt
```

### Repository Host Command Option (`--repo-host-cmd`)

Repository host pgBackRest command.

Set this option only when the pgBackRest command path differs between the local and repository hosts. Otherwise, the repository host uses the local command path.

```text
default: [path of executed pgbackrest binary]
example: repo1-host-cmd=/usr/lib/backrest/bin/pgbackrest
```

Deprecated Name: backup-cmd

### Repository Host Configuration Option (`--repo-host-config`)

pgBackRest repository host configuration file.

Set the repository host configuration file location. This is necessary only when it differs from the local configuration file location.

```text
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_FILE
example: repo1-host-config=/conf/pgbackrest/pgbackrest.conf
```

Deprecated Name: backup-config

### Repository Host Configuration Include Path Option (`--repo-host-config-include-path`)

pgBackRest repository host configuration include path.

Set the repository host configuration include path. This is necessary only when it differs from the local configuration include path.

```text
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_INCLUDE_PATH
example: repo1-host-config-include-path=/conf/pgbackrest/conf.d
```

### Repository Host Configuration Path Option (`--repo-host-config-path`)

pgBackRest repository host configuration path.

Set the repository host configuration path. This is necessary only when it differs from the local configuration path.

```text
default: CFGOPTDEF_CONFIG_PATH
example: repo1-host-config-path=/conf/pgbackrest
```

### Repository Host Key File Option (`--repo-host-key-file`)

Repository host key file.

This key proves that the certificate owner sent the client certificate.

```text
example: repo1-host-key-file=/path/to/client.key
```

### Repository Host Port Option (`--repo-host-port`)

Repository host port when `repo-host` is set.

Use this option to specify a non-default port for the repository host protocol.

NOTE:

When `repo-host-type=ssh`, `repo-host-port` has no default. The command specified by `cmd-ssh` supplies its configured port.

```text
default (depending on repo-host-type):
    tls - 8432

allowed: [0, 65535]
example: repo1-host-port=25
```

Deprecated Name: backup-ssh-port

### Repository Host Protocol Type Option (`--repo-host-type`)

Repository host protocol type.

The following protocol types are supported:

- `ssh` - Secure Shell.
- `tls` - pgBackRest TLS server.

```text
default: ssh
example: repo1-host-type=tls
```

### Repository Host User Option (`--repo-host-user`)

Repository host user when `repo-host` is set.

Set the user for repository host operations. Prefer a separate user, such as `pgbackrest`, to the `postgres` user. If PostgreSQL runs on the repository host, you can add `postgres` to the `pgbackrest` group. This gives it read access to the repository without permission to damage its contents accidentally.

```text
default: pgbackrest
example: repo1-host-user=repo-user
```

Deprecated Name: backup-user

### Repository Path Option (`--repo-path`)

Path where backups and archive are stored.

The repository is where pgBackRest stores backups and archives WAL segments.

To estimate repository space, take some backups. Record the sizes of full, incremental, and differential backups (full/incr/diff). Measure how much WAL the database generates each day. These measurements give an approximate space requirement. Requirements will probably change as the database changes.

```text
default: /var/lib/pgbackrest
example: repo1-path=/backup/db/backrest
```

### Archive Retention Option (`--repo-retention-archive`)

Number of backups worth of continuous WAL to retain.

NOTE:

WAL segments necessary for backup consistency remain until the backup expires, regardless of this option.

If this value is unset and `repo-retention-full-type` is `count` (the default), archive retention follows backup retention. When `repo-retention-archive-type` is `full`, it uses `repo-retention-full`. When the archive type is `diff`, it uses `repo-retention-diff`. Thus, WAL expires only for backups that have already expired. If `repo-retention-full-type` is `time`, the default removes archives older than the oldest full backup retained to satisfy `repo-retention-full`.

Set this option when `repo-retention-archive-type` is `incr`. With limited disk space, use it with `repo-retention-archive-type` to expire WAL segments more aggressively. However, backups with expired WAL cannot support PITR. This is **not** recommended.

```text
allowed: [1, 9999999]
example: repo1-retention-archive=2
```

Deprecated Name: retention-archive

### Archive Retention Type Option (`--repo-retention-archive-type`)

Backup type for WAL retention.

When set to `full`, retain archive logs for the number of full backups specified by `repo-retention-archive`. When set to `diff`, count both full and differential backups. Thus, if the latest backup is full, it counts as a differential for repo-retention. When set to `incr`, count full, differential, and incremental backups. Prefer the default, which expires WAL only when full backups expire.

```text
default: full
example: repo1-retention-archive-type=diff
```

Deprecated Name: retention-archive-type

### Differential Retention Option (`--repo-retention-diff`)

Number of differential backups to retain.

When a differential backup expires, its dependent incremental backups also expire. If this option is unset, differential backups remain until their parent full backups expire.

The differential backup count includes full backups. In most cases, this slightly reduces the number of differential backups retained.

```text
allowed: [1, 9999999]
example: repo1-retention-diff=3
```

Deprecated Name: retention-diff

### Full Retention Option (`--repo-retention-full`)

Full backup retention count/time.

When a full backup expires, its dependent differential and incremental backups also expire. If this option is unset, pgBackRest reports a warning. For indefinite retention, use the maximum value.

```text
allowed: [1, 9999999]
example: repo1-retention-full=2
```

Deprecated Name: retention-full

### Full Retention Type Option (`--repo-retention-full-type`)

Retention type for full backups.

Select whether `repo-retention-full` specifies a number of days or a count of full backups to keep.

With `time`, pgBackRest removes full backups older than `repo-retention-full` only if another retained backup is at least that old. For example, set `repo-retention-full` to 30 days with two full backups aged 25 and 35 days. Neither expires. Removing the 35-day backup would leave only the 25-day backup, which cannot satisfy the 30-day policy. Archived WAL older than the oldest remaining full backup expires automatically unless you explicitly set `repo-retention-archive-type` and `repo-retention-archive`.

With `count`, pgBackRest expires full backups that exceed `repo-retention-full`. For example, with `repo-retention-full` set to `4`, completion of a fifth full backup expires the oldest, leaving 4.

Only successfully completed backups count toward retention. For example, set `repo-retention-full-type` to `count` and `repo-retention-full` to `2`. The oldest full backup expires only after 3 full backups complete.

```text
default: count
example: repo1-retention-full-type=time
```

### Backup History Retention Option (`--repo-retention-history`)

Days of backup history manifests to retain.

When a backup completes, pgBackRest copies its manifest to `backup.history`. By default, these files never expire. They support analysis, such as measurements of backup and WAL growth over time.

Set `repo-retention-history` to the number of days of backup history manifests to retain. History always includes unexpired backups. Set `repo-retention-history=0` to keep history only for unexpired backups.

When a full backup history manifest expires, its dependent differential and incremental backup history manifests also expire.

```text
allowed: [0, 9999999]
example: repo1-retention-history=365
```

### S3 Repository Bucket Option (`--repo-s3-bucket`)

S3 repository bucket.

S3 bucket used to store the repository.

Set `repo-path=/` to store the repository in the bucket root. Usually, specify a prefix such as `/repo`. The bucket can then also store logs and other AWS-generated content.

```text
example: repo1-s3-bucket=pg-backup
```

### S3 Repository Endpoint Option (`--repo-s3-endpoint`)

S3 repository endpoint.

The AWS endpoint should be valid for the selected region.

For custom/test configurations the `repo-storage-ca-file`, `repo-storage-ca-path`, `repo-storage-host`, `repo-storage-port`, and `repo-storage-verify-tls` options may be useful.

```text
example: repo1-s3-endpoint=s3.amazonaws.com
```

### S3 Repository Access Key Option (`--repo-s3-key`)

S3 repository access key.

AWS key used to access this bucket.

```text
example: repo1-s3-key=AKIAIOSFODNN7EXAMPLE
```

### S3 Repository Secret Access Key Option (`--repo-s3-key-secret`)

S3 repository secret access key.

AWS secret key used to access this bucket.

```text
example: repo1-s3-key-secret=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
```

### S3 Repository Key Type Option (`--repo-s3-key-type`)

S3 repository key type.

The following types are supported:

- `shared` - Shared keys
- `auto` - Automatically retrieve temporary credentials
- `web-id` - Automatically retrieve web identity credentials
- `pod-id` - Automatically retrieve EKS pod identity credentials
- `process` - Retrieve credentials by executing a process

```text
default: shared
example: repo1-s3-key-type=auto
```

### S3 Repository KMS Key ID Option (`--repo-s3-kms-key-id`)

S3 repository KMS key.

Enables S3 server-side encryption using the specified AWS key management service key.

```text
example: repo1-s3-kms-key-id=bceb4f13-6939-4be3-910d-df54dee817b7
```

### S3 Authentication Process Command Option (`--repo-s3-process-cmd`)

S3 authentication process command.

Set the command and optional arguments that retrieve temporary S3 credentials. The first list entry is the command. The remaining entries are its parameters.

The process must output JSON with `AccessKeyId`, `SecretAccessKey`, `SessionToken`, and `Expiration` fields. pgBackRest refreshes credentials automatically before they expire. See [Process Credential Provider](https://docs.aws.amazon.com/sdkref/latest/guide/feature-process-credentials.html#feature-process-credentials-output) for the format.

```text
example: repo1-s3-process-cmd=/usr/local/bin/get-credentials
example: repo1-s3-process-cmd=--role
example: repo1-s3-process-cmd=my-role
```

### S3 Repository Region Option (`--repo-s3-region`)

S3 repository region.

The AWS region where the bucket was created.

```text
example: repo1-s3-region=us-east-1
```

### S3 Repository Requestor Pays Option (`--repo-s3-requester-pays`)

S3 repository requester pays.

Enables S3 requester pays.

```text
default: n
example: repo1-s3-requester-pays=n
```

### S3 Repository Role Option (`--repo-s3-role`)

S3 repository role.

When `repo-s3-key-type=auto`, set the AWS role name used to retrieve temporary credentials. Use the name, not the full ARN.

```text
example: repo1-s3-role=authrole
```

### S3 Repository Service Option (`--repo-s3-service`)

S3 signing service.

Set the signing service for SigV4 authentication. The default is `s3` for standard S3 endpoints. For an S3 Outposts endpoint, use `s3-outposts`.

```text
default: s3
example: repo1-s3-service=s3-outposts
```

### S3 Repository SSE Customer Key Option (`--repo-s3-sse-customer-key`)

S3 repository SSE customer key.

Enables S3 server-side encryption using the specified customer key.

```text
example: repo1-s3-sse-customer-key=bceb4f13-6939-4be3-910d-df54dee817b7
```

### S3 Repository STS Endpoint Option (`--repo-s3-sts-host`)

S3 repository STS endpoint.

When `repo-s3-key-type=web-id`, this endpoint retrieves temporary credentials. To use regional STS, select a regional endpoint, such as `sts.us-east-1.amazonaws.com`. Regional STS might be necessary for GovCloud or China regions, or to reduce latency.

```text
default: sts.amazonaws.com
example: repo1-s3-sts-host=sts.us-east-1.amazonaws.com
```

### S3 Repository Security Token Option (`--repo-s3-token`)

S3 repository security token.

AWS security token used with temporary credentials.

```text
example: repo1-s3-token=AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22 ...
```

### S3 Repository URI Style Option (`--repo-s3-uri-style`)

S3 URI Style.

The following URI styles are supported:

- `host` - Connect to `bucket.endpoint` host.
- `path` - Connect to `endpoint` host and prepend bucket to URIs.

```text
default: host
example: repo1-s3-uri-style=path
```

### SFTP Repository Host Option (`--repo-sftp-host`)

SFTP repository host.

The SFTP host containing the repository.

```text
example: repo1-sftp-host=sftprepo.domain
```

### SFTP Repository Host Fingerprint Option (`--repo-sftp-host-fingerprint`)

SFTP repository host fingerprint.

Generate the SFTP host fingerprint with the hash type specified by `repo-sftp-host-key-hash-type`. Use `awk '{print $2}' ssh_host_xxx_key.pub | base64 -d | (md5sum or sha1sum) -b`. SSH host keys are usually in `/etc/ssh`.

```text
example: repo1-sftp-host-fingerprint=f84e172dfead7aeeeae6c1fdfb5aa8cf
```

### SFTP Host Key Check Type Option (`--repo-sftp-host-key-check-type`)

SFTP host key check type.

The following SFTP host key check types are supported:

- `strict` - pgBackRest never adds host keys to ~/.ssh/known_hosts automatically. It refuses connections when a host key changes or is absent from the known hosts files. Add each new host manually.
- `accept-new` - pgBackRest automatically adds new host keys to the user's known hosts file. It refuses connections when a host key changes.
- `fingerprint` - pgBackRest compares the host key with the `repo-sftp-host-fingerprint` value.
- `none` - pgBackRest does not check host keys.

```text
default: strict
example: repo1-sftp-host-key-check-type=accept-new
```

### SFTP Repository Host Key Hash Type Option (`--repo-sftp-host-key-hash-type`)

SFTP repository host key hash type.

Set the hash type used to calculate the remote host key digest at SSH startup. Newer `libssh2` versions support `sha256` as well as md5 and sha1.

```text
example: repo1-sftp-host-key-hash-type=sha256
```

### SFTP Repository Host Port Option (`--repo-sftp-host-port`)

SFTP repository host port.

SFTP repository host port.

```text
default: 22
allowed: [1, 65535]
example: repo1-sftp-host-port=22
```

### SFTP Repository Host User Option (`--repo-sftp-host-user`)

SFTP repository host user.

User on the host used to store the repository.

```text
example: repo1-sftp-host-user=pg-backup
```

### SFTP Known Hosts File Option (`--repo-sftp-known-host`)

SFTP known hosts file.

Set a known hosts file to check during SFTP authentication. By default, pgBackRest searches `~/.ssh/known_hosts`, `~/.ssh/known_hosts2`, `/etc/ssh/ssh_known_hosts`, and `/etc/ssh/ssh_known_hosts2`. If you configure file paths, it searches those files. Use absolute paths or paths that start with a tilde. Repeat `repo-sftp-known-host` to specify multiple files. To check known hosts files, do not set `repo-sftp-host-fingerprint`.

See also the `repo-sftp-host-check-type` option.

```text
example: repo1-sftp-known-host=/home/postgres/.ssh/known_hosts
```

### SFTP Repository Private Key File Option (`--repo-sftp-private-key-file`)

SFTP private key file.

SFTP private key file used for authentication.

```text
example: repo1-sftp-private-key-file=~/.ssh/id_ed25519
```

### SFTP Repository Private Key Passphrase Option (`--repo-sftp-private-key-passphrase`)

SFTP private key passphrase.

Set the passphrase for the private key. A passphrase is optional when you create an SSH public/private key pair.

```text
example: repo1-sftp-private-key-passphrase=BeSureToGenerateAndUseASecurePassphrase
```

### SFTP Repository Public Key File Option (`--repo-sftp-public-key-file`)

SFTP public key file.

Set the SFTP public key file for authentication. This file is optional for builds that use OpenSSL. Other builds require it.

```text
example: repo1-sftp-public-key-file=~/.ssh/id_ed25519.pub
```

### Repository Storage CA File Option (`--repo-storage-ca-file`)

Repository storage CA file.

Use a CA file other than the system default for storage (e.g. S3, Azure) certificates.

```text
example: repo1-storage-ca-file=/etc/pki/tls/certs/ca-bundle.crt
```

Deprecated Names: repo-azure-ca-file, repo-s3-ca-file

### Repository Storage TLS CA Path Option (`--repo-storage-ca-path`)

Repository storage CA path.

Use a CA path other than the system default for storage (e.g. S3, Azure) certificates.

```text
example: repo1-storage-ca-path=/etc/pki/tls/certs
```

Deprecated Names: repo-azure-ca-path, repo-s3-ca-path

### Repository Storage Host Option (`--repo-storage-host`)

Repository storage host.

Connect to a host other than the storage (e.g. S3, Azure) endpoint. This is typically used for testing.

```text
example: repo1-storage-host=127.0.0.1
```

Deprecated Names: repo-azure-host, repo-s3-host

### Repository Storage Port Option (`--repo-storage-port`)

Repository storage port.

Port to use when connecting to the storage (e.g. S3, Azure) endpoint (or host if specified).

```text
default: 443
allowed: [1, 65535]
example: repo1-storage-port=9000
```

Deprecated Names: repo-azure-port, repo-s3-port

### Repository Storage Tag Option (`--repo-storage-tag`)

Repository storage tag(s).

For an object store repository, such as S3, specify the tags to add to objects. Repeat this option to add multiple tags.

pgBackRest cannot change these tags. Before you run `stanza-create`, set them correctly to give the entire repository uniform tags.

```text
example: repo1-storage-tag=key1=value1
```

### Repository Storage Upload Chunk Size Option (`--repo-storage-upload-chunk-size`)

Repository storage upload chunk size.

Object stores, such as S3, support uploads in chunks for files too large to fit in memory. For smaller files, chunks also reduce the memory used for uploads.

Larger chunks usually improve performance because they reduce upload requests. More files can fit in a single request without division into chunks. However, larger chunks use more memory. Each process needs a chunk buffer, so a larger `process-max` value also increases total memory use.

Valid chunk sizes depend on the storage type and platform. For example, AWS S3 requires a minimum chunk size of 5MiB. To find minimum and maximum values, search for the term that matches your storage type. Use "part size" for AWS S3, "chunk size" for GCS, and "block size" for Azure.

By default, PostgreSQL creates files no larger than 1GiB. For larger files, pgBackRest increases the chunk size in increments, up to the allowed maximum, to complete the upload.

```text
default (depending on repo-type):
    azure - 4MiB
    gcs - 4MiB
    s3 - 5MiB

allow range (depending on repo-type):
    azure - [4MiB, 1GiB]
    gcs - [4MiB, 1GiB]
    s3 - [5MiB, 1GiB]

example: repo1-storage-upload-chunk-size=16MiB
```

### Repository Storage Certificate Verify Option (`--repo-storage-verify-tls`)

Repository storage certificate verify.

Enable or disable verification of the storage server TLS certificate, for example for S3 or Azure. Disable verification only for testing or other cases that use a self-signed certificate.

```text
default: y
example: repo1-storage-verify-tls=n
```

Deprecated Names: repo-azure-verify-tls, repo-s3-verify-ssl, repo-s3-verify-tls

### Repository Symlink Option (`--repo-symlink`)

Create symlinks within the repository.

Create `latest` and tablespace symlinks. These mainly help with snapshot-based, in-place repository recovery, which is uncommon.

Most users probably do not need this feature. It remains enabled by default for compatibility. Disable it for Posix-like storage that cannot support symlinks.

```text
default: y
example: repo1-symlink=n
```

### Target Time for Repository Option (`--repo-target-time`)

Target time for repository.

Set the point in time at which commands read a repository on versioned storage. This lets you recover data deleted or corrupted by user error or malware.

S3, GCS, and Azure support versioned storage, but usually disable it by default. In addition to versioning, consider S3 object locking or GCS and Azure soft delete.

When you specify `repo-target-time`, you must also specify `repo`. Some repository types probably will not support versioning. Recovery usually targets one repository.

Storage timestamps must be <= the specified timestamp. pgBackRest truncates milliseconds from the specified timestamp.

```text
example: repo-target-time=2024-08-08 12:12:12+00
```

### Repository Type Option (`--repo-type`)

Type of storage used for the repository.

The following repository types are supported:

- `azure` - Azure Blob Storage Service
- `cifs` - Like `posix`, but disables links and directory fsyncs
- `gcs` - Google Cloud Storage
- `posix` - Posix-compliant file systems
- `s3` - AWS Simple Storage Service
- `sftp` - Secure File Transfer Protocol

For an NFS mount used as a `posix` repository, follow the PostgreSQL filesystem rules. See [Creating a Database Cluster - File Systems](https://www.postgresql.org/docs/current/creating-cluster.html#CREATING-CLUSTER-FILESYSTEM).

```text
default: posix
example: repo1-type=cifs
```

--------

## Restore Options

The `restore` section defines settings used for restoring backups.

### Archive Mode Option (`--archive-mode`)

Preserve or disable archiving on restored cluster.

Preserve or disable archiving on the restored cluster. Disable it when you must promote the cluster for work but it will not become the new primary. In that case, the cluster should not push WAL to the repository.

The following modes are supported:

- `off` - disable archiving by setting `archive_mode=off`.
- `preserve` - preserve current `archive_mode` setting.

**NOTE**: This option is not available on PostgreSQL < 12.

```text
default: preserve
example: archive-mode=off
```

### Exclude Database Option (`--db-exclude`)

Restore excluding the specified databases.

Restore excluded databases as sparse, zeroed files. This saves space while allowing PostgreSQL recovery. After recovery, you cannot access these databases, but you can remove them with `drop database`. Repeat `--db-exclude` to exclude multiple databases.

When combined with `--db-include`, `--db-exclude` applies only to the standard system databases: `template0`, `template1`, and `postgres`.

```text
example: db-exclude=db_main
```

### Include Database Option (`--db-include`)

Restore only specified databases.

Restore only selected databases. Restore other databases as sparse, zeroed files to save space while allowing PostgreSQL recovery. After recovery, you cannot access the other databases, but you can remove them with `drop database`.

NOTE:

Built-in databases (`template0`, `template1`, and `postgres`) are always restored unless you explicitly exclude them.

Repeat `--db-include` to include multiple databases.

See [Restore Selected Databases](/docs/pgbackrest/user-guide/#restore-selected-databases) for additional information and caveats.

```text
example: db-include=db_main
```

### Link All Option (`--link-all`)

Restore all symlinks.

By default, restore converts symlinks to regular files and directories in $PGDATA. Original symlink destinations might be unsafe on a different system. Enable this option to restore all symlinks as they were on the backup source system.

```text
default: n
example: link-all=y
```

### Link Map Option (`--link-map`)

Modify the destination of a symlink.

Change a symlink destination file or path during a restore. Use this when the destination system has a different storage layout from the backup source.

```text
example: link-map=pg_xlog=/data/xlog
```

### Recovery Option (`--recovery-option`)

Set an option in `postgresql.auto.conf` or `recovery.conf`.

See [Server Configuration](https://www.postgresql.org/docs/current/runtime-config.html) for `postgresql.auto.conf` and `recovery.conf` options. Select your PostgreSQL version. You can repeat this option.

For PostgreSQL >= 12, pgBackRest writes options to `postgresql.auto.conf`. For earlier versions, it writes them to `recovery.conf`.

NOTE:

pgBackRest generates `restore_command` automatically. This option can override it, but use care because pgBackRest manages it for you. pgBackRest also generates target recovery options, such as recovery_target_name and recovery_target_time. Do not set those options here.

pgBackRest does not start PostgreSQL after it writes `postgresql.auto.conf` or `recovery.conf`. You can check or edit the file before you restart PostgreSQL manually.

```text
example: recovery-option=primary_conninfo=db.mydomain.com
```

### Tablespace Map Option (`--tablespace-map`)

Restore a tablespace into the specified directory.

Move a tablespace during restore. Use this when a replica has different tablespace locations or an upgraded system has different mount points.

pg_tablespace does not store tablespace locations, so you can move tablespaces freely. However, do not move a tablespace to `data_directory`; this can cause problems. For more information, see http://www.databasesoup.com/2013/11/moving-tablespaces.html.

```text
example: tablespace-map=ts_01=/db/ts_01
```

### Map All Tablespaces Option (`--tablespace-map-all`)

Restore all tablespaces into the specified directory.

By default, tablespaces return to their original locations. Use `tablespace-map` to change individual locations, or this option to move all tablespaces to one new directory. This helps with development or staging systems whose storage layout differs from the backup source.

Use the specified path as the parent directory for all restored tablespaces.

CAUTION:

pgBackRest cannot map tablespaces created after the backup starts. If you need mapping, take a new backup after creating a tablespace.

```text
example: tablespace-map-all=/data/tablespace
```

--------

## Server Options

The `server` section defines options used for configuring the TLS server.

### TLS Server Address Option (`--tls-server-address`)

TLS server address.

Set the IP address on which the server accepts client requests.

```text
default: localhost
example: tls-server-address=*
```

### TLS Server Authorized Clients Option (`--tls-server-auth`)

TLS server authorized clients.

The server verifies each client certificate. It also checks the certificate CN (Common Name) against the list configured with `tls-server-auth`.

To authorize a client CN for multiple stanzas, provide a comma-separated list to `tls-server-auth`. To authorize all stanzas, use `tls-server-auth=client-cn=*`. The client CN cannot contain wildcards.

```text
example: tls-server-auth=client-cn=stanza1,stanza2
```

### TLS Server Certificate Authorities Option (`--tls-server-ca-file`)

TLS server certificate authorities.

Checks that client certificates are signed by a trusted certificate authority.

```text
example: tls-server-ca-file=/path/to/server.ca
```

### TLS Server Certificate Option (`--tls-server-cert-file`)

TLS server certificate file.

The server sends this certificate to identify itself to the client.

```text
example: tls-server-cert-file=/path/to/server.crt
```

### TLS Server Key Option (`--tls-server-key-file`)

TLS server key file.

This key proves that the certificate owner sent the server certificate.

```text
example: tls-server-key-file=/path/to/server.key
```

### TLS Server Port Option (`--tls-server-port`)

TLS server port.

Set the port on which the server accepts client requests.

```text
default: 8432
allowed: [1, 65535]
example: tls-server-port=8000
```

--------

## Stanza Options

A stanza configures backups for one PostgreSQL database cluster. Its section must define the cluster path. For a remote cluster, also define the host and user. Stanza-specific settings can override any global configuration section.

**Indexing**: Every `pg-` option has an index to support multiple PostgreSQL hosts. For one primary, use options such as `pg1-path` and `pg1-port`. For a standby, configure `pg2-` options on the repository host, such as pg2-host and pg2-path.

### PostgreSQL Database Option (`--pg-database`)

PostgreSQL database.

Set the database name for PostgreSQL connections. The default is usually suitable, but some installations do not have this database.

For compatibility, pgBackRest ignores the `PGDATABASE` environment variable.

```text
default: postgres
example: pg1-database=backupdb
```

### PostgreSQL Host Option (`--pg-host`)

PostgreSQL host for operating remotely.

Use this option when the PostgreSQL host and repository host differ.

```text
example: pg1-host=db.domain.com
```

Deprecated Name: db-host

### PostgreSQL Host Certificate Authority File Option (`--pg-host-ca-file`)

PostgreSQL host certificate authority file.

Use a CA file other than the system default for connecting to the PostgreSQL host.

```text
example: pg1-host-ca-file=/etc/pki/tls/certs/ca-bundle.crt
```

### PostgreSQL Host Certificate Authority Path Option (`--pg-host-ca-path`)

PostgreSQL host certificate authority path.

Use a CA path other than the system default for connecting to the PostgreSQL host.

```text
example: pg1-host-ca-path=/etc/pki/tls/certs
```

### PostgreSQL Host Certificate File Option (`--pg-host-cert-file`)

PostgreSQL host certificate file.

pgBackRest sends this certificate to the PostgreSQL host to prove the client identity.

```text
example: pg1-host-cert-file=/path/to/client.crt
```

### PostgreSQL Host Command Option (`--pg-host-cmd`)

PostgreSQL host pgBackRest command.

Set this option only when the pgBackRest command path differs between the local and PostgreSQL hosts. Otherwise, the PostgreSQL host uses the local command path.

```text
default: [path of executed pgbackrest binary]
example: pg1-host-cmd=/usr/lib/backrest/bin/pgbackrest
```

Deprecated Name: db-cmd

### PostgreSQL Host Configuration Option (`--pg-host-config`)

pgBackRest database host configuration file.

Set the PostgreSQL host configuration file location. This is necessary only when it differs from the local configuration file location.

```text
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_FILE
example: pg1-host-config=/conf/pgbackrest/pgbackrest.conf
```

Deprecated Name: db-config

### PostgreSQL Host Configuration Include Path Option (`--pg-host-config-include-path`)

pgBackRest database host configuration include path.

Set the PostgreSQL host configuration include path. This is necessary only when it differs from the local configuration include path.

```text
default: CFGOPTDEF_CONFIG_PATH "/" PROJECT_CONFIG_INCLUDE_PATH
example: pg1-host-config-include-path=/conf/pgbackrest/conf.d
```

### PostgreSQL Host Configuration Path Option (`--pg-host-config-path`)

pgBackRest database host configuration path.

Set the PostgreSQL host configuration path. This is necessary only when it differs from the local configuration path.

```text
default: CFGOPTDEF_CONFIG_PATH
example: pg1-host-config-path=/conf/pgbackrest
```

### PostgreSQL Host Key File Option (`--pg-host-key-file`)

PostgreSQL host key file.

This key proves that the certificate owner sent the client certificate.

```text
example: pg1-host-key-file=/path/to/client.key
```

### PostgreSQL Host Port Option (`--pg-host-port`)

PostgreSQL host port when `pg-host` is set.

Use this option to specify a non-default port for the PostgreSQL host protocol.

NOTE:

When `pg-host-type=ssh`, `pg-host-port` has no default. The command specified by `cmd-ssh` supplies its configured port.

```text
default (depending on pg-host-type):
    tls - 8432

allowed: [0, 65535]
example: pg1-host-port=25
```

Deprecated Name: db-ssh-port

### PostgreSQL Host Protocol Type Option (`--pg-host-type`)

PostgreSQL host protocol type.

The following protocol types are supported:

- `ssh` - Secure Shell.
- `tls` - pgBackRest TLS server.

```text
default: ssh
example: pg1-host-type=tls
```

### PostgreSQL Host User Option (`--pg-host-user`)

PostgreSQL host logon user when `pg-host` is set.

This user owns the remote pgBackRest process and starts PostgreSQL connections. Use the PostgreSQL cluster owner, usually the default user `postgres`.

```text
default: postgres
example: pg1-host-user=db_owner
```

Deprecated Name: db-user

### PostgreSQL Path Option (`--pg-path`)

PostgreSQL data directory.

Use the `data_directory` value reported by PostgreSQL. Other sources can provide this value, but they might be unavailable during a restore or offline backup. Set it here as a precaution.

Each online backup compares `pg-path` with the value reported by PostgreSQL. Thus, this setting should stay current.

```text
example: pg1-path=/data/db
```

Deprecated Name: db-path

### PostgreSQL Port Option (`--pg-port`)

PostgreSQL port.

Set the PostgreSQL port. Most clusters use the default port, so this setting is usually unnecessary.

```text
default: 5432
allowed: [0, 65535]
example: pg1-port=6543
```

Deprecated Name: db-port

### PostgreSQL Socket Path Option (`--pg-socket-path`)

PostgreSQL unix socket path.

Set the Unix socket directory selected at PostgreSQL startup. pgBackRest searches the standard location for your OS automatically. Usually, set this option only if `unix_socket_directories` in `postgresql.conf` specifies another directory.

```text
example: pg1-socket-path=/var/run/postgresql
```

Deprecated Name: db-socket-path

### PostgreSQL Database User Option (`--pg-user`)

PostgreSQL database user.

Set the database user for PostgreSQL connections. If unset, pgBackRest uses the local OS user or `PGUSER`.

```text
example: pg1-user=backupuser
```
