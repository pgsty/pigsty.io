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

To mount a remote Piglet sandbox directory locally, you need to be able to access the PostgreSQL database on the sandbox via URL:

```bash
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
```

If you are running Pigsty in a container (`cd docker/; make launch`), use `make pass` to print the `dbuser_meta` password:

```bash
psql postgres://dbuser_meta:X3f8aVbTChqPppgzn0fbaDpy@127.0.0.1:5432/meta
```

Just make sure you can connect successfully.


--------

## Local Mount

Local mounting requires JuiceFS. On macOS, you can simply install it with Homebrew:

```bash
brew install juicefs
```

Then use the `juicefs mount` command to mount the remote directory locally. The two arguments are the database URL and the mount point, with `-d` for background (daemon) mode:

```bash
juicefs mount "postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta" ~/work -d
```

Note that JuiceFS on macOS uses [MacFUSE](https://macfuse.github.io/) as the underlying filesystem driver by default.
