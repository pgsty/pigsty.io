---
title: "Mount Remote Directory Locally"
linkTitle: "Local Mount"
weight: 8000
description: "Want to sync across multiple devices? Piglet supports mounting cloud directories locally, access your AI coding sandbox anytime, anywhere!"
icon: fas fa-piggy-bank
draft: true
module: [PIGLET]
---


## Verify Connectivity

To mount a remote Piglet sandbox directory locally, first verify database access. Connect to the PostgreSQL database on the sandbox with its URL:

```bash
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
```

If you are running Pigsty in a container (`cd docker/; make launch`), use `make pass` to print the `dbuser_meta` password:

```bash
psql postgres://dbuser_meta:X3f8aVbTChqPppgzn0fbaDpy@127.0.0.1:5432/meta
```

Make sure the connection succeeds.


--------

## Local Mount

Local mounting requires JuiceFS. On macOS, install it with Homebrew:

```bash
brew install juicefs
```

Use `juicefs mount` to mount the remote directory locally. Specify the database URL and the mount point as its two arguments. Add `-d` for background (daemon) mode:

```bash
juicefs mount "postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta" ~/work -d
```

On macOS, JuiceFS uses [MacFUSE](https://macfuse.github.io/) as the default filesystem driver.
