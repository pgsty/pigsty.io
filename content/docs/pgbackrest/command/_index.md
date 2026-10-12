---
title: "Command Reference"
linkTitle: "Commands"
weight: 40
description: "pgBackRest command reference with all options for backup, restore, archive, and management operations."
icon: fa-solid fa-terminal
sidebar_expanded: true
module: [PGBACKREST]
categories: [Reference]
---

> Source: <https://pgbackrest.org/command.html>

## Introduction

Commands execute pgBackRest functions. Each command page lists every applicable option, including options shared with other commands. The lists also include options that you can set in `pgbackrest.conf`.

Use the `reset-` prefix on the command line to reset a non-boolean option from `pgbackrest.conf` to its default. For example, use this feature to restore a backup directly on a repository host. Normally, pgBackRest detects the remote database host and reports an error because remote restores are not supported. Add `--reset-pg1-host` to ignore the remote database host and restore locally. You might also need `--pg1-path` to select a path other than the database host path.

Use the `no-` prefix on the command line to set a boolean option to false.

To set an option through an environment variable, add the `PGBACKREST_` prefix. Convert the option name to uppercase and replace `-` with `_`. For example, `pg1-path` becomes `PGBACKREST_PG1_PATH`, and `stanza` becomes `PGBACKREST_STANZA`. Use configuration-file values for boolean options, such as `PGBACKREST_COMPRESS="n"`; `reset-*` variants are not permitted. For an option that accepts multiple values on the command line or in a configuration file, separate values with colons. For example, use `PGBACKREST_DB_INCLUDE="db1:db2"`.

Command-line options override environment options. Environment options override configuration-file options.

See [Configuration Introduction](/docs/pgbackrest/configuration/#introduction) for information about option types.

## Commands

| Command                                                          | Summary                                                                                 |
|------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| [**`annotate`**](/docs/pgbackrest/command/annotate/)             | Add, modify, or remove backup annotations after the backup is created.                  |
| [**`archive-get`**](/docs/pgbackrest/command/archive-get/)       | Fetch archived WAL segments for restore, PITR, or replica recovery.                     |
| [**`archive-push`**](/docs/pgbackrest/command/archive-push/)     | Accept WAL segments from PostgreSQL and push them to configured repositories.           |
| [**`backup`**](/docs/pgbackrest/command/backup/)                 | Create backups to the target repository (defaults to highest priority repository).      |
| [**`check`**](/docs/pgbackrest/command/check/)                   | Validate stanza backup/archive configuration and WAL archiving health.                  |
| [**`expire`**](/docs/pgbackrest/command/expire/)                 | Expire backups and archived WAL based on configured retention policies.                 |
| [**`help`**](/docs/pgbackrest/command/help/)                     | Show command and option help at general, command, or option level.                      |
| [**`info`**](/docs/pgbackrest/command/info/)                     | Display stanza and backup status/metadata in text or JSON format.                       |
| [**`repo-get`**](/docs/pgbackrest/command/repo-get/)             | Read repository files (like `cat`) for administration, investigation, and testing.      |
| [**`repo-ls`**](/docs/pgbackrest/command/repo-ls/)               | List repository files/paths (like `ls`) for administration, investigation, and testing. |
| [**`restore`**](/docs/pgbackrest/command/restore/)               | Restore from backup (latest by default) with optional point-in-time recovery.           |
| [**`server`**](/docs/pgbackrest/command/server/)                 | Run the pgBackRest TLS server for remote host access without SSH.                       |
| [**`server-ping`**](/docs/pgbackrest/command/server-ping/)       | Ping a pgBackRest TLS server to verify it is accepting connections.                     |
| [**`stanza-create`**](/docs/pgbackrest/command/stanza-create/)   | Create stanza metadata in all configured repositories.                                  |
| [**`stanza-delete`**](/docs/pgbackrest/command/stanza-delete/)   | Permanently remove all backups and archives for a stanza.                               |
| [**`stanza-upgrade`**](/docs/pgbackrest/command/stanza-upgrade/) | Upgrade stanza metadata after a PostgreSQL major version upgrade.                       |
| [**`start`**](/docs/pgbackrest/command/start/)                   | Re-allow pgBackRest processes to run after a previous `stop`.                           |
| [**`stop`**](/docs/pgbackrest/command/stop/)                     | Prevent new pgBackRest processes and optionally force-stop running ones.                |
| [**`verify`**](/docs/pgbackrest/command/verify/)                 | Verify that backup and archive data in the repository is valid.                         |
| [**`version`**](/docs/pgbackrest/command/version/)               | Display the installed pgBackRest version.                                               |
{.full-width}
