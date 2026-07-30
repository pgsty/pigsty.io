---
title: "basebackup_to_shell"
linkTitle: "basebackup_to_shell"
description: "adds a custom basebackup target called shell"
weight: 5950
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/basebackup-to-shell.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/basebackup-to-shell.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/basebackup-to-shell.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`basebackup_to_shell`**](/ext/e/basebackup_to_shell) | `-` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5950  | [**`basebackup_to_shell`**](/ext/e/basebackup_to_shell) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`basic_archive`](/ext/e/basic_archive) [`aws_s3`](/ext/e/aws_s3) [`external_file`](/ext/e/external_file) [`file_fdw`](/ext/e/file_fdw) [`repmgr`](/ext/e/repmgr) [`pg_parquet`](/ext/e/pg_parquet) [`pg_bulkload`](/ext/e/pg_bulkload) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--miss">✗</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL





## Usage

> [basebackup_to_shell: adds a custom basebackup target called shell](https://www.postgresql.org/docs/current/basebackup-to-shell.html)

The `basebackup_to_shell` module adds a custom `shell` backup target to `pg_basebackup`, allowing administrators to pipe backup archives through arbitrary shell commands.

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'basebackup_to_shell'

# Command to execute for each archive; receives archive data on stdin
basebackup_to_shell.command = 'gzip > /backup/%f.gz'

# Optional: restrict usage to a specific role
basebackup_to_shell.required_role = 'backup_admin'
```

### Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `basebackup_to_shell.command` | string | Shell command to execute; receives archive on stdin |
| `basebackup_to_shell.required_role` | string | Role required to use the shell target (empty = any replication user) |

### Command Placeholders

| Placeholder | Replaced With |
|-------------|---------------|
| `%f` | Archive filename (e.g., `base.tar`) |
| `%d` | User-provided target detail string |
| `%%` | Literal `%` |

### Examples

```bash
# Compress backups to a local directory
# postgresql.conf: basebackup_to_shell.command = 'gzip > /backup/%f.gz'
pg_basebackup --target=shell

# Upload to S3 with a detail parameter
# postgresql.conf: basebackup_to_shell.command = 'aws s3 cp - s3://bucket/%d/%f'
pg_basebackup --target=shell:myprefix

# Custom processing pipeline
# postgresql.conf: basebackup_to_shell.command = 'zstd | ssh backup-host "cat > /backup/%f.zst"'
pg_basebackup --target=shell
```

The `%d` placeholder requires a target detail to be provided via `--target=shell:DETAIL`. If `%d` is not in the command, providing a detail is prohibited. Detail strings may only contain alphanumeric characters.
