---
title: "pig inventory"
description: "Inspect, edit, validate, check, and exchange the Pigsty Inventory"
weight: 155
icon: fas fa-list-check
module: [PIG]
categories: [Reference]
---

The `pig inventory` command group was added in v1.6.0. Its alias is `pig inv`.
Use it to inspect, edit, validate, and check readiness of the Pigsty inventory (`pigsty.yml`) **without loss** of source formatting.
The experimental `cmdb` subcommands exchange inventory data with the PostgreSQL CMDB.

The engine preserves YAML comments, formatting, key order, anchors, and line endings byte-for-byte.
Before writing, `edit` parses the entire document again. It writes atomically, so **invalid YAML cannot reach disk**.

```bash
Inspect, edit, validate, check, and exchange Pigsty Inventory

Usage:
  pig inventory [command]

Aliases:
  inventory, inv

Available Commands:
  check       Check Inventory, controller, and opt-in target readiness
  cmdb        Exchange Inventory with Pigsty's existing PostgreSQL CMDB (experimental)
  diff        Compare declarations without emitting Inventory values
  edit        Edit Inventory or one selected YAML fragment
  list        List ordered Inventory topology and value kinds
  show        Show verbatim Inventory YAML (may contain secrets)
  status      Inspect the active Inventory source without executing it
  validate    Validate one complete static Pigsty Inventory
```

| Command        | Alias | Description                                             |
|:---------------|:------|:--------------------------------------------------------|
| `inv status`   |       | Inspect the active inventory source (without executing) |
| `inv list`     | `ls`  | List inventory topology and value kinds (`--depth`)     |
| `inv show`     |       | Show verbatim inventory YAML (**may contain secrets**)  |
| `inv edit`     | `e`   | Edit the inventory or one fragment in `$EDITOR`         |
| `inv validate` | `v`   | Validate one complete static Pigsty inventory           |
| `inv check`    | `ck`  | Check inventory, controller, and target readiness       |
| `inv diff`     |       | Compare declarations of two inventories (value-free)    |
| `inv cmdb`     |       | Exchange with the PostgreSQL CMDB (**experimental**)    |
{.full-width}

Pig resolves the inventory path from the global `-i/--inventory` flag or the Pigsty home directory.
All commands support structured output with `-o json|yaml`.


## Quick Start

```bash
pig inventory status                     # which inventory source is active?
pig inventory list                       # browse the inventory topology
pig inventory edit pg-meta               # edit only the pg-meta cluster fragment
pig inventory validate                   # full validation
pig inventory check -p ssh --sudo        # add SSH/sudo readiness probes
pig inventory diff /path/other.yml       # compare declarations with another file
```


## Selectors

`list` / `show` / `edit` accept an optional **selector** that addresses one fragment:

```bash
pig inv e                                # the whole inventory
pig inv e vars                           # all.vars global parameters
pig inv e pg-meta                        # one cluster group
pig inv e pg-meta.vars.pg_databases      # a nested key path
pig inv e 'pg-meta.hosts["10.10.10.10"]' # dotted keys (e.g. IPs) via quoted brackets
```


## inv edit

Open the selected fragment in `$EDITOR`.
After you save and exit, pig restores the indentation and newline style.
It then **parses the entire document again**. If parsing fails, it stops and keeps the temporary file.
Before writing atomically, it checks that another process has not changed the file on disk.

```bash
pig inventory edit                       # edit the whole inventory
pig inv e pg-meta                        # edit one fragment
pig inv e vars --from vars.yml           # replace the fragment from a file (or stdin: -)
```

| Option   | Description                                                        |
|:---------|:-------------------------------------------------------------------|
| `--from` | Replace the selected fragment from a regular file or stdin (`-`), skipping the editor |
{.full-width}

> **Note**: after a successful edit, pig sets the inventory file mode to `0600` if needed.
> The file can contain database passwords and other secrets.
> The result reports this change in `mode_tightened`.
> If other users or tools read the file directly, adjust its permissions or ownership.


## inv validate

Validate one complete static Pigsty inventory.
The command checks YAML structure, Ansible conventions, and Pigsty rules in sequence.
Pigsty checks include `admin_ip`, the `infra` group, and IPv4 host keys.
Diagnostics do not show sensitive values.

```bash
pig inventory validate                   # validate the active inventory
pig inv v ./pigsty.yml                   # validate a specific file
pig inv v --strict                       # treat warnings as failures
pig inv v --ansible                      # cross-check with ansible-inventory
pig inv v --strict -o json               # structured output (CI-friendly)
```

| Option      | Description                                                |
|:------------|:-----------------------------------------------------------|
| `--strict`  | Treat validation warnings as failures                      |
| `--ansible` | Also parse with a bounded `ansible-inventory` adapter      |
| `--timeout` | Timeout for `--ansible` compatibility validation (default 10s) |
{.full-width}

> `validate` checks **Pigsty semantics**, rather than general Ansible lint rules.
> Its rules follow Pigsty's `bin/validate`, with stricter checks in a few places.
> Parsing rejects **duplicate keys** and **multi-document YAML**.
> You cannot use those files with `show` / `edit` either.


## inv check

Run readiness checks in addition to static validation.
By default, the command checks only the inventory and local controller.
Use `--profile` to add probes.

```bash
pig inventory check                      # inventory + controller basics
pig inv ck -p ansible                    # add ansible environment checks
pig inv ck -p network                    # add network reachability probes
pig inv ck -p ssh --user admin           # add SSH login probes
pig inv ck -p ssh --sudo                 # SSH probes plus sudo -n validation
```

| Option      | Short | Description                                    |
|:------------|:------|:-----------------------------------------------|
| `--profile` | `-p`  | Additional probes: `ansible` / `network` / `ssh` |
| `--user`    |       | Explicit SSH user (defaults to the controller user) |
| `--port`    |       | TCP/SSH target port (default 22)               |
| `--sudo`    |       | With the ssh profile, also observe `sudo -n true` |
{.full-width}


## inv cmdb (experimental)

> **Experimental**: interfaces and behavior may change.

`pig inventory cmdb` exchanges the inventory with Pigsty's existing CMDB through a native PostgreSQL driver.
The CMDB uses `files/cmdb.sql` and the `pigsty` / `pglog` schemas.
Connection selection uses `-d/--database` first, then `METADB_URL`, then `service=meta`.
The flag accepts a database name, URI, or libpq conninfo.

| Subcommand | Description                                                            |
|:-----------|:-----------------------------------------------------------------------|
| `check`    | Read-only: verify CMDB projections, optionally against the static inventory |
| `init`     | Apply the `cmdb.sql` baseline (`--yes` required over existing schemas; `--plan` preview) |
| `load`     | **Replace all** CMDB declaration rows from the static inventory (single transaction; `--yes`; `--plan`/`--strict`) |
| `dump`     | Export the CMDB as a static inventory file (`--force` to overwrite a differing target) |
| `enable`   | Guarded switch of the `ansible.cfg` inventory to the CMDB (`inventory.sh`) |
| `disable`  | Switch back to the static `pigsty.yml` (both support `--plan`; atomic, rollback-safe writes) |
{.full-width}

```bash
pig inventory cmdb check                 # verify CMDB state
pig inventory cmdb init --plan           # preview the init plan
pig inventory cmdb load -y               # load the static inventory into the CMDB
pig inventory cmdb dump -f pigsty.yml    # export the CMDB as a static inventory
pig inventory cmdb enable                # switch the ansible inventory source to the CMDB
pig inventory cmdb disable               # switch back to the static pigsty.yml
```

> **Note**: `init` applies `cmdb.sql` directly. It does **not** back up an existing CMDB.
> Back up real data before you run it. The `load` command replaces all declaration rows.
> Destructive operations require confirmation of the target fingerprint.
> Structured output mode requires an explicit `--yes`.
