# User Guide (RHEL)

> Step-by-step pgBackRest setup and usage guide for RHEL, Rocky, and AlmaLinux systems.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: [pgBackRest 2.59.2 user guide](https://pgbackrest.org/user-guide-rhel.html).

--------

## Introduction

Follow this guide in order the first time. Each section depends on earlier sections. For example, [Restore](#restore-1) requires the configuration from [Quick Start](#quick-start). After pgBackRest is running, you can use sections independently.

These examples use RHEL and PostgreSQL 14. You can adapt them to other Unix distributions and PostgreSQL versions. Only commands to create, start, stop, and drop clusters depend on the OS. pgBackRest commands are the same across Unix systems, although the executable location can differ. PostgreSQL versions can differ in paths, file names, and settings; some examples show these differences.

Configuration information and documentation for PostgreSQL can be found in the PostgreSQL [Manual](http://www.postgresql.org/docs/14/static/index.html).

The documentation build runs each command on a virtual machine from the XML source. This verifies that commands work in the specified order. Relevant output appears below each command. Other output is omitted to keep the instructions clear.

Run commands as an unprivileged user with sudo access to `root` and `postgres`. Alternatively, run each command directly as its specified user and remove `sudo`.

--------

## Concepts

The following definitions apply to pgBackRest, PostgreSQL, and this guide.

### Backup

A backup is a consistent copy of a database cluster. Restore it to recover from hardware failure, perform Point-In-Time Recovery, or create a standby.

**Full Backup**: Copy all database cluster contents. The first cluster backup is always full. pgBackRest can restore it directly without files from another backup to achieve consistency.

**Differential Backup**: Copy files changed since the last full backup. Restore combines those files with unchanged files from that full backup. This uses less disk space than a full backup. Both the differential and its full backup must be valid for a restore.

**Incremental Backup**: Copy files changed since the last backup, whether full, differential, or incremental. Incremental backups are usually much smaller than full or differential backups. A restore requires valid versions of every backup in its dependency chain. This includes all incrementals back to the preceding differential, that differential, and its full backup. If no differential exists, it includes all incrementals back to the full backup and that full backup itself.

### Restore

A restore copies backup files to a system where PostgreSQL can start them as a live cluster. It requires backup files and one or more WAL segments.

### Write Ahead Log (WAL)

PostgreSQL uses WAL to prevent loss of committed changes. It writes transactions sequentially to WAL and considers them committed when those writes reach disk. A background process then writes the changes to the main database files, also called the heap. After a crash, WAL replay restores database consistency.

WAL is conceptually infinite but consists of individual 16MB segment files. A segment name has the form `0000000100000A1E000000FE`. The first 8 hexadecimal digits identify the timeline. The next 16 identify the logical sequence number (LSN).

### Encryption

Encryption converts data into a form that requires the correct password, also called a passphrase, to read.

pgBackRest encrypts the repository with a user-supplied password to prevent unauthorized access to its stored data.

--------

## Upgrading pgBackRest


### Upgrading pgBackRest from v2.x to v2.y

To upgrade from v2.x to v2.y, most installations only need the new binaries. The repository format is unchanged. You can also downgrade unless you have used features that the older version does not support.

IMPORTANT:

Local and remote pgBackRest versions must match exactly. Upgrade them together. If versions differ, WAL archiving and backups fail until they match. The error is: `[ProtocolError] expected value '2.x' for greeting key 'version' but got '2.y'`.

--------

## Build

Prefer package installation to a source build. See [Installation](#installation) for package information.

Build from source on a separate build host. Production hosts generally should not have the required build tools. pgBackRest is one executable, which you can copy to other hosts after the build.

build **⇒** Download version `2.59.2` of pgBackRest to `/build` path

```bash
mkdir -p /build
curl -fsSL \
       https://github.com/pgbackrest/pgbackrest/releases/download/release%2F2.59.2/pgbackrest-2.59.2.tar.gz | \
       tar zx -C /build
```

build **⇒** Install build dependencies

```bash
sudo yum install meson gcc postgresql14-devel openssl-devel libxml2-devel \
       lz4-devel libzstd-devel bzip2-devel libssh2-devel systemd-devel
```

build **⇒** Configure and compile pgBackRest

```bash
meson setup /build/pgbackrest /build/pgbackrest-2.59.2
ninja -C /build/pgbackrest
```

build **⇒** Optionally run smoke tests to verify pgBackRest was built correctly

```bash
meson test -C /build/pgbackrest --suite smoke
```

```text
ninja: Entering directory `/build/pgbackrest'
ninja: no work to do.
1/1 smoke OK               11.37s
Ok:                 1
       [filtered 6 lines of output]
```

--------

## Installation

Create a host named pg-primary for the demo cluster and pgBackRest examples.

Prefer package installation to a source build. Packages usually perform the remaining steps in this section. If a package omits a directory or sets incorrect permissions, create the directory or correct its permissions manually.

RHEL packages for pgBackRest are available at [yum.postgresql.org](http://yum.postgresql.org).

If your distribution or version has no package, [build from source](#build) and follow these manual installation steps.

pg-primary **⇒** Install dependencies

```bash
sudo yum install postgresql-libs libssh2
```

pg-primary **⇒** Copy pgBackRest binary from build host

```bash
sudo scp build:/build/pgbackrest/src/pgbackrest /usr/bin
sudo chmod 755 /usr/bin/pgbackrest
```

pgBackRest requires log and configuration directories and a configuration file.

pg-primary **⇒** Create pgBackRest configuration file and directories

```bash
sudo mkdir -p -m 770 /var/log/pgbackrest
sudo chown postgres:postgres /var/log/pgbackrest
sudo mkdir -p /etc/pgbackrest
sudo mkdir -p /etc/pgbackrest/conf.d
sudo touch /etc/pgbackrest/pgbackrest.conf
sudo chmod 640 /etc/pgbackrest/pgbackrest.conf
sudo chown postgres:postgres /etc/pgbackrest/pgbackrest.conf
```

Check the installation. Running pgBackRest on the command line reports an error if a dependency is missing.

pg-primary **⇒** Make sure the installation worked

```bash
sudo -u postgres pgbackrest
```

```text
pgBackRest 2.59.2 - General help

Usage:
    pgbackrest [options] [command]

Commands:
    annotate        add or modify backup annotation
    archive-get     get a WAL segment from the archive
    archive-push    push a WAL segment to the archive
    backup          backup a database cluster
    check           check the configuration
    expire          expire backups that exceed retention
    help            get help
    info            retrieve information about backups
    repo-get        get a file from a repository
    repo-ls         list files in a repository
    restore         restore a database cluster
    server          pgBackRest server
    server-ping     ping pgBackRest server
    stanza-create   create the required stanza data
    stanza-delete   delete a stanza
    stanza-upgrade  upgrade a stanza
    start           allow pgBackRest processes to run
    stop            stop pgBackRest processes from running
    verify          verify contents of a repository
    version         get version

Use 'pgbackrest help [command]' for more information.
```

--------

## Quick Start

Quick Start covers basic pgBackRest and PostgreSQL configuration. It introduces `backup`, `restore`, and `info`.

### Setup Demo Cluster

The demo cluster is optional but strongly recommended, especially for new users. Examples use this cluster on the default port, 5432. Start it in a later section after configuration is complete.

pg-primary **⇒** Create the demo cluster

```bash
sudo -u postgres /usr/pgsql-14/bin/initdb \
       -D /var/lib/pgsql/14/data -k -A peer
```

RHEL log filenames include the day of the week by default. Set log_filename to a constant value to simplify these examples.

pg-primary:`/var/lib/pgsql/14/data/postgresql.conf` **⇒** Set log_filename

```ini
log_filename = 'postgresql.log'
```

### Configure Cluster Stanza

A stanza contains the configuration for a PostgreSQL database cluster. It defines the cluster location, backup method, archive options, and other settings. Most database servers have one PostgreSQL cluster and one stanza. A backup server has a stanza for each cluster that needs a backup.

Choose a stanza name that describes the databases in the cluster. The primary and all replicas use the same stanza name. A functional name, such as app or dw, is preferable to a local cluster name, such as main or prod.

Use demo as the stanza name because it describes the cluster purpose.

pgBackRest needs the PostgreSQL base data directory. PostgreSQL can report it, but is unavailable during recovery. Set `pg-path` to exactly the data_directory value reported by PostgreSQL. Each backup compares these paths and fails if they differ.

RHEL stores clusters in `/var/lib/pgsql/[version]/data` by default. Use this location to identify the data directory.

When you create `/etc/pgbackrest/pgbackrest.conf`, grant read access to the database owner, usually `postgres`.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure the PostgreSQL cluster data directory

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
```

pgBackRest configuration files use a Windows INI-like format. Bracketed section names contain key/value pairs. Lines starting with `#` are comments; comments after a value on the same line are unsupported. Quoting is unsupported. pgBackRest trims whitespace from keys and values. Repeated sections are merged.

Configuration loading depends on these options:

- Default `config` and `config-include-path`: load the default file if present. Append `*.conf` files from the default include path if present.
- Explicit `config`: load only the specified file, which must exist.
- Explicit `config-include-path`: load its `*.conf` files; the path must exist. Also load the default configuration file if present. Add `--no-config` to load only include-path files.
- Explicit `config` and `config-include-path`: load the specified file and append `*.conf` files from the specified include path. The files must exist.
- Explicit `config-path`: override the base path for the default configuration file and include path. Explicit config or config-include-path settings take precedence.

pgBackRest combines the files as one file, but each file must be valid independently. Each file must declare sections for its key/value pairs. File order does not determine precedence; sections do. The order from highest to lowest precedence is:

- [*stanza*:*command*]
- [*stanza*]
- [global:*command*]
- [global]

NOTE:

`--config`, `--config-include-path` and `--config-path` are command-line only options.

Environment variables can also configure pgBackRest, as shown below. They apply to commands such as [backup](/docs/pgbackrest/command/backup/), [restore](/docs/pgbackrest/command/restore/), and [archive-push](/docs/pgbackrest/command/archive-push/).

pg-primary **⇒** Configure `log-path` using the environment

```bash
sudo -u postgres bash -c ' \
       export PGBACKREST_LOG_PATH=/path/set/by/env && \
       pgbackrest --log-level-console=error help backup log-path'
```

```text
pgBackRest 2.59.2 - 'backup' command - 'log-path' option help

Path where log files are stored.

The log path provides a location for pgBackRest to store log files. Note that
if log-level-file=off then no log path is required.
current: /path/set/by/env

default: /var/log/pgbackrest
```

### Create the Repository

The repository is where pgBackRest stores backups and archives WAL segments.

To estimate repository space, take some backups. Record the sizes of full, incremental, and differential backups (full/incr/diff). Measure how much WAL the database generates each day. These measurements give an approximate space requirement. Requirements will probably change as the database changes.

This example stores the repository on the PostgreSQL host. This is the simplest configuration. It is useful when conventional backup software also backs up that host.

pg-primary **⇒** Create the pgBackRest repository

```bash
sudo mkdir -p /var/lib/pgbackrest
sudo chmod 750 /var/lib/pgbackrest
sudo chown postgres:postgres /var/lib/pgbackrest
```

Configure the repository path so pgBackRest can find it.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure the pgBackRest repository path

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-path=/var/lib/pgbackrest
```

You can configure multiple repositories. See [Multiple Repositories](#multiple-repositories).

### Configure Archiving

Enable WAL archiving before backing up a running PostgreSQL cluster. PostgreSQL uses `%p` to specify the WAL segment location. A backup creates *at least* one WAL segment, even without explicit cluster writes.

pg-primary:`/var/lib/pgsql/14/data/postgresql.conf` **⇒** Configure archive settings

```ini
archive_command = 'pgbackrest --stanza=demo archive-push %p'
archive_mode = on
log_filename = 'postgresql.log'
```

After these changes, restart the PostgreSQL cluster before taking a backup.

pg-primary **⇒** Restart the demo cluster

```bash
sudo systemctl restart postgresql-14.service
```

Keep `hot_standby` enabled, which is the default, on every cluster. Any cluster might later become a standby, including a former primary after failover. A standby requires this setting to accept read-only connections.

If a WAL segment needs more than the default 60 seconds to reach the repository, increase pgBackRest `archive-timeout`. This differs from PostgreSQL archive_timeout, which forces a WAL segment switch during long inactive periods. See PostgreSQL [Write Ahead Log](https://www.postgresql.org/docs/current/static/runtime-config-wal.html) for archive_timeout details.

Set command-specific options for `archive-push`. For example, a lower compression level can speed archiving without changing backup compression.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Config `archive-push` to use a lower compression level

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-path=/var/lib/pgbackrest
[global:archive-push]
compress-level=3
```

Use command-specific configuration for any command. You can also limit it to one stanza, such as `demo:archive-push`.

### Configure Retention

pgBackRest expires backups based on retention options.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure retention to 2 full backups

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
[global:archive-push]
compress-level=3
```

See [Retention](#retention) for more information.

### Configure Repository Encryption

Set a repository cipher type and key to demonstrate encryption. Encryption always occurs on the client, even when storage such as S3 supports encryption.

Use a long, random passphrase for the cipher key. Generate one with `openssl rand -base64 48`.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure pgBackRest repository encryption

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
[global:archive-push]
compress-level=3
```

NOTE:

The example puts encryption settings in `[global]` so `info` can read all stanzas. Without `stanza`, `info` reads encryption settings only from `[global]`. For stanza-specific encryption, supply `stanza` to read the encrypted stanza.

After configuring the repository and creating and checking the stanza, you cannot change its encryption settings.

### Create the Stanza

Run `stanza-create` to initialize the stanza. Then run `check` to verify archive and backup configuration.

pg-primary **⇒** Create the stanza and check the configuration

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=info stanza-create
```

```text
P00   INFO: stanza-create command begin 2.59.2: --exec-id=1200-46a7e87f --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --stanza=demo
P00   INFO: stanza-create for stanza 'demo' on repo1

P00   INFO: stanza-create command end: completed successfully
```

### Check the Configuration

The `check` command validates pgBackRest and archive_command configuration for the specified stanza. It checks backup and archive settings for all repositories and databases configured on the current host. It detects configuration errors, especially archive errors that leave backups incomplete because required WAL segments never reached the archive. Run it on the PostgreSQL or repository host. You can also run it on a standby, but then it checks only repository configuration. A standby cannot execute `pg_switch_xlog()`/`pg_switch_wal()`.

The command calls `pg_create_restore_point('pgBackRest Archive Check')` and `pg_switch_xlog()`/`pg_switch_wal()` to force PostgreSQL to archive a WAL segment.

pg-primary **⇒** Check the configuration

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=info check
```

```text
P00   INFO: check command begin 2.59.2: --exec-id=1233-8a8db696 --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --stanza=demo
P00   INFO: check repo1 configuration (primary)
P00   INFO: check repo1 archive for WAL (primary)
P00   INFO: WAL segment 000000010000000000000001 successfully archived to '/var/lib/pgbackrest/archive/demo/14-1/0000000100000000/000000010000000000000001-d0ad328a3c9ff2237a7030a37d1f6910a4ed952f.gz' on repo1

P00   INFO: check command end: completed successfully
```

### Performance Tuning

Some performance options are disabled by default to preserve repository compatibility. Enable the following options for new repositories. You can also enable them for existing repositories, but older pgBackRest versions might then be unable to read them. Compatibility depends on the feature introduction version shown below.

- `compress-type` selects compression for `backup` and `archive-push`. The default is `gz` (Gzip). Prefer `zst` (Zstandard) for much faster processing with similar compression. Support started in [v2.27](/docs/pgbackrest/release/#v227-release-notes). See [Compress Type](/docs/pgbackrest/configuration/#compress-type-option---compress-type).
- `repo-bundle` combines small files to save space and speed `backup` and `restore`, especially on object stores such as S3. It was introduced in [v2.39](/docs/pgbackrest/release/#v239-release-notes). See [File Bundling](#file-bundling).
- `repo-block` stores changed parts of files during `diff`/`incr` `backup`, which saves space and speeds backups. It was introduced in [v2.46](/docs/pgbackrest/release/#v246-release-notes), but use at least [v2.52.1](/docs/pgbackrest/release/#v2521-release-notes). See [Block Incremental](#block-incremental).

Other performance options need additional configuration, or use safe defaults that are not optimal. These options are available in every v2 release.

- `process-max` controls the number of processes. Its default, 1, is rarely suitable. Each command uses it differently; see the command documentation.
- `archive-async` archives WAL in batches for much higher speed. It is disabled by default because it requires a spool path. See [Asynchronous Archiving](#asynchronous-archiving).
- `backup-standby` reduces primary load by backing up from a standby. It is disabled by default because it needs extra configuration and at least one standby. See [Backup from a Standby](#backup-from-a-standby).

### Perform a Backup

By default, backups wait for the next regular checkpoint. PostgreSQL checkpoint_timeout and checkpoint_segments settings can make this a long wait. Usually, set `start-fast=y` to force a checkpoint and start immediately. For a daily backup, one extra checkpoint should have little performance impact. On very busy clusters, use `--start-fast` on the command line only when needed.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure backup fast start

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
[global:archive-push]
compress-level=3
```

Run pgBackRest `backup` to back up the PostgreSQL cluster.

pg-primary **⇒** Backup the demo cluster

```bash
sudo -u postgres pgbackrest --stanza=demo \
       --log-level-console=info backup
```

```text
P00   INFO: backup command begin 2.59.2: --exec-id=1327-70764233 --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo1-retention-full=2 --stanza=demo --start-fast

P00   WARN: no prior backup exists, incr backup has been changed to full

P00   INFO: execute backup start: backup begins after the requested immediate checkpoint completes
P00   INFO: backup start archive = 000000010000000000000002, lsn = 0/2000028
       [filtered 3 lines of output]
P00   INFO: check archive for segment(s) 000000010000000000000002:000000010000000000000003
P00   INFO: new backup label = 20260927-100955F

P00   INFO: full backup size = 25.2MB, file total = 951

P00   INFO: backup command end: completed successfully
P00   INFO: expire command begin 2.59.2: --exec-id=1327-70764233 --log-level-console=info --no-log-timestamp --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo1-retention-full=2 --stanza=demo
```

By default, pgBackRest attempts an incremental backup. An incremental requires a full backup. Because none existed, pgBackRest created a full backup.

Use `type` to select a full or differential backup.

pg-primary **⇒** Differential backup of the demo cluster

```bash
sudo -u postgres pgbackrest --stanza=demo --type=diff \
       --log-level-console=info backup
```

```text
       [filtered 7 lines of output]
P00   INFO: check archive for segment(s) 000000010000000000000004:000000010000000000000005
P00   INFO: new backup label = 20260927-100955F_20260927-100957D

P00   INFO: diff backup size = 9.2KB, file total = 951

P00   INFO: backup command end: completed successfully
P00   INFO: expire command begin 2.59.2: --exec-id=1398-685541bc --log-level-console=info --no-log-timestamp --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo1-retention-full=2 --stanza=demo
```

No warning appeared because a full backup already existed. Incrementals can depend on a full *or* differential backup. Differentials must depend on a full backup. To create a full backup, run `backup` with `--type=full`.

During an online backup, pgBackRest waits for the archive to receive all WAL segments necessary for consistency. The `archive-timeout` default is 60 seconds. Increase it if an individual segment takes longer to archive.

### Schedule a Backup

Backups can be scheduled with utilities such as cron.

The example schedules full backups at 6:30 AM each Sunday. It schedules differential backups at 6:30 AM Monday through Saturday. If installed midweek, the first differential job creates a full backup. The next day, it creates a differential.

```bash
#m h   dom mon dow   command
30 06  *   *   0     pgbackrest --type=full --stanza=demo backup
30 06  *   *   1-6   pgbackrest --type=diff --stanza=demo backup
```

After scheduling backups, configure regular expiration. See [Retention](#retention).

### Backup Information

Use the `info` command to get information about backups.

pg-primary **⇒** Get info for the demo cluster

```bash
sudo -u postgres pgbackrest info
```

```text
stanza: demo
    status: ok
    cipher: aes-256-cbc

    db (current)
        wal archive min/max (14): 000000010000000000000001/000000010000000000000005
        full backup: 20260927-100955F
            timestamp start/stop: 2026-09-27 10:09:55+00 / 2026-09-27 10:09:57+00
            wal start/stop: 000000010000000000000002 / 000000010000000000000003
            database size: 25.2MB, database backup size: 25.2MB
            repo1: backup set size: 3.2MB, backup size: 3.2MB
        diff backup: 20260927-100955F_20260927-100957D
            timestamp start/stop: 2026-09-27 10:09:57+00 / 2026-09-27 10:09:59+00
            wal start/stop: 000000010000000000000004 / 000000010000000000000005
            database size: 25.2MB, database backup size: 9.2KB
            repo1: backup set size: 3.2MB, backup size: 880B
            backup reference total: 1 full
```

The `info` command reports on one stanza or all stanzas. By default, text output summarizes backups for the requested stanzas. The text format can change in any release.

For machine-readable output, use `--output=json`. JSON includes much more information than text output. Its format stays stable unless a bug requires a change.

Use `--detail-level=progress` to show only progress and reduce execution time. This skips all checks except stanza availability.

Each stanza has a separate section. Use `--stanza` to show only one. The `status` field indicates stanza health: `ok` means pgBackRest operates normally. With multiple repositories, `mixed` means at least one repository has an unhealthy stanza; output then gives the status per repository. An unknown repository error uses the code `other` and includes full error details.

The `wal archive min/max` field shows the minimum and maximum archived WAL. With multiple repositories, it covers all repositories unless you set `--repo`. Archive retention policies or other causes can leave gaps in this range.

The `backup/expire running` and/or `restore running` messages appear beside `status` when those commands run on the host. Text output also shows progress per repository. JSON output includes a `repo` array.

Backups appear from oldest to newest. The oldest is always a full backup, with an `F` at the end of its label. The newest can be full, differential (label ends with `D`), or incremental (label ends with `I`).

The `timestamp start/stop` field shows when the backup ran. Use `timestamp stop` to select a backup for Point-In-Time Recovery. See [Point-In-Time Recovery](#point-in-time-recovery).

The `wal start/stop` field shows the WAL range necessary for database consistency after a restore. The `backup` command checks that the archive contains this range before it completes.

The `database size` field shows the full, uncompressed database size. The `database backup size` field shows the database data actually backed up. These values match for full backups.

The `repo` field identifies the repository that contains the backup. The `backup set size` includes files in this backup and referenced backups needed for a restore. The `backup size` includes only files in this backup. These sizes match for full backups. When pgBackRest compression is enabled, repository sizes reflect compressed files.

The `backup reference total` summarizes other backups needed to restore this backup. Use `--set` for the complete reference list.

### Restore a Backup

Backups protect against failures, including hardware failure and data corruption. For this example, simulate corruption by removing an essential cluster file.

pg-primary **⇒** Stop the demo cluster and delete the `pg_control` file

```bash
sudo systemctl stop postgresql-14.service
sudo -u postgres rm /var/lib/pgsql/14/data/global/pg_control
```

Starting the cluster without this file produces an error.

pg-primary **⇒** Attempt to start the corrupted demo cluster

```bash
sudo systemctl start postgresql-14.service
sudo systemctl status postgresql-14.service
```

```text
postgresql-14.service - PostgreSQL 14 database server
    Loaded: loaded (/usr/lib/systemd/system/postgresql-14.service, disabled)

    Active: failed (failed)
```

Run pgBackRest `restore` to restore the PostgreSQL cluster. First stop the cluster, which is already stopped in this example. Remove all files from its data directory.

pg-primary **⇒** Remove old files from demo cluster

```bash
sudo -u postgres find /var/lib/pgsql/14/data -mindepth 1 -delete
```

pg-primary **⇒** Restore the demo cluster and start PostgreSQL

```bash
sudo -u postgres pgbackrest --stanza=demo restore
sudo systemctl start postgresql-14.service
```

The cluster started because the restore replaced the missing `pg_control` file.

See [Restore](#restore-1) for more information about `restore`.

--------

## Monitoring

Monitor production systems. You can integrate pgBackRest with many monitoring tools.

pgBackRest JSON output includes all backups for each stanza and WAL archive information.

### In PostgreSQL

Use PostgreSQL `COPY` to load pgBackRest information into a table. This example puts that logic in a function for real-time queries.

pg-primary **⇒** Load pgBackRest info function for PostgreSQL

```bash
sudo -u postgres cat \
       /var/lib/pgsql/pgbackrest/doc/example/pgsql-pgbackrest-info.sql
```

```text
-- An example of monitoring pgBackRest from within PostgreSQL
--
-- Use copy to export data from the pgBackRest info command into the jsonb
-- type so it can be queried directly by PostgreSQL.

-- Create monitor schema
create schema monitor;

-- Get pgBackRest info in JSON format
create function monitor.pgbackrest_info()
    returns jsonb AS $$
declare
    data jsonb;
begin
    -- Create a temp table to hold the JSON data
    create temp table temp_pgbackrest_data (data text);

    -- Copy data into the table directly from the pgBackRest info command
    copy temp_pgbackrest_data (data)
        from program
            'pgbackrest --output=json info' (format text);

    select replace(temp_pgbackrest_data.data, E'\n', '\n')::jsonb
      into data
      from temp_pgbackrest_data;

    drop table temp_pgbackrest_data;

    return data;
end $$ language plpgsql;
```

```bash
sudo -u postgres psql -f \
       /var/lib/pgsql/pgbackrest/doc/example/pgsql-pgbackrest-info.sql
```

Use `monitor.pgbackrest_info()` to find a stanza's last successful backup time and archived WAL.

pg-primary **⇒** Query last successful backup time and archived WAL

```bash
sudo -u postgres cat \
       /var/lib/pgsql/pgbackrest/doc/example/pgsql-pgbackrest-query.sql
```

```text
-- Get last successful backup for each stanza
--
-- Requires the monitor.pgbackrest_info function.
with stanza as
(
    select data->'name' as name,
           data->'backup'->(
               jsonb_array_length(data->'backup') - 1) as last_backup,
           data->'archive'->(
               jsonb_array_length(data->'archive') - 1) as current_archive
      from jsonb_array_elements(monitor.pgbackrest_info()) as data
)
select name,
       to_timestamp(
           (last_backup->'timestamp'->>'stop')::numeric) as last_successful_backup,
       current_archive->>'max' as last_archived_wal
  from stanza;
```

```bash
sudo -u postgres psql -f \
       /var/lib/pgsql/pgbackrest/doc/example/pgsql-pgbackrest-query.sql
```

```text
  name  | last_successful_backup |    last_archived_wal
--------+------------------------+--------------------------
 "demo" | 2026-09-27 10:09:59+00 | 000000010000000000000005
(1 row)
```

--------

## Backup

With multiple repositories, pgBackRest backs up to the highest priority repository, such as `repo1`. Use `--repo` to select another repository.

pgBackRest has no built-in scheduler. Use cron or another scheduler to run it.

See [Perform a Backup](#perform-a-backup) for more details and examples.

### File Bundling

File bundles reduce backup time and repository space. Benefits are greatest on object stores, such as S3, and filesystems with large blocks. Object stores have higher per-file creation costs. Very small files can cost as much to store as larger files.

Enable file bundles with `repo-bundle`.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `repo1-bundle`

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
[global:archive-push]
compress-level=3
```

A full backup without bundles has more than 1000 files in its backup path. Bundles substantially reduce this count. Zero-length files then have only manifest entries. Without bundles, each zero-length file is stored separately.

pg-primary **⇒** Perform a full backup

```bash
sudo -u postgres pgbackrest --stanza=demo --type=full backup
```

pg-primary **⇒** Check file total

```bash
sudo -u postgres find /var/lib/pgbackrest/backup/demo/latest/ -type f | wc -l
```

```text
5
```

Tune bundles with `repo-bundle-size` and `repo-bundle-limit`. The defaults should suit most cases.

Bundles usually improve efficiency, but make manual file retrieval harder. They might also be unsuitable for deduplicated storage because each full backup arranges files differently. Bundles cannot resume after interruption. Avoid a very high `repo-bundle-limit`.

### Block Incremental

Block incremental backups store only file parts changed since the previous backup. This saves space compared with storing entire files.

Enable block incremental backups with `repo-block`. They work best when enabled for every backup type. File bundles must also be enabled.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `repo1-block`

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
[global:archive-push]
compress-level=3
```

### Backup Annotations

Attach informative key/value pairs to the backup. Repeat this option to attach multiple annotations.

pg-primary **⇒** Perform a full backup with annotations

```bash
sudo -u postgres pgbackrest --stanza=demo --annotation=source="demo backup" \
       --annotation=key=value --type=full backup
```

When `--set` specifies a backup, the `info` command includes its annotations in text output. JSON output always includes annotations.

pg-primary **⇒** Get info for the demo cluster

```bash
sudo -u postgres pgbackrest --stanza=demo --set=20260927-101013F info
```

```text
stanza: demo
    status: ok
    cipher: aes-256-cbc

    db (current)
        wal archive min/max (14): 000000020000000000000007/000000020000000000000009

        full backup: 20260927-101013F
            timestamp start/stop: 2026-09-27 10:10:13+00 / 2026-09-27 10:10:15+00
            wal start/stop: 000000020000000000000008 / 000000020000000000000009
            lsn start/stop: 0/8000028 / 0/9000050
            database size: 25.2MB, database backup size: 25.2MB
            repo1: backup size: 3.2MB
            database list: postgres (13755)

            annotation(s)

                key: value
                source: demo backup
```

Use `annotate` to add, change, or remove annotations after the `backup` command creates a backup.

pg-primary **⇒** Change backup annotations

```bash
sudo -u postgres pgbackrest --stanza=demo --set=20260927-101013F \
       --annotation=key= --annotation=new_key=new_value annotate
sudo -u postgres pgbackrest --stanza=demo --set=20260927-101013F info
```

```text
stanza: demo
    status: ok
    cipher: aes-256-cbc

    db (current)
        wal archive min/max (14): 000000020000000000000007/000000020000000000000009

        full backup: 20260927-101013F
            timestamp start/stop: 2026-09-27 10:10:13+00 / 2026-09-27 10:10:15+00
            wal start/stop: 000000020000000000000008 / 000000020000000000000009
            lsn start/stop: 0/8000028 / 0/9000050
            database size: 25.2MB, database backup size: 25.2MB
            repo1: backup size: 3.2MB
            database list: postgres (13755)

            annotation(s)

                new_key: new_value
                source: demo backup
```

--------

## Retention

Retain as many backups as practical to extend the [Point-in-Time Recovery](#point-in-time-recovery) window. Account for limits such as disk space. Retention options remove backups when they are no longer needed.

pgBackRest rotates full backups according to a count or time period. Count-based retention keeps a specified number, regardless of creation times. Differential retention uses a count, but a differential always expires with its parent full backup. Incremental backups have no independent expiration policy. They expire with their parent full or differential backup. See [Full Backup Retention](#full-backup-retention) and [Differential Backup Retention](#differential-backup-retention) for examples.

By default, pgBackRest keeps archived WAL for unexpired backups. You can change this per repository with retention-archive options, but this is not recommended. See [Archive Retention](#archive-retention).

The `expire` command runs automatically after each successful backup. You can also run it manually. A manual run applies each configured repository's retention settings; `--repo` limits it to one repository. Use `--set` to expire a specific backup set. Without `--repo`, pgBackRest searches all repositories and expires sets that match. Every `expire` run also checks and applies archive retention.

### Full Backup Retention

`repo1-retention-full-type` determines whether `repo1-retention-full` means a backup count or days of retention. New backups must complete before expiration. With `repo1-retention-full-type=count` and `repo1-retention-full=2`, three full backups exist before the oldest expires. With `repo1-retention-full-type=time` and `repo1-retention-full=20`, at least one full backup must be 20 days old before expiration.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `repo1-retention-full`

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
[global:archive-push]
compress-level=3
```

`repo1-retention-full=2`, but only one full backup exists. The next full backup will not expire any full backups.

pg-primary **⇒** Perform a full backup

```bash
sudo -u postgres pgbackrest --stanza=demo --type=full \
       --log-level-console=detail backup
```

```text
       [filtered 963 lines of output]
P00   INFO: repo1: remove expired backup 20260927-101011F
P00 DETAIL: repo1: 14-1 archive retention on backup 20260927-101013F, start = 000000020000000000000008

P00   INFO: repo1: 14-1 remove archive, start = 000000020000000000000007, stop = 000000020000000000000007

P00   INFO: expire command end: completed successfully
```

Archive data *does* expire because WAL segments exist from before the oldest backup. These cannot recover that backup. Recovery uses WAL generated after a backup.

pg-primary **⇒** Perform a full backup

```bash
sudo -u postgres pgbackrest --stanza=demo --type=full \
       --log-level-console=info backup
```

```text
       [filtered 11 lines of output]
P00   INFO: repo1: expire full backup 20260927-101013F
P00   INFO: repo1: remove expired backup 20260927-101013F

P00   INFO: repo1: 14-1 remove archive, start = 000000020000000000000008, stop = 000000020000000000000009

P00   INFO: expire command end: completed successfully
```

Full backup `20260927-100955F` expires. Archive retention now follows `20260927-101017F`, the oldest remaining full backup.

### Differential Backup Retention

Set `repo1-retention-diff` to the required differential backup count. Differentials depend only on the previous full backup. Keep a changing set covering the last day or longer for fast recent restores with less total space.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `repo1-retention-diff`

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-diff=1
repo1-retention-full=2
start-fast=y
[global:archive-push]
compress-level=3
```

With `repo1-retention-diff=1`, two differentials must complete before one expires. Add an incremental to demonstrate that it expires with its parent differential.

pg-primary **⇒** Perform differential and incremental backups

```bash
sudo -u postgres pgbackrest --stanza=demo --type=diff backup
sudo -u postgres pgbackrest --stanza=demo --type=incr backup
```

The next differential backup expires the previous differential and its incremental. One differential remains.

pg-primary **⇒** Perform a differential backup

```bash
sudo -u postgres pgbackrest --stanza=demo --type=diff \
       --log-level-console=info backup
```

```text
       [filtered 10 lines of output]
P00   INFO: backup command end: completed successfully
P00   INFO: expire command begin 2.59.2: --exec-id=2639-d5ac017b --log-level-console=info --no-log-timestamp --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo1-retention-diff=1 --repo1-retention-full=2 --stanza=demo
P00   INFO: repo1: expire diff backup set 20260927-101019F_20260927-101021D, 20260927-101019F_20260927-101022I
P00   INFO: repo1: remove expired backup 20260927-101019F_20260927-101022I
P00   INFO: repo1: remove expired backup 20260927-101019F_20260927-101021D
P00   INFO: expire command end: completed successfully
```

### Archive Retention

By default, archive expiration follows full backup expiration through `repo1-retention-full`. You can expire archives more aggressively to save disk space. For differential archive retention, full backups also count as differentials.

Archive expiration never removes WAL needed for backup consistency. However, PITR needs a continuous WAL stream. Use care when expiring archives beyond normal backup expiration. To inspect proposed removals, run `expire` with command-line `dry-run`.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `repo1-retention-diff`

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-diff=2
repo1-retention-full=2
start-fast=y
[global:archive-push]
compress-level=3
```

pg-primary **⇒** Perform differential backup

```bash
sudo -u postgres pgbackrest --stanza=demo --type=diff \
       --log-level-console=info backup
```

```text
       [filtered 6 lines of output]
P00   INFO: backup stop archive = 000000020000000000000017, lsn = 0/17000050
P00   INFO: check archive for segment(s) 000000020000000000000016:000000020000000000000017
P00   INFO: new backup label = 20260927-101019F_20260927-101025D

P00   INFO: diff backup size = 11.5KB, file total = 951
P00   INFO: backup command end: completed successfully
       [filtered 2 lines of output]
```

pg-primary **⇒** Expire archive

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=detail \
       --repo1-retention-archive-type=diff --repo1-retention-archive=1 expire
```

```text
P00   INFO: expire command begin 2.59.2: --exec-id=2876-36181f78 --log-level-console=detail --no-log-timestamp --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo1-retention-archive=1 --repo1-retention-archive-type=diff --repo1-retention-diff=2 --repo1-retention-full=2 --stanza=demo
P00 DETAIL: repo1: 14-1 archive retention on backup 20260927-101017F, start = 00000002000000000000000A, stop = 00000002000000000000000B
P00 DETAIL: repo1: 14-1 archive retention on backup 20260927-101019F, start = 00000002000000000000000C, stop = 00000002000000000000000D
P00 DETAIL: repo1: 14-1 archive retention on backup 20260927-101019F_20260927-101023D, start = 000000020000000000000012, stop = 000000020000000000000013
P00 DETAIL: repo1: 14-1 archive retention on backup 20260927-101019F_20260927-101025D, start = 000000020000000000000016
P00   INFO: repo1: 14-1 remove archive, start = 00000002000000000000000E, stop = 000000020000000000000011
P00   INFO: repo1: 14-1 remove archive, start = 000000020000000000000014, stop = 000000020000000000000015

P00   INFO: expire command end: completed successfully
```

WAL for `20260927-101019F_20260927-101023D` must remain to make older backups consistent, although those backups can no longer support further PITR. Segments generated after `20260927-101019F_20260927-101023D` and before `20260927-101019F_20260927-101025D` are removed. Segments after the new backup `20260927-101019F_20260927-101025D` remain available for PITR.

Full backups count as differentials for differential archive retention. With these settings, a new full backup retains only its own archive for PITR.

--------

## Restore

By default, restore selects the latest backup from the first repository with backups. See [Quick Start - Restore a Backup](#restore-a-backup). Repository order comes from `pgbackrest.conf`; for example, repo1 precedes repo2. Use `--repo`, such as `--repo=1`, to select a repository. Use `--set` to select a backup other than the latest.

For PITR with `--type=time` or `--type=lsn`, specify the target time or LSN with `--target`. Without `--set`, pgBackRest searches configured repositories in order for a backup containing that time or LSN. If none matches, `--type=time` uses the latest backup in the first repository with backups. For `--type=lsn`, it selects no backup. For other types, such as `xid`, use `--set` if the target precedes the latest backup. See [Point-in-Time Recovery](#point-in-time-recovery).

Backups exclude replication slots, as PostgreSQL recommends. See [Backing Up The Data Directory](https://www.postgresql.org/docs/current/continuous-archiving.html#BACKUP-LOWLEVEL-BASE-BACKUP-DATA).

The following sections introduce additional `restore` command features.

### File Ownership

A typical `restore` runs as a non-root user. All restored files belong to the executing user and group. Existing files with other ownership cause an error if pgBackRest cannot change their ownership. Have a privileged user correct the ownership before retrying.

When `restore` runs as `root`, pgBackRest attempts to recreate manifest ownership. The manifest stores user/group **names**, so matching names must exist locally. If a name is absent, use the PostgreSQL data directory owner or group. If that identity also lacks a name, use `root`.

### Delta Option

[Restore a Backup](#restore-a-backup) in [Quick Start](#quick-start) required an empty cluster directory before `restore`. The `delta` option identifies files that can remain and files that need replacement. It also *removes* files absent from the manifest, including divergent changes. pgBackRest calculates a [SHA-1](https://en.wikipedia.org/wiki/SHA-1) hash for each existing file. A file whose `SHA-1` differs from the backup is restored.

Use `process-max` to speed this operation. PostgreSQL is stopped during restore, so you can use more processes than during an online backup.

pg-primary **⇒** Stop the demo cluster, perform delta restore

```bash
sudo systemctl stop postgresql-14.service
sudo -u postgres pgbackrest --stanza=demo --delta \
       --log-level-console=detail restore
```

```text
       [filtered 2 lines of output]
P00 DETAIL: check '/var/lib/pgsql/14/data' exists
P00 DETAIL: remove 'global/pg_control' so cluster will not start if restore does not complete

P00   INFO: remove invalid files/links/paths from '/var/lib/pgsql/14/data'

P00 DETAIL: remove invalid file '/var/lib/pgsql/14/data/backup_label.old'
P00 DETAIL: remove invalid file '/var/lib/pgsql/14/data/base/13755/pg_internal.init'
       [filtered 996 lines of output]
```

pg-primary **⇒** Restart PostgreSQL

```bash
sudo systemctl start postgresql-14.service
```

### Restore Selected Databases

Restore selected databases to improve performance or use a destination with insufficient space for the entire cluster backup.

Create test1 and test2 to demonstrate selective restore.

pg-primary **⇒** Create two test databases

```bash
sudo -u postgres psql -c "create database test1;"
```

```text
CREATE DATABASE
```

```bash
sudo -u postgres psql -c "create database test2;"
```

```text
CREATE DATABASE
```

Add tables and data to each test database to verify recovery after selective restore.

pg-primary **⇒** Create a test table in each database

```bash
sudo -u postgres psql -c "create table test1_table (id int); \
       insert into test1_table (id) values (1);" test1
```

```text
CREATE TABLE
INSERT 0 1
```

```bash
sudo -u postgres psql -c "create table test2_table (id int); \
       insert into test2_table (id) values (2);" test2
```

```text
CREATE TABLE
INSERT 0 1
```

Take a new backup that includes the new databases.

pg-primary **⇒** Perform a backup

```bash
sudo -u postgres pgbackrest --stanza=demo --type=incr backup
```

Selective restore can save space. Record test1 disk use now for comparison after the restore.

pg-primary **⇒** Show space used by test1 database

```bash
sudo -u postgres du -sh /var/lib/pgsql/14/data/base/32768
```

```text
8.4M	/var/lib/pgsql/14/data/base/32768
```

To find available databases, run `info` with `set` to list the backup set contents.

pg-primary **⇒** Show database list for backup

```bash
sudo -u postgres pgbackrest --stanza=demo \
       --set=20260927-101019F_20260927-101034I info
```

```text
       [filtered 12 lines of output]
            repo1: backup size: 2.1MB
            backup reference list: 20260927-101019F, 20260927-101019F_20260927-101025D

            database list: postgres (13755), test1 (32768), test2 (32769)
```

Stop the cluster and restore only the test2 database. Built-in databases (`template0`, `template1`, and `postgres`) are always restored.

WARNING:

Recovery can fail without `--type=immediate`. After consistency, PostgreSQL treats zeroed pages as errors, even with full-page writes. PostgreSQL ≥ 13 can use ignore_invalid_pages to ignore invalid pages. If you use this setting, check recovery logs for invalid pages in the selected databases.

pg-primary **⇒** Restore from last backup including only the test2 database

```bash
sudo systemctl stop postgresql-14.service
sudo -u postgres pgbackrest --stanza=demo --delta \
       --db-include=test2 --type=immediate --target-action=promote restore

sudo systemctl start postgresql-14.service
```

After recovery, test2 contains all previously created tables and data.

pg-primary **⇒** Demonstrate that the test2 database was recovered

```bash
sudo -u postgres psql -c "select * from test2_table;" test2
```

```text
 id
----
  2
(1 row)
```

Although recovery succeeded, test1 is inaccessible. Its files were restored as sparse, zeroed files. PostgreSQL can replay WAL into them, but empty essential files leave the database invalid. This intentionally prevents use of a database that might contain only partial data from WAL replay.

pg-primary **⇒** Attempting to connect to the test1 database will produce an error

```bash
sudo -u postgres psql -c "select * from test1_table;" test1
```

```text
psql: error: connection to server on socket "/run/postgresql/.s.PGSQL.5432" failed: FATAL:  relation mapping file "base/32768/pg_filenode.map" contains invalid data
```

Sparse, zeroed test1 files use space only for WAL written during recovery. Backup and recovery WAL volumes can be substantial. However, they are usually a small fraction of database size, especially for large databases that benefit most from selective restore.

The selective restore uses much less disk space for test1 than a complete restore would.

pg-primary **⇒** Show space used by test1 database after recovery

```bash
sudo -u postgres du -sh /var/lib/pgsql/14/data/base/32768
```

```text
8.0K	/var/lib/pgsql/14/data/base/32768
```

Only `drop database` can now operate on invalid test1. pgBackRest does not drop it automatically because this requires completed recovery and an accessible cluster.

pg-primary **⇒** Drop the test1 database

```bash
sudo -u postgres psql -c "drop database test1;"
```

```text
DROP DATABASE
```

After dropping invalid test1, only test2 and the built-in databases remain.

pg-primary **⇒** List remaining databases

```bash
sudo -u postgres psql -c "select oid, datname from pg_database order by oid;"
```

```text
  oid  |  datname
-------+-----------
     1 | template1
 13754 | template0
 13755 | postgres

 32769 | test2

(4 rows)
```

--------

## Point-in-Time Recovery

[Restore a Backup](#restore-a-backup) in [Quick Start](#quick-start) replayed WAL to the end of the stream. This is usually best after hardware failure. For data corruption caused by machines or people, Point-in-Time Recovery (PITR) is often more suitable.

PITR replays WAL from a backup to a specified LSN, time, transaction ID, or recovery point. Time-based recovery is often the most useful choice. This example recovers an accidentally dropped table. Use the same method for accidentally deleted data.

pg-primary **⇒** Create a table with very important data

```bash
sudo -u postgres psql -c "begin; \
       create table important_table (message text); \
       insert into important_table values ('Important Data'); \
       commit; \
       select * from important_table;"
```

```text
       [filtered 4 lines of output]
    message
----------------

 Important Data

(1 row)
```

Use PostgreSQL time and include the timezone offset. This reduces unintended timezone conversions and unexpected recovery results.

pg-primary **⇒** Get the time from PostgreSQL

```bash
sudo -u postgres psql -Atc "select current_timestamp"
```

```text
2026-09-27 10:10:45.829508+00
```

After recording the time, drop the table. In a real incident, the exact drop time can be harder or impossible to find. Investigation should help you estimate it.

pg-primary **⇒** Drop the important table

```bash
sudo -u postgres psql -c "begin; \
       drop table important_table; \
       commit; \
       select * from important_table;"
```

```text
BEGIN
DROP TABLE
COMMITERROR:  relation "important_table" does not exist

LINE 1: ...le important_table;     commit;     select * from important_...
                                                             ^
```

A backup taken after the target cannot recover to that target. To demonstrate this, take an incremental backup without `important_table`.

pg-primary **⇒** Perform an incremental backup

```bash
sudo -u postgres pgbackrest --stanza=demo --type=incr backup
sudo -u postgres pgbackrest info
```

```text
       [filtered 38 lines of output]
            backup reference total: 1 full, 1 diff
        incr backup: 20260927-101019F_20260927-101047I
            timestamp start/stop: 2026-09-27 10:10:47+00 / 2026-09-27 10:10:48+00
            wal start/stop: 00000004000000000000001A / 00000004000000000000001A
       [filtered 2 lines of output]
```

This backup cannot recover the lost table. PostgreSQL replays WAL forward and cannot reverse it.

pg-primary **⇒** Attempt recovery from an incorrect backup

```bash
sudo systemctl stop postgresql-14.service
sudo -u postgres pgbackrest --stanza=demo --delta \
       --set=20260927-101019F_20260927-101047I --target-timeline=current \
       --type=time "--target=2026-09-27 10:10:45.829508+00" --target-action=promote restore

sudo systemctl start postgresql-14.service
sudo -u postgres cat /var/lib/pgsql/14/data/log/postgresql.log
```

```text
       [filtered 11 lines of output]
LOG:  database system is ready to accept read-only connections
LOG:  redo done at 0/1A000100 system usage: CPU: user: 0.00 s, system: 0.00 s, elapsed: 0.01 s

FATAL:  recovery ended before configured recovery target was reached
LOG:  startup process (PID 4043) exited with exit code 1
LOG:  terminating any other active server processes
LOG:  database system is shut down
```

Let pgBackRest select a backup that completed before the target time and can recover to it.

NOTE:

pgBackRest cannot automatically select a backup when the restore type is `xid` or `name`.

pg-primary **⇒** Restore the demo cluster to `2026-08-17 04:44:30.009846+00`

```bash
sudo -u postgres pgbackrest --stanza=demo --delta \
       --type=time "--target=2026-09-27 10:10:45.829508+00" \
       --target-action=promote restore

sudo -u postgres cat /var/lib/pgsql/14/data/postgresql.auto.conf
```

```text
       [filtered 9 lines of output]
# Recovery settings generated by pgBackRest restore on 2026-09-27 10:10:53
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'
recovery_target_time = '2026-09-27 10:10:45.829508+00'
recovery_target_action = 'promote'
```

pgBackRest wrote recovery settings to `postgresql.auto.conf`, so start PostgreSQL immediately. PostgreSQL uses `%f` for the required WAL segment and `%p` for its destination. After recovery, the table exists and accepts queries again.

pg-primary **⇒** Start PostgreSQL and check that the important table exists

```bash
sudo systemctl start postgresql-14.service
sudo -u postgres psql -c "select * from important_table"
```

```text
    message
----------------

 Important Data

(1 row)
```

The PostgreSQL log shows the recovery stop time and transaction. It also shows the time of the last applied transaction.

pg-primary **⇒** Examine the PostgreSQL log output

```bash
sudo -u postgres cat /var/lib/pgsql/14/data/log/postgresql.log
```

```text
       [filtered 5 lines of output]
LOG:  database system was interrupted; last known up at 2026-09-27 10:10:34 UTC
LOG:  restored log file "00000004.history" from archive
LOG:  starting point-in-time recovery to 2026-09-27 10:10:45.829508+00

LOG:  restored log file "00000004.history" from archive
LOG:  restored log file "000000040000000000000019" from archive
       [filtered 2 lines of output]
LOG:  consistent recovery state reached at 0/19000100
LOG:  database system is ready to accept read-only connections
LOG:  recovery stopping before commit of transaction 743, time 2026-09-27 10:10:47.12347+00
LOG:  redo done at 0/1901E6C0 system usage: CPU: user: 0.00 s, system: 0.00 s, elapsed: 0.02 s
LOG:  last completed transaction was at log time 2026-09-27 10:10:44.508155+00

LOG:  selected new timeline ID: 5
LOG:  archive recovery complete
LOG:  database system is ready to accept connections
```

--------

## Delete a Stanza

The `stanza-delete` command removes repository data for a stanza.

WARNING:

Use this command with care. It permanently removes every backup and archive for the specified stanza from the pgBackRest repository.

To delete a stanza:

- Shut down the PostgreSQL cluster associated with the stanza (or use --force to override).
- Run the `stop` command on the host where the `stanza-delete` command will be run.
- Run the `stanza-delete` command.

After the command succeeds, remove the stanza from all applicable pgBackRest configuration files and environment variables.

Delete a stanza from one repository at a time. For multiple repositories, repeat `stanza-delete` with `--repo` for each repository.

pg-primary **⇒** Stop PostgreSQL cluster to be removed

```bash
sudo systemctl stop postgresql-14.service
```

pg-primary **⇒** Stop pgBackRest for the stanza

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=info stop
```

```text
P00   INFO: stop command begin 2.59.2: --exec-id=4393-45b06995 --log-level-console=info --no-log-timestamp --stanza=demo

P00   INFO: stop command end: completed successfully
```

pg-primary **⇒** Delete the stanza from one repository

```bash
sudo -u postgres pgbackrest --stanza=demo --repo=1 \
       --log-level-console=info stanza-delete
```

```text
P00   INFO: stanza-delete command begin 2.59.2: --exec-id=4425-535620df --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo=1 --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --stanza=demo

P00   INFO: stanza-delete command end: completed successfully
```

--------

## Multiple Repositories

Configure multiple repositories as shown in [S3 Support](#s3-compatible-object-store-support). For example, use a local repository for fast restores and a remote repository for redundancy.

Commands such as [`stanza-create`](/docs/pgbackrest/command/stanza-create/) and [`stanza-upgrade`](/docs/pgbackrest/command/stanza-upgrade/) automatically use all repositories. Others, such as [`stanza-delete`](/docs/pgbackrest/command/stanza-delete/), require a `repo` selection.

For compatibility, `repo` is optional when only `repo1` is configured. It is required when the only repository has another index, such as `repo2`. This prevents command failures if another repository is added later.

`archive-push` sends WAL to all configured repositories. If one is unreachable, it still sends WAL to the others. Enable `archive-async=y` for effective independent progress. Otherwise, the other repositories can advance only one segment beyond the unreachable repository. If WAL cannot reach any repository, PostgreSQL keeps it in `pg_wal`. This can fill the volume.

Schedule backups separately for each repository. This lets you vary backup types and retention. Specify a repository for restores as well. A repository with low latency or cost is usually preferable, even with longer recovery time. Test restores to determine which is most efficient.

--------

## Azure-Compatible Object Store Support

pgBackRest supports repositories in Azure-compatible object stores. Create the container first; pgBackRest does not create it. You can use the container root (`/`). Usually, prefer a subpath so object-store logs and other data can share the container without conflicts.

WARNING:

Do not enable "hierarchical namespace" as this will cause errors during expire.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure Azure

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-diff=2
repo1-retention-full=2
repo2-azure-account=pgbackrest
repo2-azure-container=demo-container
repo2-azure-key=YXpLZXk=
repo2-path=/demo-repo
repo2-retention-full=4
repo2-type=azure
start-fast=y
[global:archive-push]
compress-level=3
```

For a shared access signature, set `repo2-azure-key-type` to `sas`. Set `repo2-azure-key` to the signature token.

Run commands as you would for a repository on a local disk.

pg-primary **⇒** Create the stanza

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=info stanza-create
```

```text
P00   INFO: stanza-create command begin 2.59.2: --exec-id=4632-06271e3e --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo2-type=azure --stanza=demo
P00   INFO: stanza-create for stanza 'demo' on repo1
P00   INFO: stanza-create for stanza 'demo' on repo2

P00   INFO: stanza-create command end: completed successfully
```

Azure file creation is relatively slow. Enable [file bundling](#file-bundling) to improve `backup`/`restore` performance.

pg-primary **⇒** Backup the demo cluster

```bash
sudo -u postgres pgbackrest --stanza=demo --repo=2 \
       --log-level-console=info backup
```

```text
P00   INFO: backup command begin 2.59.2: --exec-id=4665-2f3276f7 --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo=2 --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-block --repo1-bundle --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo1-retention-diff=2 --repo1-retention-full=2 --repo2-retention-full=4 --repo2-type=azure --stanza=demo --start-fast

P00   WARN: no prior backup exists, incr backup has been changed to full

P00   INFO: execute backup start: backup begins after the requested immediate checkpoint completes
P00   INFO: backup start archive = 00000005000000000000001B, lsn = 0/1B000028
       [filtered 3 lines of output]
P00   INFO: check archive for segment(s) 00000005000000000000001B:00000005000000000000001B
P00   INFO: new backup label = 20260927-101107F

P00   INFO: full backup size = 33.5MB, file total = 1249

P00   INFO: backup command end: completed successfully
P00   INFO: expire command begin 2.59.2: --exec-id=4665-2f3276f7 --log-level-console=info --no-log-timestamp --repo=2 --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo1-retention-diff=2 --repo1-retention-full=2 --repo2-retention-full=4 --repo2-type=azure --stanza=demo
```

--------

## S3-Compatible Object Store Support

pgBackRest supports repositories in S3-compatible object stores. Create the bucket first; pgBackRest does not create it. You can use the bucket root (`/`). Usually, prefer a subpath so object-store logs and other data can share the bucket without conflicts.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure S3

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-diff=2
repo1-retention-full=2
repo2-azure-account=pgbackrest
repo2-azure-container=demo-container
repo2-azure-key=YXpLZXk=
repo2-path=/demo-repo
repo2-retention-full=4
repo2-type=azure
repo3-path=/demo-repo
repo3-retention-full=4
repo3-s3-bucket=demo-bucket
repo3-s3-endpoint=s3.us-east-1.amazonaws.com
repo3-s3-key=accessKey1
repo3-s3-key-secret=verySecretKey1
repo3-s3-region=us-east-1
repo3-type=s3
start-fast=y
[global:archive-push]
compress-level=3
```

NOTE:

Set the region and endpoint for the bucket location. These examples use `us-east-1`.

Create a role for pgBackRest and restrict bucket permissions as much as possible. For an AWS instance-associated role, set `repo3-s3-key-type=auto` to retrieve temporary credentials automatically. You then do not need explicit keys in `/etc/pgbackrest/pgbackrest.conf`.

This sample Amazon S3 policy will restrict all reads and writes to the bucket and repository path.

```text
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::demo-bucket"
            ],
            "Condition": {
                "StringEquals": {
                    "s3:prefix": [
                        "",
                        "demo-repo"
                    ],
                    "s3:delimiter": [
                        "/"
                    ]
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::demo-bucket"
            ],
            "Condition": {
                "StringLike": {
                    "s3:prefix": [
                        "demo-repo/*"
                    ]
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:PutObjectTagging",
                "s3:GetObject",
                "s3:GetObjectVersion",
                "s3:DeleteObject"
            ],
            "Resource": [
                "arn:aws:s3:::demo-bucket/demo-repo/*"
            ]
        }
    ]
}
```

Run commands as you would for a repository on a local disk.

pg-primary **⇒** Create the stanza

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=info stanza-create
```

```text
       [filtered 4 lines of output]
P00   INFO: stanza 'demo' already exists on repo2 and is valid
P00   INFO: stanza-create for stanza 'demo' on repo3

P00   INFO: stanza-create command end: completed successfully
```

S3 file creation is relatively slow. Enable [file bundling](#file-bundling) to improve `backup`/`restore` performance.

pg-primary **⇒** Backup the demo cluster

```bash
sudo -u postgres pgbackrest --stanza=demo --repo=3 \
       --log-level-console=info backup
```

```text
P00   INFO: backup command begin 2.59.2: --exec-id=5058-a4816496 --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo=3 --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-block --repo1-bundle --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo3-path=/demo-repo --repo1-retention-diff=2 --repo1-retention-full=2 --repo2-retention-full=4 --repo3-retention-full=4 --repo3-s3-bucket=demo-bucket --repo3-s3-endpoint=s3.us-east-1.amazonaws.com --repo3-s3-key=<redacted> --repo3-s3-key-secret=<redacted> --repo3-s3-region=us-east-1 --repo2-type=azure --repo3-type=s3 --stanza=demo --start-fast

P00   WARN: no prior backup exists, incr backup has been changed to full

P00   INFO: execute backup start: backup begins after the requested immediate checkpoint completes
P00   INFO: backup start archive = 00000005000000000000001D, lsn = 0/1D000028
       [filtered 3 lines of output]
P00   INFO: check archive for segment(s) 00000005000000000000001D:00000005000000000000001D
P00   INFO: new backup label = 20260927-101125F

P00   INFO: full backup size = 33.5MB, file total = 1249

P00   INFO: backup command end: completed successfully
P00   INFO: expire command begin 2.59.2: --exec-id=5058-a4816496 --log-level-console=info --no-log-timestamp --repo=3 --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo3-path=/demo-repo --repo1-retention-diff=2 --repo1-retention-full=2 --repo2-retention-full=4 --repo3-retention-full=4 --repo3-s3-bucket=demo-bucket --repo3-s3-endpoint=s3.us-east-1.amazonaws.com --repo3-s3-key=<redacted> --repo3-s3-key-secret=<redacted> --repo3-s3-region=us-east-1 --repo2-type=azure --repo3-type=s3 --stanza=demo
```

--------

## SFTP Support

pgBackRest supports repositories on SFTP hosts. SFTP transfers are relatively slow. Increase `process-max` to transfer files in parallel.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure SFTP

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
process-max=4
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-diff=2
repo1-retention-full=2
repo2-azure-account=pgbackrest
repo2-azure-container=demo-container
repo2-azure-key=YXpLZXk=
repo2-path=/demo-repo
repo2-retention-full=4
repo2-type=azure
repo3-path=/demo-repo
repo3-retention-full=4
repo3-s3-bucket=demo-bucket
repo3-s3-endpoint=s3.us-east-1.amazonaws.com
repo3-s3-key=accessKey1
repo3-s3-key-secret=verySecretKey1
repo3-s3-region=us-east-1
repo3-type=s3
repo4-bundle=y
repo4-path=/demo-repo
repo4-sftp-host=sftp-server
repo4-sftp-host-key-hash-type=sha1
repo4-sftp-host-user=pgbackrest
repo4-sftp-private-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp
repo4-sftp-public-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp.pub
repo4-type=sftp
start-fast=y
[global:archive-push]
compress-level=3
```

For SFTP with libssh2 compiled against OpenSSH, `repo4-sftp-public-key-file` is optional.

pg-primary **⇒** Generate SSH keypair for SFTP backup

```bash
sudo -u postgres mkdir -m 750 -p /var/lib/pgsql/.ssh
sudo -u postgres ssh-keygen -f /var/lib/pgsql/.ssh/id_rsa_sftp \
       -t rsa -b 4096 -N "" -m PEM
```

sftp-server **⇒** Copy pg-primary SFTP backup public key to sftp-server

```bash
sudo -u pgbackrest mkdir -m 750 -p /home/pgbackrest/.ssh

(sudo ssh root@pg-primary cat /var/lib/pgsql/.ssh/id_rsa_sftp.pub) | \
       sudo -u pgbackrest tee -a /home/pgbackrest/.ssh/authorized_keys
```

Run commands as you would for a repository on a local disk.

pg-primary **⇒** Add sftp-server fingerprint to known_hosts file since `repo4-sftp-host-key-check-type` defaults to "strict"

```bash
ssh-keyscan -H sftp-server >> /var/lib/pgsql/.ssh/known_hosts 2>/dev/null
```

pg-primary **⇒** Create the stanza

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=info stanza-create
```

```text
       [filtered 6 lines of output]
P00   INFO: stanza 'demo' already exists on repo3 and is valid
P00   INFO: stanza-create for stanza 'demo' on repo4

P00   INFO: stanza-create command end: completed successfully
```

pg-primary **⇒** Backup the demo cluster

```bash
sudo -u postgres pgbackrest --stanza=demo --repo=4 \
       --log-level-console=info backup
```

```text
P00   INFO: backup command begin 2.59.2: --exec-id=5360-3acf49a0 --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --process-max=4 --repo=4 --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-block --repo1-bundle --repo4-bundle --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo3-path=/demo-repo --repo4-path=/demo-repo --repo1-retention-diff=2 --repo1-retention-full=2 --repo2-retention-full=4 --repo3-retention-full=4 --repo3-s3-bucket=demo-bucket --repo3-s3-endpoint=s3.us-east-1.amazonaws.com --repo3-s3-key=<redacted> --repo3-s3-key-secret=<redacted> --repo3-s3-region=us-east-1 --repo4-sftp-host=sftp-server --repo4-sftp-host-key-hash-type=sha1 --repo4-sftp-host-user=pgbackrest --repo4-sftp-private-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp --repo4-sftp-public-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp.pub --repo2-type=azure --repo3-type=s3 --repo4-type=sftp --stanza=demo --start-fast
P00   WARN: option 'repo4-retention-full' is not set for 'repo4-retention-full-type=count', the repository may run out of space
            HINT: to retain full backups indefinitely (without warning), set option 'repo4-retention-full' to the maximum.

P00   WARN: no prior backup exists, incr backup has been changed to full

P00   INFO: execute backup start: backup begins after the requested immediate checkpoint completes
P00   INFO: backup start archive = 00000005000000000000001E, lsn = 0/1E000028
       [filtered 3 lines of output]
P00   INFO: check archive for segment(s) 00000005000000000000001E:00000005000000000000001F
P00   INFO: new backup label = 20260927-101141F

P00   INFO: full backup size = 33.5MB, file total = 1249

P00   INFO: backup command end: completed successfully
P00   INFO: expire command begin 2.59.2: --exec-id=5360-3acf49a0 --log-level-console=info --no-log-timestamp --repo=4 --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo3-path=/demo-repo --repo4-path=/demo-repo --repo1-retention-diff=2 --repo1-retention-full=2 --repo2-retention-full=4 --repo3-retention-full=4 --repo3-s3-bucket=demo-bucket --repo3-s3-endpoint=s3.us-east-1.amazonaws.com --repo3-s3-key=<redacted> --repo3-s3-key-secret=<redacted> --repo3-s3-region=us-east-1 --repo4-sftp-host=sftp-server --repo4-sftp-host-key-hash-type=sha1 --repo4-sftp-host-user=pgbackrest --repo4-sftp-private-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp --repo4-sftp-public-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp.pub --repo2-type=azure --repo3-type=s3 --repo4-type=sftp --stanza=demo
P00   INFO: expire command end: completed successfully
```

--------

## GCS-Compatible Object Store Support

pgBackRest supports repositories in GCS-compatible object stores. Create the bucket first; pgBackRest does not create it. You can use the bucket root (`/`). Usually, prefer a subpath so object-store logs and other data can share the bucket without conflicts.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure GCS

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
process-max=4
repo1-block=y
repo1-bundle=y
repo1-cipher-pass=zWaf6XtpjIVZC5444yXB+cgFDFl7MxGlgkZSaoPvTGirhPygu4jOKOXf9LO4vjfO
repo1-cipher-type=aes-256-cbc
repo1-path=/var/lib/pgbackrest
repo1-retention-diff=2
repo1-retention-full=2
repo2-azure-account=pgbackrest
repo2-azure-container=demo-container
repo2-azure-key=YXpLZXk=
repo2-path=/demo-repo
repo2-retention-full=4
repo2-type=azure
repo3-path=/demo-repo
repo3-retention-full=4
repo3-s3-bucket=demo-bucket
repo3-s3-endpoint=s3.us-east-1.amazonaws.com
repo3-s3-key=accessKey1
repo3-s3-key-secret=verySecretKey1
repo3-s3-region=us-east-1
repo3-type=s3
repo4-bundle=y
repo4-path=/demo-repo
repo4-sftp-host=sftp-server
repo4-sftp-host-key-hash-type=sha1
repo4-sftp-host-user=pgbackrest
repo4-sftp-private-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp
repo4-sftp-public-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp.pub
repo4-type=sftp
repo5-gcs-bucket=demo-bucket
repo5-gcs-key=/etc/pgbackrest/gcs-key.json
repo5-path=/demo-repo
repo5-type=gcs
start-fast=y
[global:archive-push]
compress-level=3
```

On GCE, set `repo5-gcs-key-type=auto` to authenticate through the instance service account.

Run commands as you would for a repository on a local disk.

GCS file creation is relatively slow. Enable [file bundling](#file-bundling) to improve `backup`/`restore` performance.

--------

## Target Time for Repository

Set the point in time at which commands read a repository on versioned storage. This lets you recover data deleted or corrupted by user error or malware.

S3, GCS, and Azure support versioned storage, but usually disable it by default. In addition to versioning, consider S3 object locking or GCS and Azure soft delete.

When you specify `repo-target-time`, you must also specify `repo`. Some repository types probably will not support versioning. Recovery usually targets one repository.

Storage timestamps must be <= the specified timestamp. pgBackRest truncates milliseconds from the specified timestamp.

Delete the S3 repository `demo` stanza to demonstrate recovery from versioned storage.

pg-primary **⇒** Delete stanza in S3 repository

```bash
sudo systemctl stop postgresql-14.service
sudo -u postgres pgbackrest --stanza=demo stop
sudo -u postgres pgbackrest --stanza=demo --repo=3 stanza-delete
```

After deletion, `info` reports a repository error.

pg-primary **⇒** Error on info

```bash
sudo -u postgres pgbackrest --stanza=demo --repo=3 info
```

```text
stanza: demo

    status: error (missing stanza path)
```

Versioned storage lets you read the repository before deletion. Finding the target time can be difficult. Here, use the deletion time of `backup.info` to identify when the stanza was deleted.

pg-primary **⇒** List versions of `backup.info` in the bucket

```bash
key=demo-repo/backup/demo/backup.info; \
       aws s3api list-object-versions --bucket demo-bucket \
       --prefix $key --output table \
       --query "sort_by([Versions[?Key=='$key'].{Action:'PUT', \
       Modified:LastModified,Object:Key}, \
       DeleteMarkers[?Key=='$key'].{Action:'DELETE', \
       Modified:LastModified,Object:Key}][],&Modified)"
```

```text
-------------------------------------------------------------------------------------
|                                ListObjectVersions                                 |
+--------+------------------------------------+-------------------------------------+
| Action |             Modified               |               Object                |
+--------+------------------------------------+-------------------------------------+
|  PUT   |  2026-09-27T10:11:25.317000+00:00  |  demo-repo/backup/demo/backup.info  |
|  PUT   |  2026-09-27T10:11:38.216000+00:00  |  demo-repo/backup/demo/backup.info  |
|  DELETE|  2026-09-27T10:11:50.305000+00:00  |  demo-repo/backup/demo/backup.info  |
+--------+------------------------------------+-------------------------------------+
```

Run `info` with a target time before deletion to view the repository.

pg-primary **⇒** Info with target time

```bash
sudo -u postgres pgbackrest --stanza=demo --repo=3 \
       --repo-target-time="2026-09-27 10:11:38+00" info
```

```text
       [filtered 5 lines of output]
        wal archive min/max (14): 00000005000000000000001C/00000005000000000000001D
        full backup: 20260927-101125F
            timestamp start/stop: 2026-09-27 10:11:25+00 / 2026-09-27 10:11:37+00
            wal start/stop: 00000005000000000000001D / 00000005000000000000001D
            repo3: backup set size: 4.2MB, backup size: 4.2MB
```

If `info` shows the required backup, restore it with the same target time.

pg-primary **⇒** Restore with target time

```bash
sudo -u postgres pgbackrest --stanza=demo --repo=3 --delta \
       --repo-target-time="2026-09-27 10:11:38+00" --log-level-console=info restore
```

```text
P00   INFO: restore command begin 2.59.2: --delta --exec-id=5687-73aa017d --log-level-console=info --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --process-max=4 --repo=3 --repo2-azure-account=<redacted> --repo2-azure-container=demo-container --repo2-azure-key=<redacted> --repo1-cipher-pass=<redacted> --repo1-cipher-type=aes-256-cbc --repo5-gcs-bucket=demo-bucket --repo5-gcs-key=<redacted> --repo1-path=/var/lib/pgbackrest --repo2-path=/demo-repo --repo3-path=/demo-repo --repo4-path=/demo-repo --repo5-path=/demo-repo --repo3-s3-bucket=demo-bucket --repo3-s3-endpoint=s3.us-east-1.amazonaws.com --repo3-s3-key=<redacted> --repo3-s3-key-secret=<redacted> --repo3-s3-region=us-east-1 --repo4-sftp-host=sftp-server --repo4-sftp-host-key-hash-type=sha1 --repo4-sftp-host-user=pgbackrest --repo4-sftp-private-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp --repo4-sftp-public-key-file=/var/lib/pgsql/.ssh/id_rsa_sftp.pub --repo-target-time="2026-09-27 10:11:38+00" --repo2-type=azure --repo3-type=s3 --repo4-type=sftp --repo5-type=gcs --stanza=demo
P00   INFO: repo3: restore backup set 20260927-101125F, recovery will start at 2026-09-27 10:11:25

P00   INFO: remove invalid files/links/paths from '/var/lib/pgsql/14/data'
P00   INFO: write updated /var/lib/pgsql/14/data/postgresql.auto.conf
       [filtered 2 lines of output]
```

```bash
sudo systemctl start postgresql-14.service
```

--------

## Dedicated Repository Host

[Quickstart](#quick-start) suits simple installations. Enterprise installations commonly use a separate repository host for backups and WAL archives. This reduces the effect of database host failures on backup data. Also consider conventional backup software for the repository host.

On each PostgreSQL host, set `pg1-path` to the local cluster path and leave `pg1-host` unset. On the repository host, configure `pg-host` connections to the primary and any standby hosts. Only the repository host configuration should list multiple PostgreSQL hosts. Either index can identify the primary or standby; for example, pg1-path/pg1-host and pg2-path/pg2-host can appear in either order.

### Installation

Create a host named repository to store cluster backups.

NOTE:

The pgBackRest version installed on the repository host must exactly match the version installed on the PostgreSQL host.

Create `pgbackrest` as the repository owner. Any user can own it, but avoid `postgres`, if present, to prevent confusion.

NOTE:

A pgBackRest package might install logrotate configuration, such as `/etc/logrotate.d/pgbackrest`, with a `su` directive like `su postgres postgres`. Files in `/var/log/pgbackrest` belong to the user running pgBackRest, here `pgbackrest`. Update `su` to that user. Otherwise, logrotate fails with a permission error.

repository **⇒** Create `pgbackrest` user

```bash
sudo groupadd pgbackrest
sudo adduser -gpgbackrest -n pgbackrest
```

Prefer package installation to a source build. Packages usually perform the remaining steps in this section. If a package omits a directory or sets incorrect permissions, create the directory or correct its permissions manually.

RHEL packages for pgBackRest are available at [yum.postgresql.org](http://yum.postgresql.org).

If your distribution or version has no package, [build from source](#build) and follow these manual installation steps.

repository **⇒** Install dependencies

```bash
sudo yum install postgresql-libs libssh2
```

repository **⇒** Copy pgBackRest binary from build host

```bash
sudo scp build:/build/pgbackrest/src/pgbackrest /usr/bin
sudo chmod 755 /usr/bin/pgbackrest
```

pgBackRest requires log and configuration directories and a configuration file.

repository **⇒** Create pgBackRest configuration file and directories

```bash
sudo mkdir -p -m 770 /var/log/pgbackrest
sudo chown pgbackrest:pgbackrest /var/log/pgbackrest
sudo mkdir -p /etc/pgbackrest
sudo mkdir -p /etc/pgbackrest/conf.d
sudo touch /etc/pgbackrest/pgbackrest.conf
sudo chmod 640 /etc/pgbackrest/pgbackrest.conf
sudo chown pgbackrest:pgbackrest /etc/pgbackrest/pgbackrest.conf
```

repository **⇒** Create the pgBackRest repository

```bash
sudo mkdir -p /var/lib/pgbackrest
sudo chmod 750 /var/lib/pgbackrest
sudo chown pgbackrest:pgbackrest /var/lib/pgbackrest
```

### Configuration

Use TLS and client certificates for communication between hosts. SSH is also supported; see [Setup SSH](/docs/pgbackrest/user-guide/#setup-passwordless-ssh).

Generate pgBackRest client and server certificates as you would for PostgreSQL. See [Secure TCP/IP Connections with TLS](https://www.postgresql.org/docs/current/ssl-tcp.html).

On the repository host, configure the pg-primary host, user, and database path. Use `pg1` for the primary so you can add a standby later.

repository:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `pg1-host`/`pg1-host-user` and `pg1-path`

```ini
[demo]
pg1-host=pg-primary
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
[global]
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
tls-server-address=*
tls-server-auth=pgbackrest-client=*
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

On the database host, configure the repository host and user. `repo1-host-user` defaults to `pgbackrest`. If `postgres` performs restores on the repository host, preferably prevent it from also performing backups. It can read the repository directly if it belongs to the `pgbackrest` group.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `repo1-host`/`repo1-host-user`

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
tls-server-address=*
tls-server-auth=pgbackrest-client=demo
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

See [Configure Archiving](#configure-archiving) for PostgreSQL configuration.

Commands work as in a single-host setup. However, run commands such as `backup` and `expire` on the repository host.

### Setup TLS Server

The pgBackRest TLS server must be configured and started on each host.

repository **⇒** Setup pgBackRest Server

```bash
sudo cat /etc/systemd/system/pgbackrest.service
```

```text
[Unit]
Description=pgBackRest Server
After=network.target
StartLimitIntervalSec=0
[Service]
Type=notify
Restart=always
RestartSec=1
User=pgbackrest
ExecStart=/usr/bin/pgbackrest server
ExecStartPost=/bin/sleep 3
ExecStartPost=/bin/bash -c "[ ! -z $MAINPID ]"
ExecReload=/bin/kill -HUP $MAINPID
[Install]
WantedBy=multi-user.target
```

```bash
sudo systemctl enable pgbackrest
sudo systemctl start pgbackrest
```

pg-primary **⇒** Setup pgBackRest Server

```bash
sudo cat /etc/systemd/system/pgbackrest.service
```

```text
[Unit]
Description=pgBackRest Server
After=network.target
StartLimitIntervalSec=0
[Service]
Type=notify
Restart=always
RestartSec=1
User=postgres
ExecStart=/usr/bin/pgbackrest server
ExecStartPost=/bin/sleep 3
ExecStartPost=/bin/bash -c "[ ! -z $MAINPID ]"
ExecReload=/bin/kill -HUP $MAINPID
[Install]
WantedBy=multi-user.target
```

```bash
sudo systemctl enable pgbackrest
sudo systemctl start pgbackrest
```

### Create and Check Stanza

Create the stanza in the new repository.

repository **⇒** Create the stanza

```bash
sudo -u pgbackrest pgbackrest --stanza=demo stanza-create
```

Check configuration on both the database and repository hosts. See [Check the Configuration](#check-the-configuration) for `check` details.

pg-primary **⇒** Check the configuration

```bash
sudo -u postgres pgbackrest --stanza=demo check
```

repository **⇒** Check the configuration

```bash
sudo -u pgbackrest pgbackrest --stanza=demo check
```

### Perform a Backup

On the repository host, run pgBackRest `backup` to back up the PostgreSQL cluster.

repository **⇒** Backup the demo cluster

```bash
sudo -u pgbackrest pgbackrest --stanza=demo backup
```

```text
P00   WARN: no prior backup exists, incr backup has been changed to full
```

The new repository had no full backup. pgBackRest therefore warned that it changed the incremental backup to a full backup.

### Restore a Backup

On the database host, run pgBackRest `restore` to restore the PostgreSQL cluster.

pg-primary **⇒** Stop the demo cluster, restore, and restart PostgreSQL

```bash
sudo systemctl stop postgresql-14.service
sudo -u postgres pgbackrest --stanza=demo --delta restore
sudo systemctl start postgresql-14.service
```

--------

## Parallel Backup / Restore

pgBackRest can compress and transfer data in parallel. Set the process count with `--process-max`.

Usually, allocate no more than 25% of available CPUs to `backup`. Regular backups do not need maximum speed. Avoid reducing database performance where possible.

Restore should use all available CPUs because PostgreSQL is stopped and usually no other critical work runs on that host. If the host has multiple clusters, account for them when setting parallelism.

repository **⇒** Perform a backup with single process

```bash
sudo -u pgbackrest pgbackrest --stanza=demo --type=full backup
```

repository:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure pgBackRest to use multiple `backup` processes

```ini
[demo]
pg1-host=pg-primary
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
[global]
process-max=3
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
tls-server-address=*
tls-server-auth=pgbackrest-client=*
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

repository **⇒** Perform a backup with multiple processes

```bash
sudo -u pgbackrest pgbackrest --stanza=demo --type=full backup
```

repository **⇒** Get backup info for the demo cluster

```bash
sudo -u pgbackrest pgbackrest info
```

```text
stanza: demo
    status: ok
    cipher: none

    db (current)
        wal archive min/max (14): 000000070000000000000023/000000070000000000000025

        full backup: 20260927-101240F
            timestamp start/stop: 2026-09-27 10:12:40+00 / 2026-09-27 10:12:44+00

            wal start/stop: 000000070000000000000023 / 000000070000000000000023
            database size: 33.5MB, database backup size: 33.5MB
            repo1: backup set size: 4.2MB, backup size: 4.2MB

        full backup: 20260927-101245F
            timestamp start/stop: 2026-09-27 10:12:45+00 / 2026-09-27 10:12:47+00

            wal start/stop: 000000070000000000000024 / 000000070000000000000025
            database size: 33.5MB, database backup size: 33.5MB
            repo1: backup set size: 4.2MB, backup size: 4.2MB
```

Multiple processes should speed up the last backup. For very small backups, the difference might be small. Time savings increase with database size.

--------

## Starting and Stopping

Prevent test clusters from writing to pgBackRest repositories with `stop`. This includes standbys promoted for testing and test clusters restored from production backups.

`stop` blocks these write commands: `archive-push`, `backup`, `expire`, `stanza-create`, and `stanza-upgrade`. The exception is `stanza-delete`; see [Delete a Stanza](#delete-a-stanza).

pg-primary **⇒** Stop pgBackRest write commands

```bash
sudo -u postgres pgbackrest stop
```

New pgBackRest write commands cannot run.

repository **⇒** Attempt a backup

```bash
sudo -u pgbackrest pgbackrest --stanza=demo backup
```

```text
P00   WARN: unable to check pg1: [StopError] raised from remote-0 tls protocol on 'pg-primary': stop file exists for all stanzas

P00  ERROR: [056]: unable to find primary cluster - cannot proceed
            HINT: are all available clusters in recovery?
```

Use `--force` to terminate running pgBackRest write commands. This also terminates asynchronous archive-get, although it restarts if PostgreSQL needs it. Repeating stop when pgBackRest is already stopped produces a warning.

pg-primary **⇒** Stop the pgBackRest services again

```bash
sudo -u postgres pgbackrest stop
```

```text
P00   WARN: stop file already exists for all stanzas
```

Use `start` to permit pgBackRest write commands again. Previously interrupted commands do not restart automatically.

pg-primary **⇒** Start pgBackRest write commands

```bash
sudo -u postgres pgbackrest start
```

You can also stop pgBackRest for one stanza.

pg-primary **⇒** Stop pgBackRest write commands for the `demo` stanza

```bash
sudo -u postgres pgbackrest --stanza=demo stop
```

New pgBackRest write commands cannot run for this stanza.

repository **⇒** Attempt a backup

```bash
sudo -u pgbackrest pgbackrest --stanza=demo backup
```

```text
P00   WARN: unable to check pg1: [StopError] raised from remote-0 tls protocol on 'pg-primary': stop file exists for stanza demo

P00  ERROR: [056]: unable to find primary cluster - cannot proceed
            HINT: are all available clusters in recovery?
```

When starting write commands for one stanza, specify that stanza again.

pg-primary **⇒** Start pgBackRest write commands for the `demo` stanza

```bash
sudo -u postgres pgbackrest --stanza=demo start
```

--------

## Replication

Replication creates standby copies of a PostgreSQL primary cluster. Standbys distribute read load and provide redundancy if the primary host fails.

### Installation

Create a host named pg-standby for the standby.

Prefer package installation to a source build. Packages usually perform the remaining steps in this section. If a package omits a directory or sets incorrect permissions, create the directory or correct its permissions manually.

RHEL packages for pgBackRest are available at [yum.postgresql.org](http://yum.postgresql.org).

If your distribution or version has no package, [build from source](#build) and follow these manual installation steps.

pg-standby **⇒** Install dependencies

```bash
sudo yum install postgresql-libs libssh2
```

pg-standby **⇒** Copy pgBackRest binary from build host

```bash
sudo scp build:/build/pgbackrest/src/pgbackrest /usr/bin
sudo chmod 755 /usr/bin/pgbackrest
```

pgBackRest requires log and configuration directories and a configuration file.

pg-standby **⇒** Create pgBackRest configuration file and directories

```bash
sudo mkdir -p -m 770 /var/log/pgbackrest
sudo chown postgres:postgres /var/log/pgbackrest
sudo mkdir -p /etc/pgbackrest
sudo mkdir -p /etc/pgbackrest/conf.d
sudo touch /etc/pgbackrest/pgbackrest.conf
sudo chmod 640 /etc/pgbackrest/pgbackrest.conf
sudo chown postgres:postgres /etc/pgbackrest/pgbackrest.conf
```

### Hot Standby

A hot standby performs replication using the WAL archive and allows read-only queries.

Use configuration similar to pg-primary. Set recovery type `standby` to keep the cluster in recovery after it reaches the end of archived WAL.

pg-standby:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure pgBackRest on the standby

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
tls-server-address=*
tls-server-auth=pgbackrest-client=demo
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

pg-standby **⇒** Setup pgBackRest Server

```bash
sudo cat /etc/systemd/system/pgbackrest.service
```

```text
[Unit]
Description=pgBackRest Server
After=network.target
StartLimitIntervalSec=0
[Service]
Type=notify
Restart=always
RestartSec=1
User=postgres
ExecStart=/usr/bin/pgbackrest server
ExecStartPost=/bin/sleep 3
ExecStartPost=/bin/bash -c "[ ! -z $MAINPID ]"
ExecReload=/bin/kill -HUP $MAINPID
[Install]
WantedBy=multi-user.target
```

```bash
sudo systemctl enable pgbackrest
sudo systemctl start pgbackrest
```

Create the path where PostgreSQL will be restored.

pg-standby **⇒** Create PostgreSQL path

```bash
sudo -u postgres mkdir -p -m 700 /var/lib/pgsql/14/data
```

Create the standby with `restore`.

IMPORTANT:

If promotion is for testing or reporting rather than a new primary, disable archiving. Use `--archive-mode=off` or set archive_mode=off in `postgresql.conf`. Otherwise, the cluster can add conflicting WAL to the repository and complicate restores.

pg-standby **⇒** Restore the demo standby cluster

```bash
sudo -u postgres pgbackrest --stanza=demo --type=standby restore
sudo -u postgres cat /var/lib/pgsql/14/data/postgresql.auto.conf
```

```text

# Do not edit this file manually!
# It will be overwritten by the ALTER SYSTEM command.

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:10:05
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:10:28
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:10:53
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'
# Removed by pgBackRest restore on 2026-09-27 10:11:54 # recovery_target_time = '2026-09-27 10:10:45.829508+00'
# Removed by pgBackRest restore on 2026-09-27 10:11:54 # recovery_target_action = 'promote'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:11:54
restore_command = 'pgbackrest --repo=3 --repo-target-time="2026-09-27 10:11:38+00" --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:12:36
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:13:08
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'
```

This configuration also supports later promotion of the standby to primary.

pg-standby:`/var/lib/pgsql/14/data/postgresql.conf` **⇒** Configure PostgreSQL

```ini
archive_command = 'pgbackrest --stanza=demo archive-push %p'
archive_mode = on

log_filename = 'postgresql.log'
```

pg-standby **⇒** Start PostgreSQL

```bash
sudo systemctl start postgresql-14.service
```

Check the PostgreSQL recovery log. It should show that the cluster entered standby mode and accepts read-only connections.

pg-standby **⇒** Examine the PostgreSQL log output for log messages indicating success

```bash
sudo -u postgres cat /var/lib/pgsql/14/data/log/postgresql.log
```

```text
       [filtered 4 lines of output]
LOG:  listening on Unix socket "/tmp/.s.PGSQL.5432"
LOG:  database system was interrupted; last known up at 2026-09-27 10:12:45 UTC

LOG:  entering standby mode

LOG:  restored log file "00000007.history" from archive
LOG:  restored log file "000000070000000000000024" from archive
       [filtered 3 lines of output]
```

To test replication, create a table on pg-primary.

pg-primary **⇒** Create a new table on the primary

```bash
sudo -u postgres psql -c " \
       begin; \
       create table replicated_table (message text); \
       insert into replicated_table values ('Important Data'); \
       commit; \
       select * from replicated_table";
```

```text
       [filtered 4 lines of output]
    message
----------------

 Important Data

(1 row)
```

Then query that table on pg-standby.

pg-standby **⇒** Query new table on the standby

```bash
sudo -u postgres psql -c "select * from replicated_table;"
```

```text
ERROR:  relation "replicated_table" does not exist

LINE 1: select * from replicated_table;
                      ^
```

The standby reads archived WAL. It cannot see changes until pg-primary archives the segment containing them.

Call `pg_switch_wal()` to archive the current WAL segment. PostgreSQL creates a new segment for later changes.

pg-primary **⇒** Call `pg_switch_wal()`

```bash
sudo -u postgres psql -c "select *, current_timestamp from pg_switch_wal()";
```

```text
 pg_switch_wal |      current_timestamp
---------------+------------------------------
 0/2601E7C0    | 2026-09-27 10:13:14.65946+00
(1 row)
```

After a short delay, the table appears on pg-standby.

pg-standby **⇒** Now the new table exists on the standby (may require a few retries)

```bash
sudo -u postgres psql -c " \
       select *, current_timestamp from replicated_table"
```

```text
    message     |       current_timestamp
----------------+-------------------------------
 Important Data | 2026-09-27 10:13:15.866308+00

(1 row)
```

Check the standby configuration for access to the repository.

pg-standby **⇒** Check the configuration

```bash
sudo -u postgres pgbackrest --stanza=demo --log-level-console=info check
```

```text
P00   INFO: check command begin 2.59.2: --exec-id=1284-bb81ebc5 --log-level-console=info --log-level-file=detail --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --stanza=demo
P00   INFO: check repo1 (standby)

P00   INFO: switch wal not performed because this is a standby

P00   INFO: check command end: completed successfully
```

### Streaming Replication

Streaming replication connects directly to the primary and applies changes as they occur. This reduces primary-to-standby lag compared with archive-only replication.

Streaming replication requires a user with the replication privilege.

pg-primary **⇒** Create replication user

```bash
sudo -u postgres psql -c " \
       create user replicator password 'jw8s0F4' replication";
```

```text
CREATE ROLE
```

Update `pg_hba.conf` to allow the standby to connect as the replication user. Replace the example IP address with your pg-standby address. Reload configuration after the change.

pg-primary **⇒** Create `pg_hba.conf` entry for replication user

```bash
sudo -u postgres sh -c 'echo \
       "host    replication     replicator      172.17.0.8/32           md5" \
       >> /var/lib/pgsql/14/data/pg_hba.conf'

sudo systemctl reload postgresql-14.service
```

Configure primary_conninfo in pgBackRest so the standby can contact the primary.

pg-standby:`/etc/pgbackrest/pgbackrest.conf` **⇒** Set primary_conninfo

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
recovery-option=primary_conninfo=host=172.17.0.6 port=5432 user=replicator
[global]
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
tls-server-address=*
tls-server-auth=pgbackrest-client=demo
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

You can put a password in primary_conninfo, but a `.pgpass` file is more flexible and secure.

pg-standby **⇒** Configure the replication password in the `.pgpass` file.

```bash
sudo -u postgres sh -c 'echo \
       "172.17.0.6:*:replication:replicator:jw8s0F4" \
       >> /var/lib/pgsql/.pgpass'

sudo -u postgres chmod 600 /var/lib/pgsql/.pgpass
```

Create the standby with `restore`.

pg-standby **⇒** Stop PostgreSQL and restore the demo standby cluster

```bash
sudo systemctl stop postgresql-14.service
sudo -u postgres pgbackrest --stanza=demo --delta --type=standby restore
sudo -u postgres cat /var/lib/pgsql/14/data/postgresql.auto.conf
```

```text

# Do not edit this file manually!
# It will be overwritten by the ALTER SYSTEM command.

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:10:05
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:10:28
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:10:53
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'
# Removed by pgBackRest restore on 2026-09-27 10:11:54 # recovery_target_time = '2026-09-27 10:10:45.829508+00'
# Removed by pgBackRest restore on 2026-09-27 10:11:54 # recovery_target_action = 'promote'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:11:54
restore_command = 'pgbackrest --repo=3 --repo-target-time="2026-09-27 10:11:38+00" --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:12:36
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'

# Recovery settings generated by pgBackRest restore on 2026-09-27 10:13:21
primary_conninfo = 'host=172.17.0.6 port=5432 user=replicator'
restore_command = 'pgbackrest --stanza=demo archive-get %f "%p"'
```

NOTE:

pgBackRest wrote primary_conninfo to `postgresql.auto.conf` because `pgbackrest.conf` defines it as a `recovery-option`. To preserve an existing `postgresql.auto.conf`, run `restore` with `--type=preserve`.

RHEL keeps `postgresql.conf` in the data directory by default. The last restore overwrote its changes, so enable hot_standby again. Alternatively, store `postgresql.conf` elsewhere or enable hot_standby on pg-primary, where it is ignored.

pg-standby:`/var/lib/pgsql/14/data/postgresql.conf` **⇒** Enable hot_standby

```ini
archive_command = 'pgbackrest --stanza=demo archive-push %p'
archive_mode = on
hot_standby = on
log_filename = 'postgresql.log'
```

pg-standby **⇒** Start PostgreSQL

```bash
sudo systemctl start postgresql-14.service
```

Check the PostgreSQL log to confirm that streaming replication started.

pg-standby **⇒** Examine the PostgreSQL log output for log messages indicating success

```bash
sudo -u postgres cat /var/lib/pgsql/14/data/log/postgresql.log
```

```text
       [filtered 12 lines of output]
LOG:  database system is ready to accept read-only connections
LOG:  restored log file "000000070000000000000026" from archive

LOG:  started streaming WAL from primary at 0/27000000 on timeline 7
```

New tables on pg-primary now appear quickly on pg-standby without `pg_switch_wal()`.

pg-primary **⇒** Create a new table on the primary

```bash
sudo -u postgres psql -c " \
       begin; \
       create table stream_table (message text); \
       insert into stream_table values ('Important Data'); \
       commit; \
       select *, current_timestamp from stream_table";
```

```text
       [filtered 4 lines of output]
    message     |       current_timestamp
----------------+-------------------------------
 Important Data | 2026-09-27 10:13:26.824575+00

(1 row)
```

pg-standby **⇒** Query table on the standby

```bash
sudo -u postgres psql -c " \
       select *, current_timestamp from stream_table"
```

```text
    message     |       current_timestamp
----------------+-------------------------------
 Important Data | 2026-09-27 10:13:27.012839+00

(1 row)
```

--------

## Multiple Stanzas

pgBackRest supports multiple stanzas, commonly with one shared repository host.

### Installation

Create a host named pg-alt for the new primary.

Prefer package installation to a source build. Packages usually perform the remaining steps in this section. If a package omits a directory or sets incorrect permissions, create the directory or correct its permissions manually.

RHEL packages for pgBackRest are available at [yum.postgresql.org](http://yum.postgresql.org).

If your distribution or version has no package, [build from source](#build) and follow these manual installation steps.

pg-alt **⇒** Install dependencies

```bash
sudo yum install postgresql-libs libssh2
```

pg-alt **⇒** Copy pgBackRest binary from build host

```bash
sudo scp build:/build/pgbackrest/src/pgbackrest /usr/bin
sudo chmod 755 /usr/bin/pgbackrest
```

pgBackRest requires log and configuration directories and a configuration file.

pg-alt **⇒** Create pgBackRest configuration file and directories

```bash
sudo mkdir -p -m 770 /var/log/pgbackrest
sudo chown postgres:postgres /var/log/pgbackrest
sudo mkdir -p /etc/pgbackrest
sudo mkdir -p /etc/pgbackrest/conf.d
sudo touch /etc/pgbackrest/pgbackrest.conf
sudo chmod 640 /etc/pgbackrest/pgbackrest.conf
sudo chown postgres:postgres /etc/pgbackrest/pgbackrest.conf
```

### Configuration

Use configuration similar to pg-primary, but select stanza `demo-alt`. This separates its backups and archive.

pg-alt:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure pgBackRest on the new primary

```ini
[demo-alt]
pg1-path=/var/lib/pgsql/14/data
[global]
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
tls-server-address=*
tls-server-auth=pgbackrest-client=demo-alt
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

repository:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `pg1-host`/`pg1-host-user` and `pg1-path`

```ini
[demo]
pg1-host=pg-primary
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
[demo-alt]
pg1-host=pg-alt
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
[global]
process-max=3
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
tls-server-address=*
tls-server-auth=pgbackrest-client=*
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

pg-alt **⇒** Setup pgBackRest Server

```bash
sudo cat /etc/systemd/system/pgbackrest.service
```

```text
[Unit]
Description=pgBackRest Server
After=network.target
StartLimitIntervalSec=0
[Service]
Type=notify
Restart=always
RestartSec=1
User=postgres
ExecStart=/usr/bin/pgbackrest server
ExecStartPost=/bin/sleep 3
ExecStartPost=/bin/bash -c "[ ! -z $MAINPID ]"
ExecReload=/bin/kill -HUP $MAINPID
[Install]
WantedBy=multi-user.target
```

```bash
sudo systemctl enable pgbackrest
sudo systemctl start pgbackrest
```

### Setup Demo Cluster

pg-alt **⇒** Create the demo cluster

```bash
sudo -u postgres /usr/pgsql-14/bin/initdb \
       -D /var/lib/pgsql/14/data -k -A peer
```

pg-alt:`/var/lib/pgsql/14/data/postgresql.conf` **⇒** Configure PostgreSQL settings

```ini
archive_command = 'pgbackrest --stanza=demo-alt archive-push %p'
archive_mode = on
log_filename = 'postgresql.log'
```

pg-alt **⇒** Start the demo cluster

```bash
sudo systemctl restart postgresql-14.service
```

### Create the Stanza and Check Configuration

Run `stanza-create` to initialize the stanza. Then run `check` to verify archive and backup configuration.

pg-alt **⇒** Create the stanza and check the configuration

```bash
sudo -u postgres pgbackrest --stanza=demo-alt --log-level-console=info stanza-create
```

```text
P00   INFO: stanza-create command begin 2.59.2: --exec-id=929-78f9f9d9 --log-level-console=info --log-level-file=detail --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --stanza=demo-alt
P00   INFO: stanza-create for stanza 'demo-alt' on repo1

P00   INFO: stanza-create command end: completed successfully
```

```bash
sudo -u postgres pgbackrest --log-level-console=info check
```

```text
P00   INFO: check command begin 2.59.2: --exec-id=962-8c30e5f5 --log-level-console=info --log-level-file=detail --no-log-timestamp --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls

P00   INFO: check stanza 'demo-alt'

P00   INFO: check repo1 configuration (primary)
P00   INFO: check repo1 archive for WAL (primary)
P00   INFO: WAL segment 000000010000000000000001 successfully archived to '/var/lib/pgbackrest/archive/demo-alt/14-1/0000000100000000/000000010000000000000001-c14ec01d6a751eb028bfd43785eaa7a95637afeb.gz' on repo1

P00   INFO: check command end: completed successfully
```

Run `check` on the repository host to check all stanzas.

repository **⇒** Check the configuration for all stanzas

```bash
sudo -u pgbackrest pgbackrest --log-level-console=info check
```

```text
P00   INFO: check command begin 2.59.2: --exec-id=1381-a0734629 --log-level-console=info --no-log-timestamp --repo1-path=/var/lib/pgbackrest

P00   INFO: check stanza 'demo'

P00   INFO: check repo1 configuration (primary)
P00   INFO: check repo1 archive for WAL (primary)
P00   INFO: WAL segment 000000070000000000000027 successfully archived to '/var/lib/pgbackrest/archive/demo/14-1/0000000700000000/000000070000000000000027-9f1c78df044b58a0ba45c2f0fa20f4a71347f90e.gz' on repo1
P00   INFO: check stanza 'demo-alt'

P00   INFO: check repo1 configuration (primary)
P00   INFO: check repo1 archive for WAL (primary)
P00   INFO: WAL segment 000000010000000000000002 successfully archived to '/var/lib/pgbackrest/archive/demo-alt/14-1/0000000100000000/000000010000000000000002-3e7365ad946dd303f957dbf3c75889cac056df3a.gz' on repo1

P00   INFO: check command end: completed successfully
```

--------

## Asynchronous Archiving

Enable `archive-async` for asynchronous `archive-push` and `archive-get`.

Create a spool path for transient data. Each command uses it differently, as described in the following sections.

pg-primary **⇒** Create the spool directory

```bash
sudo mkdir -p -m 750 /var/spool/pgbackrest
sudo chown postgres:postgres /var/spool/pgbackrest
```

pg-standby **⇒** Create the spool directory

```bash
sudo mkdir -p -m 750 /var/spool/pgbackrest
sudo chown postgres:postgres /var/spool/pgbackrest
```

Configure the spool path and enable asynchronous archiving. This reduces remote-storage connections. Set `process-max` for parallel operations and further performance improvements. Keep it low enough to preserve normal database performance.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure the spool path and asynchronous archiving

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
[global]
archive-async=y
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
spool-path=/var/spool/pgbackrest
tls-server-address=*
tls-server-auth=pgbackrest-client=demo
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
[global:archive-get]
process-max=2
[global:archive-push]
process-max=2
```

pg-standby:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure the spool path and asynchronous archiving

```ini
[demo]
pg1-path=/var/lib/pgsql/14/data
recovery-option=primary_conninfo=host=172.17.0.6 port=5432 user=replicator
[global]
archive-async=y
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
spool-path=/var/spool/pgbackrest
tls-server-address=*
tls-server-auth=pgbackrest-client=demo
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
[global:archive-get]
process-max=2
[global:archive-push]
process-max=2
```

NOTE:

Set `process-max` in command-specific sections so it does not affect backup or restore. You can give `archive-push` and `archive-get` different values.

For this demonstration, interrupt streaming replication so PostgreSQL must fetch WAL through restore_command.

pg-primary **⇒** Break streaming replication by changing the replication password

```bash
sudo -u postgres psql -c "alter user replicator password 'bogus'"
```

```text
ALTER ROLE
```

pg-standby **⇒** Restart standby to break connection

```bash
sudo systemctl restart postgresql-14.service
```

### Archive Push

Asynchronous `archive-push` transfers WAL archiving to separate processes to improve throughput. It finds ready segments beyond the one PostgreSQL currently requests through `archive_command`. It copies WAL directly from `pg_xlog`/`pg_wal` to the archive. The `archive_command` returns success only after the requested segment is safely stored.

The spool path contains current WAL archive status. Status files are usually empty and use little I/O and space, at most a few MB. pgBackRest can recreate all this information. You do not need to preserve the directory when moving the cluster to new hardware.

IMPORTANT:

The original asynchronous implementation copied WAL to the spool directory before compression and transfer. The newer implementation reads WAL directly from `pg_xlog`. If you used asynchronous archiving in v1.12 or earlier, read the v1.13 release notes carefully before upgrading.

Monitor asynchronous activity in `[stanza]-archive-push-async.log`. To test it, push several WAL segments quickly.

pg-primary **⇒** Test parallel asynchronous archiving

```bash
sudo -u postgres psql -c " \
       select pg_create_restore_point('test async push'); select pg_switch_wal(); \
       select pg_create_restore_point('test async push'); select pg_switch_wal(); \
       select pg_create_restore_point('test async push'); select pg_switch_wal(); \
       select pg_create_restore_point('test async push'); select pg_switch_wal(); \
       select pg_create_restore_point('test async push'); select pg_switch_wal();"

sudo -u postgres pgbackrest --stanza=demo --log-level-console=info check
```

```text
P00   INFO: check command begin 2.59.2: --exec-id=6867-5d1ad560 --log-level-console=info --log-level-file=detail --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --stanza=demo
P00   INFO: check repo1 configuration (primary)
P00   INFO: check repo1 archive for WAL (primary)
P00   INFO: WAL segment 00000007000000000000002D successfully archived to '/var/lib/pgbackrest/archive/demo/14-1/0000000700000000/00000007000000000000002D-381cd9857b86d83a40d68c95c359635d8866fce8.gz' on repo1

P00   INFO: check command end: completed successfully
```

The log now shows parallel, asynchronous activity.

pg-primary **⇒** Check results in the log

```bash
sudo -u postgres cat /var/log/pgbackrest/demo-archive-push-async.log
```

```text
-------------------PROCESS START-------------------
P00   INFO: archive-push:async command begin 2.59.2: [/var/lib/pgsql/14/data/pg_wal] --archive-async --exec-id=6831-8bd24b55 --log-level-console=off --log-level-file=detail --log-level-stderr=off --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --process-max=2 --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --spool-path=/var/spool/pgbackrest --stanza=demo

P00   INFO: push 1 WAL file(s) to archive: 000000070000000000000028
P01 DETAIL: pushed WAL file '000000070000000000000028' to the archive

P00 DETAIL: statistics: {"socket.client":{"total":1},"socket.session":{"total":1},"tls.client":{"total":1},"tls.session":{"total":1}}
P00   INFO: archive-push:async command end: completed successfully

-------------------PROCESS START-------------------
P00   INFO: archive-push:async command begin 2.59.2: [/var/lib/pgsql/14/data/pg_wal] --archive-async --exec-id=6869-a001e63b --log-level-console=off --log-level-file=detail --log-level-stderr=off --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --process-max=2 --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --spool-path=/var/spool/pgbackrest --stanza=demo

P00   INFO: push 5 WAL file(s) to archive: 000000070000000000000029...00000007000000000000002D
P02 DETAIL: pushed WAL file '00000007000000000000002A' to the archive
P01 DETAIL: pushed WAL file '000000070000000000000029' to the archive
P01 DETAIL: pushed WAL file '00000007000000000000002C' to the archive
P02 DETAIL: pushed WAL file '00000007000000000000002B' to the archive
P01 DETAIL: pushed WAL file '00000007000000000000002D' to the archive

P00 DETAIL: statistics: {"socket.client":{"total":1},"socket.session":{"total":1},"tls.client":{"total":1},"tls.session":{"total":1}}
P00   INFO: archive-push:async command end: completed successfully
```

### Archive Get

Asynchronous `archive-get` keeps a local WAL queue to improve throughput. If a requested segment is absent, it fetches that segment and enough consecutive segments to fill the queue. `archive-get-queue-max` controls maximum size. When the queue falls below half full, pgBackRest fetches more WAL to refill it.

Asynchronous operation helps most with high WAL volumes or high-latency repository connections, such as S3 and other object stores. For high latency, consider increasing `process-max`.

Monitor asynchronous activity in `[stanza]-archive-get-async.log`.

pg-standby **⇒** Check results in the log

```bash
sudo -u postgres cat /var/log/pgbackrest/demo-archive-get-async.log
```

```text
-------------------PROCESS START-------------------
P00   INFO: archive-get:async command begin 2.59.2: [000000070000000000000024, 000000070000000000000025, 000000070000000000000026, 000000070000000000000027, 000000070000000000000028, 000000070000000000000029, 00000007000000000000002A, 00000007000000000000002B] --archive-async --exec-id=1951-19ef105e --log-level-console=off --log-level-file=detail --log-level-stderr=off --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --process-max=2 --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --spool-path=/var/spool/pgbackrest --stanza=demo
P00   INFO: get 8 WAL file(s) from archive: 000000070000000000000024...00000007000000000000002B
P01 DETAIL: found 000000070000000000000024 in the repo1: 14-1 archive

P02 DETAIL: found 000000070000000000000025 in the repo1: 14-1 archive
P01 DETAIL: found 000000070000000000000026 in the repo1: 14-1 archive
P02 DETAIL: found 000000070000000000000027 in the repo1: 14-1 archive

P00 DETAIL: unable to find 000000070000000000000028 in the archive
P00 DETAIL: statistics: {"socket.client":{"total":1},"socket.session":{"total":1},"tls.client":{"total":1},"tls.session":{"total":1}}
       [filtered 24 lines of output]
P00   INFO: archive-get:async command begin 2.59.2: [000000070000000000000028, 000000070000000000000029, 00000007000000000000002A, 00000007000000000000002B, 00000007000000000000002C, 00000007000000000000002D, 00000007000000000000002E, 00000007000000000000002F] --archive-async --exec-id=2006-9db76252 --log-level-console=off --log-level-file=detail --log-level-stderr=off --no-log-timestamp --pg1-path=/var/lib/pgsql/14/data --process-max=2 --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --spool-path=/var/spool/pgbackrest --stanza=demo
P00   INFO: get 8 WAL file(s) from archive: 000000070000000000000028...00000007000000000000002F
P01 DETAIL: found 000000070000000000000028 in the repo1: 14-1 archive

P02 DETAIL: found 000000070000000000000029 in the repo1: 14-1 archive
P01 DETAIL: found 00000007000000000000002A in the repo1: 14-1 archive
P02 DETAIL: found 00000007000000000000002B in the repo1: 14-1 archive
P01 DETAIL: found 00000007000000000000002C in the repo1: 14-1 archive
P02 DETAIL: found 00000007000000000000002D in the repo1: 14-1 archive

P00 DETAIL: unable to find 00000007000000000000002E in the archive
P00 DETAIL: statistics: {"socket.client":{"total":1},"socket.session":{"total":1},"tls.client":{"total":1},"tls.session":{"total":1}}
       [filtered 7 lines of output]
```

pg-primary **⇒** Fix streaming replication by changing the replication password

```bash
sudo -u postgres psql -c "alter user replicator password 'jw8s0F4'"
```

```text
ALTER ROLE
```

--------

## Backup from a Standby

pgBackRest can back up from a standby instead of the primary. Configure pg-standby and enable `backup-standby`. If several standbys are configured, it uses the first running standby found.

repository:`/etc/pgbackrest/pgbackrest.conf` **⇒** Configure `pg2-host`/`pg2-host-user` and `pg2-path`

```ini
[demo]
pg1-host=pg-primary
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
pg2-host=pg-standby
pg2-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg2-host-cert-file=/etc/pgbackrest/cert/client.crt
pg2-host-key-file=/etc/pgbackrest/cert/client.key
pg2-host-type=tls
pg2-path=/var/lib/pgsql/14/data
[demo-alt]
pg1-host=pg-alt
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
[global]
backup-standby=y
process-max=3
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
tls-server-address=*
tls-server-auth=pgbackrest-client=*
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

Backup requires both the primary and standby databases. Most files come from the standby to reduce primary load. Configure hosts in any order. pgBackRest detects their roles automatically.

repository **⇒** Backup the demo cluster from pg2

```bash
sudo -u pgbackrest pgbackrest --stanza=demo --log-level-console=detail backup
```

```text
       [filtered 2 lines of output]
P00   INFO: execute backup start: backup begins after the requested immediate checkpoint completes
P00   INFO: backup start archive = 00000007000000000000002F, lsn = 0/2F000028

P00   INFO: wait for replay on the standby to reach 0/2F000028
P00   INFO: replay on the standby reached 0/2F000028

P00   INFO: check archive for prior segment 00000007000000000000002E
P01 DETAIL: backup file pg-primary:/var/lib/pgsql/14/data/log/postgresql.log (10.9KB, 0.42%) checksum 8263e0278ee2e26fe6f13d42ebced767372e21f7
P01 DETAIL: backup file pg-primary:/var/lib/pgsql/14/data/global/pg_control (8KB, 0.73%) checksum 9e1c403b811877210e0d38b2da34710fa9f0743f
P01 DETAIL: backup file pg-primary:/var/lib/pgsql/14/data/pg_hba.conf (4.5KB, 0.90%) checksum cfa97af1dab1b130f0a921fa2d10d76fe0c5f630

P01 DETAIL: match file from prior backup pg-primary:/var/lib/pgsql/14/data/current_logfiles (26B, 0.91%) checksum 78a9f5c10960f0d91fcd313937469824861795a2
P01 DETAIL: match file from prior backup pg-primary:/var/lib/pgsql/14/data/pg_logical/replorigin_checkpoint (8B, 0.91%) checksum 347fc8f2df71bd4436e38bd1516ccd7ea0d46532
       [filtered 1263 lines of output]
```

This incremental backup copies most files from pg-standby and only a few from pg-primary.

A standby backup is identical to a primary backup. pgBackRest starts and stops the backup on pg-primary. It copies replicated files from pg-standby and the remaining files from pg-primary. Thus, the backup includes primary logs and statistics.

--------

## Upgrading PostgreSQL

Immediately after a PostgreSQL major version upgrade, update `pg-path` in all pgBackRest configurations to the new database location. Then run `stanza-upgrade`. It upgrades the stanza in every repository configured on the host. If the database is offline, use `--no-online`.

These steps outline a primary and standby upgrade to demonstrate pgBackRest reconfiguration. They are not a complete PostgreSQL upgrade guide. Take a backup before upgrading.

pg-primary **⇒** Stop old cluster

```bash
sudo systemctl stop postgresql-14.service
```

Stop the old standby cluster. You will restore it from the upgraded cluster.

pg-standby **⇒** Stop old cluster

```bash
sudo systemctl stop postgresql-14.service
```

Create the new cluster and upgrade it.

pg-primary **⇒** Create new cluster and perform the upgrade

```bash
sudo -u postgres /usr/pgsql-15/bin/initdb \
       -D /var/lib/pgsql/15/data -k -A peer

sudo -u postgres sh -c 'cd /var/lib/pgsql && \
       /usr/pgsql-15/bin/pg_upgrade \
       --old-bindir=/usr/pgsql-14/bin \
       --new-bindir=/usr/pgsql-15/bin \
       --old-datadir=/var/lib/pgsql/14/data \
       --new-datadir=/var/lib/pgsql/15/data \
       --old-options=" -c config_file=/var/lib/pgsql/14/data/postgresql.conf" \
       --new-options=" -c config_file=/var/lib/pgsql/15/data/postgresql.conf"'
```

```text
       [filtered 41 lines of output]
Checking for extension updates                              ok

Upgrade Complete

----------------
Optimizer statistics are not transferred by pg_upgrade.
       [filtered 4 lines of output]
```

Configure the new cluster settings and port.

pg-primary:`/var/lib/pgsql/15/data/postgresql.conf` **⇒** Configure PostgreSQL

```ini
archive_command = 'pgbackrest --stanza=demo archive-push %p'
archive_mode = on
log_filename = 'postgresql.log'
```

Update pgBackRest configuration on every system to use the new cluster.

pg-primary:`/etc/pgbackrest/pgbackrest.conf` **⇒** Upgrade the `pg1-path`

```ini
[demo]
pg1-path=/var/lib/pgsql/15/data
[global]
archive-async=y
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
spool-path=/var/spool/pgbackrest
tls-server-address=*
tls-server-auth=pgbackrest-client=demo
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
[global:archive-get]
process-max=2
[global:archive-push]
process-max=2
```

pg-standby:`/etc/pgbackrest/pgbackrest.conf` **⇒** Upgrade the `pg-path`

```ini
[demo]
pg1-path=/var/lib/pgsql/15/data
recovery-option=primary_conninfo=host=172.17.0.6 port=5432 user=replicator
[global]
archive-async=y
log-level-file=detail
repo1-host=repository
repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt
repo1-host-cert-file=/etc/pgbackrest/cert/client.crt
repo1-host-key-file=/etc/pgbackrest/cert/client.key
repo1-host-type=tls
spool-path=/var/spool/pgbackrest
tls-server-address=*
tls-server-auth=pgbackrest-client=demo
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
[global:archive-get]
process-max=2
[global:archive-push]
process-max=2
```

repository:`/etc/pgbackrest/pgbackrest.conf` **⇒** Upgrade `pg1-path` and `pg2-path`, disable backup from standby

```ini
[demo]
pg1-host=pg-primary
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/15/data
pg2-host=pg-standby
pg2-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg2-host-cert-file=/etc/pgbackrest/cert/client.crt
pg2-host-key-file=/etc/pgbackrest/cert/client.key
pg2-host-type=tls
pg2-path=/var/lib/pgsql/15/data
[demo-alt]
pg1-host=pg-alt
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
[global]
backup-standby=n
process-max=3
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
tls-server-address=*
tls-server-auth=pgbackrest-client=*
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```

pg-primary **⇒** Copy hba configuration

```bash
sudo cp /var/lib/pgsql/14/data/pg_hba.conf \
       /var/lib/pgsql/15/data/pg_hba.conf
```

Before starting the new cluster, run `stanza-upgrade`.

pg-primary **⇒** Upgrade the stanza

```bash
sudo -u postgres pgbackrest --stanza=demo --no-online \
       --log-level-console=info stanza-upgrade
```

```text
P00   INFO: stanza-upgrade command begin 2.59.2: --exec-id=7457-16565fb6 --log-level-console=info --log-level-file=detail --no-log-timestamp --no-online --pg1-path=/var/lib/pgsql/15/data --repo1-host=repository --repo1-host-ca-file=/etc/pgbackrest/cert/ca.crt --repo1-host-cert-file=/etc/pgbackrest/cert/client.crt --repo1-host-key-file=/etc/pgbackrest/cert/client.key --repo1-host-type=tls --stanza=demo
P00   INFO: stanza-upgrade for stanza 'demo' on repo1

P00   INFO: stanza-upgrade command end: completed successfully
```

Start the new cluster and verify the installation.

pg-primary **⇒** Start new cluster

```bash
sudo systemctl start postgresql-15.service
```

Test configuration with `check`.

pg-primary **⇒** Check configuration

```bash
sudo systemctl status postgresql-15.service
sudo -u postgres pgbackrest --stanza=demo check
```

Remove the old cluster.

pg-primary **⇒** Remove old cluster

```bash
sudo rm -rf /var/lib/pgsql/14/data
```

Install the new PostgreSQL binaries on the standby and create the cluster.

pg-standby **⇒** Remove old cluster and create the new cluster

```bash
sudo rm -rf /var/lib/pgsql/14/data
sudo -u postgres mkdir -p -m 700 /usr/pgsql-15/bin
```

Run `check` on the repository host. The standby is stopped, so expect a warning. This verifies that the repository knows about the standby and has correct primary configuration.

repository **⇒** Check configuration

```bash
sudo -u pgbackrest pgbackrest --stanza=demo check
```

```text
P00   WARN: unable to check pg2: [DbConnectError] raised from remote-0 tls protocol on 'pg-standby': unable to connect to 'dbname='postgres' port=5432': connection to server on socket "/run/postgresql/.s.PGSQL.5432" failed: No such file or directory
                Is the server running locally and accepting connections on that socket?
```

Take a full backup of the new cluster, then restore the standby from it. Requests for `incr` or `diff` automatically change to `full`.

repository **⇒** Run a full backup

```bash
sudo -u pgbackrest pgbackrest --stanza=demo --type=full backup
```

pg-standby **⇒** Restore the demo standby cluster

```bash
sudo -u postgres pgbackrest --stanza=demo --type=standby restore
```

pg-standby **⇒** Start PostgreSQL and check the pgBackRest configuration

```bash
sudo systemctl start postgresql-15.service
sudo -u postgres pgbackrest --stanza=demo check
```

After restoring the standby, enable standby backups again.

repository:`/etc/pgbackrest/pgbackrest.conf` **⇒** Re-enable backup from standby

```ini
[demo]
pg1-host=pg-primary
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/15/data
pg2-host=pg-standby
pg2-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg2-host-cert-file=/etc/pgbackrest/cert/client.crt
pg2-host-key-file=/etc/pgbackrest/cert/client.key
pg2-host-type=tls
pg2-path=/var/lib/pgsql/15/data
[demo-alt]
pg1-host=pg-alt
pg1-host-ca-file=/etc/pgbackrest/cert/ca.crt
pg1-host-cert-file=/etc/pgbackrest/cert/client.crt
pg1-host-key-file=/etc/pgbackrest/cert/client.key
pg1-host-type=tls
pg1-path=/var/lib/pgsql/14/data
[global]
backup-standby=y
process-max=3
repo1-path=/var/lib/pgbackrest
repo1-retention-full=2
start-fast=y
tls-server-address=*
tls-server-auth=pgbackrest-client=*
tls-server-ca-file=/etc/pgbackrest/cert/ca.crt
tls-server-cert-file=/etc/pgbackrest/cert/server.crt
tls-server-key-file=/etc/pgbackrest/cert/server.key
```
