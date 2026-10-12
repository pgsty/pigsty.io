---
title: "pig patroni"
description: "Run patronictl transparently, with Pigsty service, config, and log helpers"
weight: 170
icon: fas fa-infinity
module: [PIG]
categories: [Reference]
---

From v1.6.0, `pig patroni` (alias `pig pt`) is a **transparent launcher** for the installed `patronictl` binary.
Pig selects the configuration file and implements a few local helpers.
It **forwards every other command and its arguments unchanged** to `patronictl`.
Native flags, prompts, output, and exit codes are preserved. New patronictl features work without a pig update.

```bash
pig pt transparently launches the installed patronictl binary.

Pig only owns config-file selection and these local helpers:
  pig pt set KEY=VALUE...       update PostgreSQL or scalar Patroni settings
  pig pt start|stop             manage the local patroni service
  pig pt service <action>       start, stop, restart, reload, or show service
  pig pt status                 show local and cluster status
  pig pt log ...                view local Patroni logs

Every other command and all arguments after it are passed unchanged to
patronictl. Use "pig pt -- COMMAND ..." to bypass a local-name collision.
```

The first command token after any options selects how pig runs the command:

- `set`, `start`/`up`, `stop`/`dn`, `service`/`svc`, `status`/`st`, and `log`/`l` use pig's local implementation.
- **Every other token** and all following arguments pass unchanged to `patronictl`. Examples include `list`, `restart`, `reload`, `reinit`, `switchover`, `failover`, `pause`, `resume`, `show-config`, `edit-config`, `query`, `history`, `topology`, `dsn`, and `version`.
- Use `pig pt -- <command> ...` to bypass a conflicting local name. For example, `pig pt -- set` passes `set` to patronictl.
- Without a command, `pig pt` prints pig's help and does not run patronictl. Use `pig pt <command> --help` for native subcommand help. Use `pig pt -- --help` for patronictl root help.


## Command Overview

**Forwarded commands** (native `patronictl`):

| Example                                        | Description                                       |
|:-----------------------------------------------|:--------------------------------------------------|
| `pig pt list [CLUSTER]`                        | List cluster members (native output, `--format json`) |
| `pig pt restart CLUSTER [MEMBER]`              | Restart PostgreSQL of a cluster / member (native prompt) |
| `pig pt reload CLUSTER`                        | Reload PostgreSQL configuration                   |
| `pig pt reinit CLUSTER MEMBER`                 | Reinitialize a member (resync from primary)       |
| `pig pt switchover CLUSTER [--candidate X]`    | Planned switchover                                |
| `pig pt failover CLUSTER --candidate MEMBER`   | Manual failover (**positional arg is the cluster**) |
| `pig pt pause / resume CLUSTER`                | Enter / leave maintenance mode                    |
| `pig pt show-config / edit-config`             | Show / edit cluster dynamic configuration         |
| `pig pt query -c 'select 1'`                   | Native query (`-c` here is query's own SQL option) |
{.full-width}

Forwarded positional arguments use patronictl's **cluster-first** order.
Patronictl controls prompts, output formats, and exit codes, including Click usage-error code `2`.

**Local commands** (implemented by pig):

| Command      | Alias | Description                                          |
|:-------------|:------|:-----------------------------------------------------|
| `pt set`     |       | Update PostgreSQL params or scalar Patroni settings  |
| `pt status`  | `st`  | Combined status: systemd + processes + cluster       |
| `pt service` | `svc` | Manage the local patroni systemd service             |
| `pt start`   | `up`  | Hidden shortcut for `pt svc start`                   |
| `pt stop`    | `dn`  | Hidden shortcut for `pt svc stop`                    |
| `pt log`     | `l`   | View local Patroni logs (show / tail / grep)         |
{.full-width}

Top-level `pt restart` forwards to `patronictl restart`, which restarts PostgreSQL.
To restart the Patroni daemon, use `pt svc restart`.


## Quick Start

```bash
# Cluster operations (native passthrough, cluster-first)
pig pt list pg-meta                         # list cluster members
pig pt list pg-meta --format json           # native JSON output
pig pt restart pg-test --pending            # apply pending restarts
pig pt restart pg-test pg-test-1            # restart a specific member
pig pt switchover pg-test --candidate pg-2  # planned switchover
pig pt failover pg-test --candidate pg-2    # manual failover
pig pt pause pg-test                        # enter maintenance mode
pig pt show-config pg-test                  # show dynamic configuration

# Configuration sugar (local, one edit-config call)
pig pt set ttl=60                           # scalar Patroni key → --set
pig pt set max_connections=200              # PostgreSQL parameter → --pg
pig pt set ttl=60 max_connections=200 -y    # mixed change, skip confirmation
pig pt set shared_buffers=4GB --plan        # preview the translated native command

# Service and logs (local)
pig pt status                               # combined status
pig pt svc restart                          # restart the patroni daemon
pig pt log -f                               # follow logs
pig pt log grep ERROR                       # search logs
```


## Pig/PT Options

Put these wrapper options **before the native command**.
After that command token, all remaining tokens belong to patronictl:

| Option          | Short | Description                                                  |
|:----------------|:------|:-------------------------------------------------------------|
| `--config-file` | `-c`  | Explicit Patroni/patronictl configuration file               |
| `--dbsu`        |       | OS user used to execute patronictl (default `$PIG_DBSU` or `postgres`) |
| `--dcs-url`     | `-d`  | Override the Patroni DCS URL (`--dcs` is an alias)           |
| `--insecure`    | `-k`  | Allow TLS without certificate verification                   |
{.full-width}

```bash
pig pt -c /path/patroni.yml list pg-meta   # wrapper-level -c: config file
pig pt query -c 'select 1'                 # native query's -c: SQL, not stolen by pig
```

> Since v1.6.0, `--dbsu` no longer has the `-U` shorthand (the `pg` / `pb` commands keep it).


## Config-File Resolution

Each patronictl call that uses configuration receives exactly one root `-c <path>` selected by pig.
Pig selects the path in this order:

1. explicit `-c/--config-file` given before the command;
2. non-empty `PATRONICTL_CONFIG_FILE` environment variable;
3. `/etc/patroni/patroni.yml` (exists and readable as the DBSU);
4. `/infra/conf/patronictl.yml` (exists and readable as the DBSU);
5. fallback to `/etc/patroni/patroni.yml`, so patronictl's error names the conventional path.

Explicit paths and environment paths are authoritative.
If they are missing or unreadable, pig does not substitute another path.
Pig converts relative paths to absolute paths before it switches the OS user.
It tests conventional paths for readability as the **resolved DBSU**, rather than checking mode bits alone.
Configuration is resolved only when needed. Systemd-only commands, such as `pt svc start`, do not check configuration.
Native `-h/--help` also works without configured Patroni because it bypasses configuration resolution.


## Transparent Execution and Output Modes

Forwarded commands inherit stdin, stdout, stderr, and the terminal directly.
This preserves native prompts, the `edit-config` editor, `--watch` streaming, and exit codes.
Pig does not capture output, duplicate errors, or retry commands.
It does not read cluster or DCS state before or after execution.
The logical call is:

```text
patronictl -c <selected-config> [--dcs-url URL] [--insecure] <native argv...>
```

**Structured output**: forwarded commands support only pig's `text` mode.
Pig rejects `-o json` / `-o yaml` before the native command and directs you to patronictl's output options.
Arguments after the native command pass unchanged to patronictl, which validates them:

```bash
pig -o json pt list          # rejected: use native output options
pig pt -o json list          # rejected: use native output options
pig pt list --format json    # forwarded: native patronictl JSON
pig pt list -o json          # forwarded unchanged; patronictl validates it
```

Local commands (`set` / `status` / `log` / `service`) keep pig's structured output behavior.


## pig pt set

Use the local `pt set` helper to change configuration for the cluster selected by the resolved configuration:

```bash
pig pt set KEY=VALUE [KEY=VALUE ...] [--yes] [--plan]
```

**Key classification**:

- These scalar Patroni dynamic keys become native `--set` arguments: `loop_wait`, `ttl`, `retry_timeout`, `primary_race_backoff`, `maximum_lag_on_failover`, `maximum_lag_on_syncnode`, `max_timelines_history`, `primary_start_timeout`, `primary_stop_timeout`, `synchronous_mode`, `synchronous_mode_strict`, `synchronous_node_count`, `failsafe_mode`, `check_timeline`, and `member_slots_ttl`. The `pause` key is excluded. Use native `pause`/`resume`.
- Every other key becomes a PostgreSQL parameter through native `--pg`. This includes custom dotted GUCs such as `timescaledb.telemetry_level`.
- Pig **rejects** structural keys that start with `postgresql.`, `standby_cluster.`, `slots.`, or `ignore_slots.`. Use native `pig pt edit-config --set` for these keys.

Pig combines all pairs in input order into **one** native `edit-config` call.
This produces one diff, one confirmation, and one DCS update:

```bash
pig pt set ttl=60 max_connections=200 synchronous_mode=on
# equivalent: patronictl -c <selected> edit-config --set ttl=60 --pg max_connections=200 --set synchronous_mode=on
```

- `--yes/-y` appends native `--force` to skip confirmation. Otherwise, patronictl shows the diff and controls confirmation.
- `--plan` shows the selected configuration and translated native command without making changes. **Plans can contain sensitive values**.
- Structured output mode requires explicit `--yes` to run the command. It does not allow hidden prompts.
- Values use YAML parsing. Both `KEY=null` and `KEY=` remove a key and pass unchanged to patronictl.
- After a PostgreSQL parameter change that requires restart, pig suggests `pig pt list`, then `pig pt restart CLUSTER --pending`. You must specify the cluster.


## Service Management

`pt service` (alias `pt svc`) manages the local `patroni` systemd unit:

| Command              | Alias       | Description                 |
|:---------------------|:------------|:----------------------------|
| `pt service start`   | `pt svc up` | Start the Patroni service   |
| `pt service stop`    | `pt svc dn` | Stop the Patroni service    |
| `pt service restart` | `pt svc rs` | Restart the Patroni service |
| `pt service reload`  | `pt svc rl` | Reload the Patroni service  |
| `pt service status`  | `pt svc st` | Show service status         |
{.full-width}

Top-level `pt start` / `pt stop`, with aliases `up` / `dn`, are hidden shortcuts to the same local implementation.
Depending on Patroni configuration, stopping Patroni can also stop PostgreSQL on this node.

### pt status

Show the systemd service state, Patroni process information, and cluster members from patronictl.

```bash
pig pt status
pig pt st -o json                # structured output
```

### pt log

View local Patroni logs.
The command uses `log.dir` from the selected configuration, or `/pg/log/patroni` as a fallback.
Use `--log-dir` to specify a directory explicitly.
Only `pt log` and `pt log show` support a JSONL snapshot with `-o json`.
Follow, tail, and grep use terminal streams without structured output.

```bash
pig pt log                     # show last 50 lines
pig pt log -f                  # follow log output
pig pt log -n 100              # show last 100 lines
pig pt log show -o json        # JSONL snapshot
pig pt log tail -n 100         # follow logs
pig pt log grep ERROR          # search logs
```

| Subcommand | Aliases        | Description               |
|:-----------|:---------------|:--------------------------|
| `show`     | `cat, c, s`    | Print recent Patroni logs |
| `tail`     | `t, f, follow` | Follow Patroni logs       |
| `grep`     | `g, search`    | Search Patroni logs       |
{.full-width}

| Option      | Short | Default | Description           |
|:------------|:------|:--------|:----------------------|
| `--follow`  | `-f`  | false   | Follow log output     |
| `--lines`   | `-n`  | 50      | Number of lines shown |
| `--log-dir` |       | auto    | Log directory         |
{.full-width}


## Migrating from v1.5.x

The v1.6.0 forwarding changes **break compatibility**. Review automation before upgrading:

| v1.5.x usage                           | v1.6.0 usage                                                |
|:---------------------------------------|:------------------------------------------------------------|
| `pig pt failover <candidate>`          | ⚠ `pig pt failover CLUSTER --candidate MEMBER` (the positional is now the **cluster**) |
| `pig pt restart [member]` (auto scope) | `pig pt restart CLUSTER [MEMBER]` (explicit cluster)        |
| `pig pt list -o json`                  | `pig pt list --format json` (native JSON, different schema) |
| `pig pt config show`                   | `pig pt show-config`                                        |
| `pig pt config edit`                   | `pig pt edit-config`                                        |
| `pig pt config set K=V` / `pg K=V`     | `pig pt set K=V`                                            |
| `pig pt restart -y` (pig gate)         | native patronictl confirmation; `pt set -y` still works     |
| `pig pt list -W` / `-w 5`              | native `pig pt list --watch` (patronictl semantics)         |
| aliases `ls/rs/rl/ri/so/fo/p/r/c`      | removed — use full native command names                     |
| `--dbsu -U`                            | `--dbsu` (`-U` shorthand removed)                           |
{.full-width}

Forwarded commands return native patronictl exit codes. Usage errors return `2`.
Pig no longer checks the pause guard before switchover or failover. Patroni controls maintenance-mode behavior.


## Design Notes

**Single authority**: cluster control uses the installed `patronictl` and one selected configuration through the Patroni REST API / DCS.
Pig has no embedded DCS client, REST control engine, or list of patronictl commands.
For forwarded commands, it adds no confirmation, preflight checks, retries, or output changes.

**Privilege handling** (unchanged from v1.5.x):

- if the current user is already the DBSU: execute directly;
- if the current user is root: execute via `su - postgres -c "..."`;
- otherwise: execute via `sudo -inu postgres -- ...`.

**Platform**: designed for Linux.
Service management requires `systemctl`. Log helpers require readable Patroni log files.
