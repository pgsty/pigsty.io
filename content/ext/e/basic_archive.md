---
title: "basic_archive"
linkTitle: "basic_archive"
description: "an example of an archive module"
weight: 5940
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/basic-archive.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/basic-archive.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/basic-archive.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`basic_archive`**](/ext/e/basic_archive) | `-` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5940  | [**`basic_archive`**](/ext/e/basic_archive) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`basebackup_to_shell`](/ext/e/basebackup_to_shell) [`pg_walinspect`](/ext/e/pg_walinspect) [`pg_repack`](/ext/e/pg_repack) [`pg_rewrite`](/ext/e/pg_rewrite) [`pg_squeeze`](/ext/e/pg_squeeze) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`pgfincore`](/ext/e/pgfincore) [`pg_cooldown`](/ext/e/pg_cooldown) |
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

> [basic_archive: an example of an archive module](https://www.postgresql.org/docs/current/basic-archive.html)

The `basic_archive` module is a WAL archive module that copies completed WAL segment files to a specified directory. It serves as a reference implementation for custom archive modules.

### Configuration

Add to `postgresql.conf`:

```ini
archive_mode = 'on'
archive_library = 'basic_archive'
basic_archive.archive_directory = '/path/to/archive/directory'
```

### Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `basic_archive.archive_directory` | string | Directory to copy WAL files to (must already exist) |

If `archive_mode` is enabled but `basic_archive.archive_directory` is empty (default), the server will accumulate WAL files until a directory path is configured.

### Notes

- The target directory must be created before use; the module will not create it
- After a server crash, temporary files with the `archtemp` prefix may be left in the archive directory and should be deleted before restarting
- These temporary files can also be safely removed while the server is running, provided they are not related to an ongoing archive operation
- This module is primarily intended as a simple example and starting point for developing custom archive modules
