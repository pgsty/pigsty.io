---
title: "Release notes"
weight: 190
icon: fa-solid fa-scroll
description: "Chronological Patroni release notes and change history."
module: [PATRONI]
categories: [Reference]
---

> Source: https://patroni.readthedocs.io/en/latest/releases.html

<a id="releases"></a>

--------

## Version 4.1.5

Released 2026-08-12

**Compatibility improvements**

- Compatibility with PostgreSQL 14.24, 15.19, 16.15, 17.11, 18.6 (Alexander Kukushkin)

  Add the new `output_plugin_libraries` GUC, which restricts logical decoding output plugins.

**Improvements**

- Log REST API connection resets at `DEBUG` instead of `WARNING` (Kyle McLaren)

  Ensure the common "client went away mid-write" variants are silenced without affecting the handling of genuine (non-connection) errors.

**Bugfixes**

- Fix `thread_stack_size` validation alignment (Sundong Kim)

  Changed `aligned` from `65535` to `65536` in the `thread_stack_size` schema. Previously, `patroni --validate-config` rejected almost all realistic values, including the daemon default `524288`.

- Allow validation of `synchronous_mode` to accept `'quorum'` and boolean-like strings (Eray Araz)

  `patroni --validate-config` previously rejected `synchronous_mode` values such as `quorum` and the PostgreSQL-style boolean strings that are accepted at runtime.

## Version 4.1.4

Released 2026-07-07

**Bugfixes**

- Check `NOTIFY_SOCKET` environment variable before using `systemd` package (Polina Bungina)

  Import and use the package only when `NOTIFY_SOCKET` is set. This avoids `FileNotFoundError: [Errno 2] No such file or directory`.

- Unify `pg_replication_slots` query (Polina Bungina)

  Incorrect handling of the `failover` and `synced` values was resulting in `KeyError` exceptions during removal of the incorrect logical replication slots.

- Consider version-specific authentication parameters in configuration generation (Polina Bungina)

  `patroni --generate-config` now removes authentication parameters that do not apply to the connected PostgreSQL version. These parameters could be inherited accidentally from the environment.

- Handle `pg_rewind` while a PostgreSQL instance is starting as a standby (Alexander Kukushkin)

  Fallback to `pg_controldata` information when a PostgreSQL instance is running but is not yet accepting connections.

- Fix Prometheus metric type for `patroni_postgres_timeline` (Huseyin Demir)

  Changed `patroni_postgres_timeline` from `counter` to `gauge`. The value can decrease, for example to 0 when PostgreSQL stops.

- Don't stop watchdog until client backends are fully stopped (Alexander Kukushkin)

  If `primary_stop_timeout` was below the minimum watchdog timeout and expired, Patroni disabled the watchdog before all client backends exited.

- Handle statement timeout error for monitoring query (Alexander Kukushkin)

  After a statement timeout, use the cached role to avoid primary demotion. Force `pg_stat_statements.track` to `none` for monitoring queries to avoid expensive `pg_stat_statements` garbage collection.

- Drop Patroni-managed replication slots with `wal_status=lost` (Alexander Kukushkin)

  Replication slots with `wal_status=lost` are no longer usable. Patroni will now drop such slots and recreate them if needed.

- Fix role representation in patronictl member validation error (Polina Bungina)

  Ensures the correct string representation is used within the exception message, preventing errors from being formatted like `Error: No CtlPostgresqlRole.REPLICA among provided members`.

## Version 4.1.3

Released 2026-05-05

**Stability improvements**

- Properly handle mislabeled Etcd error (Ants Aasma)

  Current Etcd versions raise `Unknown` error when Etcd leader is lost while updating the lease. Patroni will now override the reported error code to `Unavailable`.

**Bugfixes**

- Use binary version when `PG_VERSION` file does not exist (Polina Bungina)

  Custom bootstrap and other cases may have no `PG_VERSION` file. Patroni treated the version as 0.0, which broke version-specific logic. It now tries to read the binary version.

- Refactor logger initialization to avoid missing early log messages (Alexander Kukushkin)

  Create `PatroniLogger` before loading `Config` to capture early log messages.

- Include `MONOTONIC_USEC` in `RELOADING=1` systemd notification (Alexander Kukushkin)

  systemd 257+ requires `MONOTONIC_USEC` alongside `RELOADING=1` for `Type=notify-reload` services. Without it, `systemctl reload` hangs indefinitely.

**Improvements**

- Skip single-user crash recovery when `backup_label` exists (Vadim Ponomarev)

  For replicas restored from external backup without a custom bootstrap method, skip single-user crash recovery. Let PostgreSQL recover during normal startup.

- Warn when running under `systemd` without `python-systemd` package (Alexander Kukushkin)

  Check `NOTIFY_SOCKET` before warning about a missing `python-systemd` package. Warn only when actually running under `systemd`, instead of always logging "systemd integration is not supported" at startup.

## Version 4.1.2

Released 2026-04-21

**Systemd support improvements**

- Add support for `notify-reload` systemd unit type (Ronan Dunklau)

  Allows `systemctl reload` to wait until Patroni has actually processed the configuration reload by sending `RELOADING=1` and `READY=1` notifications to systemd.

- Send `STOPPING=1` notification to systemd on shutdown (Alexander Kukushkin)

  Patroni now properly notifies systemd that it is shutting down, following the systemd notify protocol.

- Do not let PostgreSQL to notify systemd (Alexander Kukushkin)

  Removed `NotifyAccess=all` from the example unit. Filter `NOTIFY_SOCKET` when starting PostgreSQL so it cannot send `READY=1` or `STOPPING=1`. Existing PostgreSQL processes may already have `NOTIFY_SOCKET` when Patroni takes control. During their shutdown, reassert `READY=1` to counteract `STOPPING=1`.

## Version 4.1.1

Released 2026-04-08

**Stability improvements**

- Compatibility with threading changes in python 3.11+ (Alexander Kukushkin)

  Avoid starting/stopping threads at runtime. Introduce thread pools for REST API and for executing async tasks. Allow configuring global `thread_pool_size` and `restapi.thread_pool_size`.

- Compatibility with python 3.14 (Alexander Kukushkin)

  Run tests against python 3.14 and fix compatibility issues.

- Compatibility with Etcd security fixes in v3.6.9, v3.5.28, and v3.4.42 (Alexander Kukushkin)

  These Etcd security releases require authentication for topology reads and lease keepalive. Patroni now authenticates both operations. It also reauthenticates after authentication failures and retries requests.

- Improvements for Etcd3 error handling (Alexander Kukushkin)

  Handle broken JSON responses, be flexible in how JSON error is parsed, and improve reporting for etcd internal errors.

**Bugfixes**

- Retry leader update on temporary Kubernetes `403` error (Sophia Ruan, Alexander Kukushkin)

  After a temporary Kubernetes `403 Permission Denied`, Patroni checks whether the node still holds leadership. It retries leader updates within `retry_timeout` instead of immediately demoting. Temporary RBAC failures are one possible cause.

- Fix issue with renaming leader node in sync mode and pause (Alexander Kukushkin)

  `/sync` key wasn't updated after renaming the leader node with Patroni restart in pause (without Postgres restart). It prevented Patroni from promoting after the next restart without pause.

- Trigger `pg_rewind` check when the same primary increased timeline (Alexander Kukushkin)

  Single-user crash recovery followed by promotion after leader lock acquisition can increase the same primary's timeline. Other replicas may be isolated from the DCS during this sequence. They did not trigger the `pg_rewind` state machine because the leader and `primary_conninfo` were unchanged.

- Only write superuser password during `initdb` bootstrap if it is non-empty (Michael Banck)

  Writing an empty password during `initdb` bootstrap was causing issues.

- Fix bug with `failover_priority` with `synchronous_mode=on` (Alexander Kukushkin)

  `tag.failover_priority` values were ignored when `synchronous_node_count > 1`.

- Fix bug with `primary_conninfo` password comparison (Alexander Kukushkin)

  Since PostgreSQL 10, Patroni uses a passfile in `primary_conninfo`. It failed to update that file after a YAML replication password change and reload.

- Don't restart replica with `nofailover` tag in pause mode (Alexander Kukushkin)

  Patroni used to start a manually shut down PostgreSQL replica in pause mode when it had `nofailover` tag set to `true`.

- Fix `check_recovery_conf()` when PostgreSQL is in the starting state (Alexander Kukushkin)

  PostgreSQL v12 and later cannot answer `pg_settings` queries before accepting connections. Patroni now records missing recovery parameters internally when it writes `postgresql.conf`. It also restores the `Postgresql.is_starting()` check in `Ha.is_healthiest_node()`.

- Validate user options in dictionary format for `initdb`/`basebackup` (m4rrypro)

  Dictionary-form `initdb` or `basebackup` options bypassed `option_is_allowed()` validation. This permitted blocked options, unlike list-form options.

- Allow server-side compression for `basebackup` option (m4rrypro)

  Previously, `basebackup` blocked `compress` entirely. PostgreSQL 15 introduced server-side compression compatible with plain output. Patroni now permits this form but still rejects client-side compression.

- Don't reload PostgreSQL config while running custom bootstrap (Alexander Kukushkin)

  Custom bootstrap can start and stop PostgreSQL multiple times. Reloading its configuration during this process could cause unexpected behavior.

- Check that `postgresql.parameters` is a dictionary (Alexander Kukushkin)

  Discard new config if `postgresql.parameters` is not a dictionary.

## Version 4.1.0

Released 2025-09-23

**New features**

- Add support for systemd "notify" unit type (Ronan Dunklau)

  Without a notify unit, systemd could send SIGHUP immediately after starting Patroni. The signal could kill Patroni before it installed signal handlers.

- Provide receive and replay LSN/lag information in API and ctl (Polina Bungina)

  Patroni REST API `/cluster` endpoint and `patronictl list` command now provide receive LSN, replay LSN, receive lag, and replay lag information for each replica member.

- Ensure clean demotion to standby cluster (Polina Bungina)

  Make sure the introduction of the [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) section in the dynamic configuration leads to a clean cluster demotion.

- Implement `patronictl demote-cluster` and `promote-cluster` commands (Polina Bungina)

  New commands for cluster demotion and promotion handle both the dynamic configuration editing and checking the result status.

- Implement `sync_priority` tag (Polina Bungina)

  This parameter controls the priority a member should have during synchronous replica selection when [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) is set to `on`.

- Implement `--print` option for `--validate-config` (Polina Bungina)

  Print out local configuration (including environment configuration overrides) after it has been successfully validated.

- Implement `kubernetes.bootstrap_labels` (Polina Bungina)

  Define pod labels for these states: `initializing new cluster`, `running custom bootstrap script`, `starting after custom bootstrap`, or `creating replica`.

- Add configuration option to suppress duplicate heartbeat logs (Michael Morris)

  If set to `true`, successive heartbeat logs that are identical shall not be output.

- Add optional `cluster_type` attribute to permanent replication slots (Michael Banck)

  This allows you to set whether a particular permanent replication slot should always be created, or just on a primary or standby cluster.

- Make HTTP Server header configurable (David Grierson)

  Introduce the `restapi.server_tokens` configuration parameter that allows you to restrict information disclosed in the HTTP Server header.

- Implement readiness API checks for replication on replica members (Ants Aasma)

  Previously, a replica became ready as soon as PostgreSQL started. It now requires active replication and sufficiently low lag behind the leader.

**Improvements**

- Reduce log level of watchdog configuration failure (Ants Aasma)

  Show the `Could not activate Linux watchdog device` log line on debug logging level, unless the watchdog is configured with `required` mode. It was previously shown on info level.

- Take advantage of `written_lsn` and `latest_end_lsn` from `pg_stat_wal_receiver` (Alexander Kukushkin)

  Prefer `written_lsn`, the write LSN, over `pg_last_wal_receive_lsn()`, which returns the flush LSN. `latest_end_lsn` identifies the source host's WAL flush position. For primary sources, this improves replay lag calculations over DCS values updated every `loop_wait` seconds.

- Avoid interactions with slots created with the `failover=true` option (Alexander Kukushkin)

  This change is required to make the logical failover slots feature fully functional.

- Add PostgreSQL state to `/metrics` REST API endpoint (Ivan Filianin)

  PostgreSQL instance state information is now available in the Prometheus format output of the `/metrics` REST API endpoint.

--------

## Version 4.0.7

Released 2025-09-22

**New features**

- Add support for PostgreSQL 18 RC1 (Alexander Kukushkin)

  GUC's validator rules were extended. Patroni now properly handles the new background I/O worker.

**Bugfixes**

- Fix potential issue around resolving localhost to IPv6 on Windows (András Váczi)

  PostgreSQL `listen_addresses` values `0.0.0.0` and `127.0.0.1` allow only IPv4. Windows often resolves `localhost` to IPv6 `::1`. Patroni now uses `127.0.0.1` instead of `localhost` on Windows to avoid this mismatch.

- Return global config only when `/config` key exists in DCS (Alexander Kukushkin)

  Patroni REST API was returning an empty configuration instead of raising an error if the `/config` key was missing in DCS.

- Fix the issue of failsafe mode not being triggered in case of Etcd unavailability (Alexander Kukushkin)

  Patroni was not always properly handling `etcd3` exceptions, which resulted in failsafe mode not being triggered.

- Fix signal handler reentrancy deadlock (Waynerv)

  Patroni running in a Docker container with `PID=1` in some special cases was experiencing deadlock after receiving `SIGCHLD`.

- Recreate (permanent) physical slot when it doesn't reserve WAL (Israel Barth Rubio)

  Physical slots created outside Patroni without WAL reservation caused `replication slot cannot be advanced`. Patroni now recreates them.

- Handle watch cancellation messages in `etcd3` properly (Alexander Kukushkin)

  `etcd3` watch cancellation leaves the connection open, which caused Patroni to use stale data. Patroni now stops reading the chunked response and closes the connection.

- Handle case when `HTTPConnection` socket is wrapped with `pyopenssl` (Alexander Kukushkin)

  Patroni was not correctly using `pyopenssl` interfaces, enforced in `python-etcd`.

**Documentation improvements**

- Improve 2-node cluster guidance (Nikolay Samokhvalov)

  Clarify behaviour during failover and DCS requirements.

--------

## Version 4.0.6

Released 2025-06-06

**Bugfixes**

- Fix bug in failover from a leader with a higher priority (Alexander Kukushkin)

  Make sure Patroni ignores the former leader with higher priority when it reports the same `LSN` as the current node.

- Fix permissions for the `postgresql.conf` file created outside of `PGDATA` (Michael Banck)

  Respect the system-wide umask value when creating the `postgresql.conf` file outside of the `PGDATA` directory.

- Fix bug with switchover in `synchronous_mode=quorum` (Alexander Kukushkin)

  Do not check quorum requirements when a candidate is specified.

- Ignore stale Etcd nodes by comparing cluster term (Alexander Kukushkin)

  Memorize the last known "raft_term" of the Etcd cluster, and when executing client requests, compare it with the "raft_term" reported by an Etcd node.

- Update PostgreSQL configuration files on `SIGHUP` (Alexander Kukushkin)

  Previously, Patroni was only replacing PostgreSQL configuration files if a change in global or local configuration was detected.

- Properly handle `Unavailable` exception raised by `etcd3` (Alexander Kukushkin)

  Patroni used to retry such requests on the same `etcd3` node, while switching to another node is a better strategy.

- Improve `etcd3` lease handling (Alexander Kukushkin)

  Make sure Patroni refreshes the `etcd3` lease at least once per HA loop.

- Recheck annotations on 409 status code when attempting to acquire leader lock (Alexander Kukushkin)

  Implement the same behavior as was done for the leader object read in Patroni version 4.0.3.

- Consider `replay_lsn` when advancing slots (Polina Bungina)

  Do not advance replica slots beyond `replay_lsn`. Advance a slot to `replay_lsn` if it exceeds the slot's replica `confirmed_flush_lsn` but remains below its primary `LSN`.

- Make sure `CHECKPOINT` is executed after promote (Alexander Kukushkin)

  An unfinished `CHECKPOINT` could prevent checkpoint task reset on demotion. The next promotion then used a stale `result`.

- Avoid running "offline" demotion concurrently (Alexander Kukushkin)

  During slow shutdown, the next heartbeat could enter DCS error handling again. This logged `AsyncExecutor is busy, demoting from the main thread` and started another offline demotion.

- Normalize the `data_dir` value before renaming the data directory on initialization failure (Waynerv)

  Prevent a trailing slash in the `data_dir` parameter value from breaking the renaming process after an initialization failure.

- Check that `synchronous_standby_names` contains the expected value (Alexander Kukushkin)

  Non-quorum synchronous replication did not verify the actual `synchronous_standby_names` value. A stale value could remain when `pg_stat_replication` was a subset of it.

--------

## Version 4.0.5

Released 2025-02-20

**Stability improvements**

- Compatibility with `python-json-logger>=3.1` (Alexander Kukushkin)

  Get rid of the warnings produced by the old API usage.

- Compatibility with Python 3.13 (Alexander Kukushkin)

  Run tests against Python 3.13.

- Compatibility with `pyinstaller>=4.4` (Joe Jensen)

  Fall back to the default `iter_modules` if `pyinstaller` `toc` attribute is not present.

- Fix issues with PostgreSQL 9.5 support (Alexander Kukushkin)

  - Properly handle `pg_rewind` output format.
  - Consider `synchronous_standby_names` format not supporting "num" specification.

- Compatibility with the latest changes in `urlparse` (Alexander Kukushkin)

  `urlparse` no longer accepts multiple hosts with `[]` in URLs. Use native `PQconninfoParse()` wrappers from `libpq` where possible. Keep the internal implementation only for older `psycopg2` versions linked to outdated `libpq`.

**Bugfixes**

- Show only the members to be restarted upon restart confirmation (András Váczi)

  Previously, when doing `patronictl restart <clustername> --pending`, the confirmation listed all members, regardless of whether their restart is pending.

- Cancel long-running jobs on Patroni stop and remove data directory on replica bootstrap failure (Alexander Kukushkin)

  Previously, Patroni could be doing replica bootstrap, while `pg_basebackup` / `wal-g` / `pgBackRest` / `barman` or similar keep running.

- Properly handle cluster names with a slash in `patronictl edit-config` (Antoni Mur)

  Replace a forward slash in `cluster_name` with an underscore.

- Avoid dropping physical slots too early (Alexander Kukushkin)

  After failover, delay removal of physical slots containing `xmin`. On the new primary, wait for promotion. On replicas, wait for a cluster leader.

- Handle all exceptions raised by subprocess in `controldata()` (Alexander Kukushkin)

  Patroni was not properly handling all exceptions possibly raised when calling `pg_controldata` utility.

- Fix bug with a slot for a former leader not retained on failover (Alexander Kukushkin)

  Avoid falsely relying on members being present in DCS, while on failover `/member` key for the former leader is expiring exactly at the same time.

- Fix a couple of bugs in the quorum state machine (Alexander Kukushkin)

  - Before demotion, include quorum requirements when checking for healthy leader-race candidates. Otherwise, the former leader could enter recovery with only asynchronous nodes around it.
  - `QuorumStateResolver` mishandled a replica that joined and disconnected quickly.

**Improvements**

- Improve error on am empty or non-dictionary configuration file (Julian)

  Throw a more explicit exception when validating if Patroni configuration file contains a valid `Mapping` object.

--------

## Version 4.0.4

Released 2024-11-22

**Stability improvements**

- Add compatibility with the `py-consul` module (Alexander Kukushkin)

  `python-consul` module is unmaintained for a long time, while `py-consul` is the official replacement. Backward compatibility with python-consul is retained.

- Add compatibility with the `prettytable>=3.12.0` module (Alexander Kukushkin)

  Address deprecation warnings.

- Compatibility with the `ydiff==1.4.2` module (Alexander Kukushkin)

  Fix compatibility issues for the latest version, constrain version in `requirements.txt`, and introduce latest version compatibility test.

**Bugfixes**

- Run `on_role_change` callback after a failed primary recovery (Polina Bungina, Alexander Kukushkin)

  Also run the `on_role_change` callback when a primary fails to start after a crash. This increases the chance of callback execution, even if the subsequent start as a replica fails.

- Fix a thread leak in `patronictl list -W` (Alexander Kukushkin)

  Cache DCS instance object to avoid thread leak.

- Ensure only supported parameters are written to the connection string (Alexander Kukushkin)

  Patroni previously passed parameters from newer versions to the connection string. These parameters caused connection errors.

--------

## Version 4.0.3

Released 2024-10-18

**Bugfixes**

- Disable `pgaudit` when creating users not to expose password (kviset)

  Patroni was logging `superuser`, `replication`, and `rewind` passwords on their creation when `pgaudit` extension was enabled.

- Fix issue with mixed setups: primary on pre-Patroni v4 and replicas on v4+ (Alexander Kukushkin)

  If the leader runs Patroni before 4.0.0, use `xlog_location` from the `/members` key. Do not try to get the member's slot position from the `/status` key. The previous behavior caused WAL accumulation on replicas.

- Do not ignore valid PostgreSQL GUCs that don't have Patroni validator (Polina Bungina)

  Still check against `postgres --describe-config` if a GUC does not have a Patroni validator but is, in fact, a valid GUC.

**Improvements**

- Recheck annotations on 409 status code when reading leader object in K8s (Alexander Kukushkin)

  Avoid an additional update if `PATCH` request was canceled by Patroni, while the request successfully updated the target.

- Add support of `sslnegotiation` client-side connection option (Alexander Kukushkin)

  `sslnegotiation` was added to the final PostgreSQL 17 release.

--------

## Version 4.0.2

Released 2024-09-17

**Bugfixes**

- Handle exceptions while discovering configuration validation files (Alexander Kukushkin)

  Skip directories for which Patroni does not have sufficient permissions to perform list operations.

- Make sure inactive hot physical replication slots don't hold `xmin` (Alexander Kukushkin, Polina Bungina)

  Since version 3.2.0, Patroni creates physical replication slots for all members on replicas. It periodically advances them with `pg_replication_slot_advance()`. If `hot_standby_feedback` is enabled and the primary becomes a replica, the inactive slots can retain a `NOT NULL` `xmin` value. This value propagates to the new primary and prevents the `xmin` horizon from advancing. Vacuum then cannot remove dead tuples. Patroni now recreates slots that should be inactive but have a `NOT NULL` `xmin` value.

- Fix unhandled `DCSError` during the startup phase (Waynerv)

  Ensure DCS connectivity before trying to check the uniqueness of the node name.

- Explicitly include `CMDLINE_OPTIONS` GUCs when querying `pg_settings` (Alexander Kukushkin)

  When Patroni joins a running standby, restore all GUCs passed to postmaster as command line parameters. This follows the fix in Patroni 3.2.2.

- Fix bug in `synchronous_standby_names` quoting logic (Alexander Kukushkin)

  PostgreSQL documentation requires double quotes around the `ANY` and `FIRST` keywords. Patroni previously omitted these quotes.

- Fix keepalive connection out-of-range issue (hadizamani021)

  Calculate the `keepalive` option from `ttl`. Ensure that the result does not exceed the maximum value for the current platform.

--------

## Version 4.0.1

Released 2024-08-30

**Bugfix**

- Patroni was creating unnecessary replication slots for itself (Alexander Kukushkin)

  It was happening if `name` contains upper-case or special characters.

--------

## Version 4.0.0

Released 2024-08-29

> [!WARNING]
> - This version replaces the term "master" with "primary". This introduces breaking changes. Read the release notes carefully. Reliable upgrades to Patroni 4+ require Patroni 3.1.0 or newer. Direct upgrades from older versions are possible. However, unexpected behavior can occur if the primary fails while other nodes run different Patroni versions.

**Breaking changes**

- The following breaking changes were introduced when getting rid of the non-inclusive "master" term in the Patroni code:
  - On Kubernetes, Patroni sets the `role` label to `primary` by default. To retain the old behavior, set `kubernetes.leader_label_value` and `kubernetes.standby_leader_label_value` to `master`. This avoids downtime or long, complex migrations. Read more [here](/docs/patroni/kubernetes#kubernetes_role_values).
  - Patroni role is written to DCS as `primary` instead of `master`.
  - Patroni role returned by Patroni REST API has been changed from `master` to `primary`.
  - Patroni REST API no longer accepts `role=master` in requests to `/switchover`, `/failover`, `/restart` endpoints.
  - `/metrics` REST API endpoint will no longer report `patroni_master` metric.
  - [patronictl](/docs/patroni/patronictl#patronictl) no longer accepts `--master` option for any command. `--leader` or `--primary` options should be used instead.
  - `no_master` option in the declarative configuration of custom replica creation methods is no longer treated as a special option, please use `no_leader` instead.
  - `patroni_wale_restore` script doesn't accept `--no_master` option anymore.
  - `patroni_barman` script doesn't accept `--role=master` option anymore.
  - All callback scripts are executed with `role=primary` option passed instead of `role=master`.
- `patronictl failover` does not accept `--leader` option that was deprecated since Patroni 3.2.0.
- User creation functionality (`bootstrap.users` configuration section) deprecated since Patroni 3.2.0 has been removed.

**New features**

- Quorum-based failover (Ants Aasma, Alexander Kukushkin)

  This feature implements quorum-based synchronous replication, available from PostgreSQL v10. It reduces worst-case latency, even during normal operation. Other standbys can compensate for slower replication to one standby. Patroni adds safeguards against user-visible data loss. It selects the failover candidate based on the latest transaction received.

- Register Citus secondaries in `pg_dist_node` (Alexander Kukushkin)

  Patroni now maintains the list of nodes with `role==replica`, `state==running` and without `noloadbalance` [tag](/docs/patroni/config/yaml#tags_settings) in `pg_dist_node`.

- Configurable retention of members' replication slots (Alexander Kukushkin)

  The global `member_slots_ttl` parameter controls how long Patroni retains member replication slots when the member key is absent.

- Make permissions of log files created by Patroni configurable (Alexander Kukushkin)

  You can set specific permissions for log files that Patroni creates. If you do not specify permissions, Patroni uses the current `umask` value.

- Compatibility with PostgreSQL 17 beta3 (Alexander Kukushkin)

  GUC validation rules now support PostgreSQL 17 beta3. Patroni handles all new auxiliary backends during shutdown. It also sets `dbname` in `primary_conninfo`, as required for logical replication slot synchronization.

- Implement `--ignore-listen-port` option for Patroni config validation (Sahil Naphade)

  Make it possible to ignore already bound ports when running `patroni --validate-config`.

**Improvements**

- Make `wal_log_hints` configurable (Paul_Kim)

  When `use_pg_rewind` is `off`, you can disable `wal_log_hints` to avoid its overhead.

- Log `pg_basebackup` command in `DEBUG` level (Waynerv)

  Facilitates failed initialization debugging.

**Bugfixes**

- Advance permanent slots for cascading nodes while in failsafe (Alexander Kukushkin)

  When failsafe mode is active, advance slots for cascading replicas on the primary. Replica responses to `POST /failsafe` now include their `xlog_location` for this purpose.

- Don't let the current node be chosen as synchronous (Alexander Kukushkin)

  A client can stream from the current primary with an `application_name` that matches the primary name. Patroni previously handled this incorrectly. It could declare the primary as a synchronous node and block switchovers.

- Ignore `restapi.allowlist_include_members` for POST /failsafe (Alexander Kukushkin)

- Improve GUCs validation (Polina Bungina)

  Patroni previously validated GUCs with `postgres --describe-config`. As a result, its configuration could not set GUCs absent from that output. This limitation is removed.

- Add line with `localhost` to `.pgpass` file when unix sockets are detected (Alexander Kukushkin)

  If `host` starts with `/`, Patroni adds a line to the `.pgpass` file. This handles the case where `host` matches the default socket directory path.

- Fix logging issues (Waynerv)

  Defined proper request URL in failsafe handling logs and fixed the order of timestamps in postmaster check log.

--------

## Version 3.3.2

Released 2024-07-11

**Bugfixes**

- Fix plain Postgres synchronous replication mode (Israel Barth Rubio)

  Plain Postgres synchronous replication did not work after Patroni introduced [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode). Patroni now uses the user-configured `synchronous_standby_names` value when [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) is disabled.

- Handle logical slots invalidation on a standby (Polina Bungina)

  Since PG16, the horizon can invalidate logical replication slots on a standby. Patroni now forces a copy to recreate these invalidated slots.

- Fix race condition with logical slot advance and copy (Alexander Kukushkin)

  This bug could cause repeated copies of an invalidated logical replication slot, with a PostgreSQL restart for each copy.

--------

## Version 3.3.1

Released 2024-06-17

**Stability improvements**

- Compatibility with Python 3.12 (Alexander Kukushkin)

  Handle a new attribute added to `logging.LogRecord`.

**Bugfixes**

- Fix infinite recursion in `replicatefrom` tags handling (Alexander Kukushkin)

  As a part of this fix, also improve `is_physical_slot()` check and adjust documentation.

- Fix wrong role reporting in standby clusters (Alexander Kukushkin)

  `synchronous_standby_names` and synchronous replication work only on a real primary node. Postgres ignores them for cascading replication. Before this fix, `patronictl list` and `GET /cluster` incorrectly reported some nodes as synchronous.

- Fix availability of the `allow_in_place_tablespaces` GUC (Polina Bungina)

  `allow_in_place_tablespaces` was not only added to PostgreSQL 15 but also backpatched to PostgreSQL 10-14.

--------

## Version 3.3.0

Released 2024-04-04

> [!WARNING]
> All older Partoni versions are not compatible with `ydiff>=1.3`.
>
> There are the following options available to "fix" the problem:
>
> 1.  upgrade Patroni to the latest version
> 2.  install `ydiff<1.3` after installing Patroni
> 3.  install `cdiff` module

**New features**

- Add ability to pass `auth_data` to Zookeeper client (Aras Mumcuyan)

  It allows to specify the authentication credentials to use for the connection.

- Add a contrib script for `Barman` integration (Israel Barth Rubio)

  The `patroni_barman` application performs remote `Barman` operations. It can serve as a custom bootstrap method, a custom replica method, or an `on_role_change` callback. See [the integration documentation](/docs/patroni/tools_integration#tools_integration) for more information.

- Support `JSON` log format (alisalemmi)

  Apart from `plain` (default), Patroni now also supports `json` log format. Requires `python-json-logger>=2.0.2` library to be installed.

- Show `pending_restart_reason` information (Polina Bungina)

  Show more information about PostgreSQL parameters that set the `pending_restart` flag. `patronictl list` and the `/patroni` REST API endpoint now show parameter names and their differences as `pending_restart_reason`.

- Implement `nostream` tag (Grigory Smolkin)

  If `nostream` is `true`, the node does not use the replication protocol to stream WAL. It uses archive recovery if `restore_command` is configured. The tag also disables permanent logical replication slot copying and synchronization on this node and all its cascading replicas.

**Improvements**

- Implement validation of the `log` section (Alexander Kukushkin)

  Until now validator was not checking the correctness of the logging configuration provided.

- Improve logging for PostgreSQL parameters change (Polina Bungina)

  Convert old values to a human-readable format and log information about the `pg_controldata` vs Patroni global configuration mismatch.

**Bugfixes**

- Properly filter out not allowed `pg_basebackup` options (Israel Barth Rubio)

  Patroni did not correctly filter forbidden options for the `basebackup` replica bootstrap method when they used the `- setting: value` format.

- Fix `etcd3` authentication error handling (Alexander Kukushkin)

  Retry an `etcd3` authentication error once, unless authentication occurred immediately before the request. Do not restart watchers during reauthentication.

- Improve logic of the validator files discovery (Waynerv)

  Use `importlib` library to discover the files with available configuration parameters when possible (for Python 3.9+). This implementation is more stable and doesn't break the Patroni distributions based on `zip` archives.

- Use `target_session_attrs` only when multiple hosts are specified in the [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) section (Alexander Kukushkin)

  `target_session_attrs=read-write` is now added to the `primary_conninfo` on the standby leader node only when `standby_cluster.host` section contains multiple hosts separated by commas.

- Add compatibility code for `ydiff` library version 1.3+ (Alexander Kukushkin)

  Patroni uses a nonpublic API from `ydiff`. This API belongs to a terminal tool, not a Python module interface. The API change in version 1.3 broke older Patroni versions.

--------

## Version 3.2.2

Released 2024-01-17

**Bugfixes**

- Don't let replica restore initialize key when DCS was wiped (Alexander Kukushkin)

  It was happening in the method where Patroni was supposed to take over a standalone PG cluster.

- Use consistent read when fetching just updated sync key from Consul (Alexander Kukushkin)

  Consul cannot immediately return `ModifyIndex` for a key that was just updated. Patroni must read the key explicitly. The default permits stale reads, so Patroni sometimes received an outdated key version.

- Reload Postgres config if a parameter that requires restart was reset to the original value (Polina Bungina)

  Previously Patroni wasn't updating the config, but only resetting the `pending_restart`.

- Fix erroneous inverted logic of the confirmation prompt message when doing a failover to an async candidate in synchronous mode (Polina Bungina)

  The problem existed only in [patronictl](/docs/patroni/patronictl#patronictl).

- Exclude leader from failover candidates in [patronictl](/docs/patroni/patronictl#patronictl) (Polina Bungina)

  If the cluster is healthy, failing over to an existing leader is no-op.

- Create Citus database and extension idempotently (Alexander Kukushkin, Zhao Junwang)

  This allows the `post_bootstrap` script to create the Citus database and extension when the database needs additional dependencies.

- Don't filter our contradictory `nofailover` tag (Polina Bungina)

  A node with `{nofailover: false, failover_priority: 0}` could not participate in the leader race. It should have been eligible because `nofailover` takes precedence.

- Fixed PyInstaller frozen issue (Sophia Ruan)

  The `freeze_support()` was called after `argparse` and as a result, Patroni wasn't able to start Postgres.

- Fixed bug in the config generator for [patronictl](/docs/patroni/patronictl#patronictl) and [Citus](/docs/patroni/citus#citus) configuration (Israel Barth Rubio)

  It prevented [patronictl](/docs/patroni/patronictl#patronictl) and [Citus](/docs/patroni/citus#citus) configuration parameters set via environment variables from being written into the generated config.

- Restore recovery GUCs and some Patroni-managed parameters when joining a running standby (Alexander Kukushkin)

  Patroni was failing to restart Postgres v12 onwards with an error about missing `port` in one of the internal structures.

- Fixes around `pending_restart` flag (Polina Bungina)

  Do not expose `pending_restart` during custom bootstrap with `recovery_target_action = promote`. Also omit it when an external change affects `hot_standby` or `wal_log_hints`, for example through `ALTER SYSTEM`.

--------

## Version 3.2.1

Released 2023-11-30

**Bugfixes**

- Limit accepted values for `--format` argument in [patronictl](/docs/patroni/patronictl#patronictl) (Alexander Kukushkin)

  It used to accept any arbitrary string and produce no output if the value wasn't recognized.

- Verify that replica nodes received checkpoint LSN on shutdown before releasing the leader key (Alexander Kukushkin)

  Previously, Patroni sometimes used the LSN of the SWITCH record. With archiving enabled, a CHECKPOINT record follows this record. As a result, the former primary sometimes needed `pg_rewind`. This did not cause data loss.

- Do a real HTTP request when performing node name uniqueness check (Alexander Kukushkin)

  In containers, traffic can pass through `docker-proxy`, which listens on the port and accepts connections. This caused false positives in the uniqueness check.

- Fixed Citus support with Etcd v2 (Alexander Kukushkin)

  Patroni was failing to deploy a new Citus cluster with Etcd v2.

- Fixed `pg_rewind` behavior with Postgres v16+ (Alexander Kukushkin)

  The error message format of `pg_waldump` changed in v16 which caused `pg_rewind` to be called by Patroni even when it was not necessary.

- Fixed bug with custom bootstrap (Alexander Kukushkin)

  Patroni was falsely applying `--command` argument, which is a bootstrap command itself.

- Fixed the issue with REST API health check endpoints (Sophia Ruan)

  There were chances that after Postgres restart it could return `unknown` state for Postgres because connections were not properly closed.

- Cache `postgres --describe-config` output results (Waynerv)

  These results identify the GUCs available for PostgreSQL configuration validation. The list is not expected to change while Patroni runs.

--------

## Version 3.2.0

Released 2023-10-25

**Deprecation notice**

- The `bootstrap.users` support will be removed in version 4.0.0. If you need to create users after deploying a new cluster please use the `bootstrap.post_bootstrap` hook for that.

**Breaking changes**

- Enforce `loop_wait + 2*retry_timeout <= ttl` rule and hard-code minimal possible values (Alexander Kukushkin)

  The minimum values are `loop_wait=2`, `retry_timeout=3`, and `ttl=20`. Patroni adjusts values below these minimums or values that violate the rule. It writes a warning to its logs.

**New features**

- Failover priority (Mark Pekala)

  With the help of `tags.failover_priority` it's now possible to make a node more preferred during the leader race. More details in the documentation (ref tags).

- Implemented `patroni --generate-config [--dsn DSN]` and `patroni --generate-sample-config` (Polina Bungina)

  It allows to generate a config file for the running PostgreSQL cluster or a sample config file for the new Patroni cluster.

- Use a dedicated connection to Postgres for Patroni REST API (Alexander Kukushkin)

  It helps to avoid blocking the main heartbeat loop if the system is under stress.

- Enrich some endpoints with the `name` of the node (sskserk)

  For the monitoring endpoint `name` is added next to the `scope` and for metrics endpoint the `name` is added to tags.

- Ensure strict failover/switchover difference (Polina Bungina)

  Be more precise in log messages and allow failing over to an asynchronous node in a healthy synchronous cluster.

- Make permanent physical replication slots behave similarly to permanent logical slots (Alexander Kukushkin)

  Create permanent physical replication slots on all nodes eligible to become leader. On standby nodes, use `pg_replication_slot_advance()` to advance the slots' `restart_lsn`.

- Add capability of specifying namespace through `--dcs` argument in [patronictl](/docs/patroni/patronictl#patronictl) (Israel Barth Rubio)

  It could be handy if [patronictl](/docs/patroni/patronictl#patronictl) is used without a configuration file.

- Add support for additional parameters in custom bootstrap configuration (Israel Barth Rubio)

  Previously it was only possible to add custom arguments to the `command` and now one could list them as a mapping.

**Improvements**

- Set `citus.local_hostname` GUC to the same value which is used by Patroni to connect to the Postgres (Alexander Kukushkin)

  There are cases when Citus wants to have a connection to the local Postgres. By default it uses `localhost`, which is not always available.

**Bugfixes**

- Ignore [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) setting in a standby cluster (Polina Bungina)

  Postgres doesn't support cascading synchronous replication and not ignoring [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) was breaking a switchover in a standby cluster.

- Handle SIGCHLD for `on_reload` callback (Alexander Kukushkin)

  Not doing so results in a zombie process, which is reaped only when the next `on_reload` is executed.

- Handle `AuthOldRevision` error when working with Etcd v3 (Alexander Kukushkin, Kenny Do)

  The error is raised if Etcd is configured to use JWT and when the user database in Etcd is updated.

--------

## Version 3.1.2

Released 2023-09-26

**Bugfixes**

- Fixed bug with `wal_keep_size` checks (Alexander Kukushkin)

  The `wal_keep_size` GUC normally has a unit. Patroni failed to cast its value to `int`. As a result, it did not write the `bootstrap.dcs` value to the `/config` key.

- Detect and resolve inconsistencies between `/sync` key and `synchronous_standby_names` (Alexander Kukushkin)

  Patroni normally updates `/sync` and `synchronous_standby_names` in a specific order. A bug or a manual reset of `synchronous_standby_names` could make this state inconsistent. Failover to an asynchronous node was then possible.

- Read GUC's values when joining running Postgres (Alexander Kukushkin)

  When restarted in [pause](/docs/patroni/pause#pause), Patroni removed `synchronous_standby_names` from `postgresql.conf`. Patroni now reads GUC values when it joins a running Postgres instance. This resolves the issue and helps prevent similar issues.

- Silenced annoying warnings when checking for node uniqueness (Alexander Kukushkin)

  `WARNING` messages are produced by `urllib3` if Patroni is quickly restarted.

--------

## Version 3.1.1

Released 2023-09-20

**Bugfixes**

- Reset failsafe state on promote (ChenChangAo)

  A switchover or failover could occur shortly after failsafe mode started. The new primary then demoted itself when failsafe mode became inactive.

- Silence useless warnings in [patronictl](/docs/patroni/patronictl#patronictl) (Alexander Kukushkin)

  [patronictl](/docs/patroni/patronictl#patronictl) could show incorrect warnings about global configuration values. This occurred when it used the same patroni.yaml file as Patroni and could access `PGDATA`.

- Explicitly enable synchronous mode for a corner case (Alexander Kukushkin)

  Synchronous mode effectively was never activated if there are no replicas streaming from the primary.

- Fixed bug with `0` integer values validation (Israel Barth Rubio)

  In most cases, it didn't cause any issues, just warnings.

- Don't return logical slots for standby cluster (Alexander Kukushkin)

  Patroni can't create logical replication slots in the standby cluster, thus they should be ignored if they are defined in the global configuration.

- Avoid showing docstring in `patronictl --help` output (Israel Barth Rubio)

  The `click` module needs to get a special hint for that.

- Fixed bug with `kubernetes.standby_leader_label_value` (Alexander Kukushkin)

  This feature effectively never worked.

- Returned cluster system identifier to the `patronictl list` output (Polina Bungina)

  Citus support introduced this problem. Citus requires a hidden system identifier because the coordinator and each worker have different identifiers.

- Override `write_leader_optime` method in Kubernetes implementation (Alexander Kukushkin)

  The method is supposed to write shutdown LSN to the leader Endpoint/ConfigMap when there are no healthy replicas available to become the new primary.

- Don't start stopped postgres in pause (Alexander Kukushkin)

  Due to a race condition, Patroni was falsely assuming that the standby should be restarted because some recovery parameters (`primary_conninfo` or similar) were changed.

- Fixed bug in `patronictl query` command (Israel Barth Rubio)

  It didn't work when only `-m` argument was provided or when none of `-r` or `-m` were provided.

- Properly treat integer parameters that are used in the command line to start postgres (Polina Bungina)

  String values were not cast to integers. This caused incorrect `max_prepared_transactions` calculations based on `max_connections` for Citus clusters.

- Don't rely on `pg_stat_wal_receiver` when deciding on `pg_rewind` (Alexander Kukushkin)

  The `received_tli` value from `pg_stat_wal_receiver` could be ahead of the actual replayed timeline. The timeline from `DENTIFY_SYSTEM` through a replication connection is always correct.

--------

## Version 3.1.0

Released 2023-08-03

**Breaking changes**

- Changed semantic of `restapi.keyfile` and `restapi.certfile` (Alexander Kukushkin)

  Previously, Patroni used `restapi.keyfile` and `restapi.certfile` as fallback client certificates when the corresponding `ctl` parameters were absent.

> [!WARNING]
> If `restapi.verify_client` is `required`, client certificate validation is enabled. You **must** also supply **valid client certificates** in `ctl.certfile`, `ctl.keyfile`, and `ctl.keyfile_password`. Otherwise, Patroni will not work correctly.

**New features**

- Make Pod role label configurable (Waynerv)

  Set label values with `kubernetes.leader_label_value`, `kubernetes.follower_label_value`, and `kubernetes.standby_leader_label_value`. This supports the planned change from the `master` role to `primary`. See [the feature and migration steps](/docs/patroni/kubernetes#kubernetes_role_values).

**Improvements**

- Various improvements of `patroni --validate-config` (Alexander Kukushkin)

  Improved parameter validation for different DCS, `bootstrap.dcs` , `ctl`, `restapi`, and [watchdog](/docs/patroni/watchdog#watchdog) sections.

- Start Postgres not in recovery if it crashed during recovery while Patroni is running (Alexander Kukushkin)

  It may reduce recovery time and will help to prevent unnecessary timeline increments.

- Avoid unnecessary updates of `/status` key (Alexander Kukushkin)

  Without permanent logical slots, Patroni previously updated `/status` on every heartbeat loop. It did so even when the primary LSN did not advance.

- Don't allow stale primary to win the leader race (Alexander Kukushkin)

  Patroni can stop responding for a long time because of insufficient resources. Before acquiring the leader lock, it now checks whether another node promoted Postgres.

- Implemented visibility of certain PostgreSQL parameters validation (Alexander Kukushkin, Feike Steenbergen)

  Patroni used a suitable default when validation failed for `max_connections`, `max_wal_senders`, `max_prepared_transactions`, `max_locks_per_transaction`, `max_replication_slots`, or `max_worker_processes`. It now also shows a warning.

- Set permissions for files and directories created in `PGDATA` (Alexander Kukushkin)

  Patroni previously created files with owner read/write permissions only. This broke backup tools that ran as another user and depended on group read permissions. Patroni now uses the permissions on `PGDATA` to set permissions for files and directories that it creates inside `PGDATA`.

**Bugfixes**

- Run `archive_command` through shell (Waynerv)

  Patroni can archive WAL segments before single-user crash recovery or before `pg_rewind`. Previously, archive_command did not work with shell operators such as `&&`.

- Fixed "on switchover" shutdown checks (Polina Bungina)

  It was possible that specified candidate is still streaming and didn't received shut down checking but the leader key was removed because some other nodes were healthy.

- Fixed "is primary" check (Alexander Kukushkin)

  During the leader race replicas were not able to recognize that Postgres on the old leader is still running as a primary.

- Fixed `patronictl list` (Alexander Kukushkin)

  The Cluster name field was missing in `tsv`, `json`, and `yaml` output formats.

- Fixed `pg_rewind` behaviour after pause (Alexander Kukushkin)

  Under certain conditions, Patroni wasn't able to join the false primary back to the cluster with `pg_rewind` after coming out of maintenance mode.

- Fixed bug in Etcd v3 implementation (Alexander Kukushkin)

  Invalidate internal KV cache if key update performed using `create_revision`/`mod_revision` field due to revision mismatch.

- Fixed behaviour of replicas in standby cluster in pause (Alexander Kukushkin)

  When the leader key expires replicas in standby cluster will not follow the remote node but keep `primary_conninfo` as it is.

--------

## Version 3.0.4

Released 2023-07-13

**New features**

- Make the replication status of standby nodes visible (Alexander Kukushkin)

  For PostgreSQL 9.6+, Patroni reports `streaming` when a standby streams from another node. It reports `in archive recovery` when no replication connection exists and `restore_command` is set. The state appears in DCS `member` keys, the REST API, and `patronictl list` output.

**Improvements**

- Improved error messages with Etcd v3 (Alexander Kukushkin)

  When Etcd v3 cluster isn't accessible Patroni was reporting that it can't access `/v2` endpoints.

- Use quorum read in [patronictl](/docs/patroni/patronictl#patronictl) if it is possible (Alexander Kukushkin)

  Etcd or Consul clusters could become read-only without [patronictl](/docs/patroni/patronictl#patronictl) reporting a problem. It now fails with an error.

- Prevent splitbrain from duplicate names in configuration (Mark Pekala)

  At startup, Patroni checks whether DCS has a registered node with the same name. It tries to query that node's REST API. If the API is accessible, Patroni exits with an error. This helps protect against configuration mistakes.

- Start Postgres not in recovery if it crashed while Patroni is running (Alexander Kukushkin)

  It may reduce recovery time and will help from unnecessary timeline increments.

**Bugfixes**

- REST API SSL certificate were not reloaded upon receiving a SIGHUP (Israel Barth Rubio)

  Regression was introduced in 3.0.3.

- Fixed integer GUCs validation for parameters like `max_connections` (Feike Steenbergen)

  Patroni didn't like quoted numeric values. Regression was introduced in 3.0.3.

- Fix issue with [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) (Alexander Kukushkin)

  Execute `txid_current()` with `synchronous_commit=off` so it doesn't accidentally wait for absent synchronous standbys when `synchronous_mode_strict` is enabled.

--------

## Version 3.0.3

Released 2023-06-22

**New features**

- Compatibility with PostgreSQL 16 beta1 (Alexander Kukushkin)

  Extended GUC's validator rules.

- Make PostgreSQL GUC's validator extensible (Israel Barth Rubio)

  Validator rules are loaded from YAML files located in `patroni/postgresql/available_parameters/` directory. Files are ordered in alphabetical order and applied one after another. It makes possible to have custom validators for non-standard Postgres distributions.

- Added `restapi.request_queue_size` option (Andrey Zhidenkov, Aleksei Sukhov)

  Sets request queue size for TCP socket used by Patroni REST API. Once the queue is full, further requests get a "Connection denied" error. The default value is 5.

- Call `initdb` directly when initializing a new cluster (Matt Baker)

  Previously it was called via `pg_ctl`, what required a special quoting of parameters passed to `initdb`.

- Added before stop hook (Le Duane)

  The hook could be configured via `postgresql.before_stop` and is executed right before `pg_ctl stop`. The exit code doesn't impact shutdown process.

- Added support for custom Postgres binary names (Israel Barth Rubio, Polina Bungina)

  A custom Postgres distribution can use different binary names from the community distribution. Configure these names with `postgresql.bin_name.*` and the `PATRONI_POSTGRESQL_BIN_*` environment variables.

**Improvements**

- Various improvements of `patroni --validate-config` (Polina Bungina)

  - Make `bootstrap.initdb` optional. It is only required for new clusters, but `patroni --validate-config` was complaining if it was missing in the config.
  - Don't error out when `postgresql.bin_dir` is empty or not set. Try to first find Postgres binaries in the default PATH instead.
  - Make `postgresql.authentication.rewind` section optional. If it is missing, Patroni is using the superuser.

- Improved error reporting in [patronictl](/docs/patroni/patronictl#patronictl) (Israel Barth Rubio)

  The `\n` symbol was rendered as it is, instead of the actual newline symbol.

**Bugfixes**

- Fixed issue in Citus support (Alexander Kukushkin)

  During switchover, the promoted worker calls the coordinator REST API. If this call failed, the Citus group remained blocked indefinitely.

- Allow `etcd3` URL in `--dcs-url` option of [patronictl](/docs/patroni/patronictl#patronictl) (Israel Barth Rubio)

  If users attempted to pass a `etcd3` URL through `--dcs-url` option of [patronictl](/docs/patroni/patronictl#patronictl) they would face an exception.

--------

## Version 3.0.2

Released 2023-03-24

> [!WARNING]
> Version 3.0.2 dropped support of Python older than 3.6.

**New features**

- Added sync standby replica status to `/metrics` endpoint (Thomas von Dein, Alexander Kukushkin)

  Before were only reporting `primary`/`standby_leader`/`replica`.

- User-friendly handling of `PAGER` in [patronictl](/docs/patroni/patronictl#patronictl) (Israel Barth Rubio)

  It makes pager configurable via `PAGER` environment variable, which overrides default `less` and `more`.

- Make K8s retriable HTTP status code configurable (Alexander Kukushkin)

  On some managed platforms it is possible to get status code `401 Unauthorized`, which sometimes gets resolved after a few retries.

**Improvements**

- Set `hot_standby` to `off` during custom bootstrap only if `recovery_target_action` is set to `promote` (Alexander Kukushkin)

  It was necessary to make `recovery_target_action=pause` work correctly.

- Don't allow `on_reload` callback to kill other callbacks (Alexander Kukushkin)

  `on_start`/`on_stop`/`on_role_change` are usually used to add/remove Virtual IP and `on_reload` should not interfere with them.

- Switched to `IMDSFetcher` in aws callback example script (Polina Bungina)

  The `IMDSv2` requires a token to work with and the `IMDSFetcher` handles it transparently.

**Bugfixes**

- Fixed `patronictl switchover` on Citus cluster running on Kubernetes (Lukáš Lalinský)

  It didn't work for namespaces different from `default`.

- Don't write to `PGDATA` if major version is not known (Alexander Kukushkin)

  `PGDATA` could be empty immediately after startup, for example before storage was mounted. Patroni then inferred an incorrect PostgreSQL version. It created `recovery.conf` even when the actual major version was v10+.

- Fixed bug with Citus metadata after coordinator failover (Alexander Kukushkin)

  The `citus_set_coordinator_host()` call doesn't cause metadata sync and the change was invisible on worker nodes. The issue is solved by switching to `citus_update_node()`.

- Use etcd hosts listed in the config file as a fallback when all etcd nodes "failed" (Alexander Kukushkin)

  Patroni follows etcd topology changes. If all nodes become unreachable, it retries with the configured nodes and the last known topology.

--------

## Version 3.0.1

Released 2023-02-16

**Bugfixes**

- Pass proper role name to an `on_role_change` callback script'. (Alexander Kukushkin, Polina Bungina)

  Patroni used to erroneously pass `promoted` role to an `on_role_change` callback script on promotion. The passed role name changed back to `master`. This regression was introduced in 3.0.0.

--------

## Version 3.0.0

Released 2023-01-30

This version adds integration with [Citus](https://www.citusdata.com) and makes it possible to survive temporary DCS outages without demoting primary.

> [!WARNING]
> - Version 3.0.0 is the last release supporting Python 2.7. Upcoming release will drop support of Python versions older than 3.7.
>
> - The RAFT support is deprecated. We will do our best to maintain it, but take neither guarantee nor responsibility for possible issues.
> - This version is the first step in getting rid of the "master", in favor of "primary". Upgrading to the next major release will work reliably only if you run at least 3.0.0.

**New features**

- DCS failsafe mode (Alexander Kukushkin, Polina Bungina)

  If the feature is enabled it will allow Patroni cluster to survive temporary DCS outages. You can find more details in the [documentation](/docs/patroni/dcs_failsafe_mode#dcs_failsafe_mode).

- Citus support (Alexander Kukushkin, Polina Bungina, Jelte Fennema)

  Patroni enables easy deployment and management of [Citus](https://www.citusdata.com) clusters with HA. Please check [here](/docs/patroni/citus#citus) page for more information.

**Improvements**

- Suppress recurring errors when dropping unknown but active replication slots (Michael Banck)

  Patroni will still write these logs, but only in DEBUG.

- Run only one monitoring query per HA loop (Alexander Kukushkin)

  It wasn't the case if synchronous replication is enabled.

- Keep only latest failed data directory (William Albertus Dembo)

  After bootstrap failure, Patroni previously renamed the \$PGDATA folder with a timestamp suffix. It now uses `.failed`. If that folder already exists, Patroni removes it before renaming.

- Improved check of synchronous replication connections (Alexander Kukushkin)

  A new host in `synchronous_standby_names` must catch up with the primary before Patroni marks it synchronous in DCS. It must also report `pg_stat_replication.sync_state = 'sync'`.

**Removed functionality**

- Remove `patronictl scaffold` (Alexander Kukushkin)

  The only reason for having it was a hacky way of running standby clusters.

--------

## Version 2.1.7

Released 2023-01-04

**Bugfixes**

- Fixed little incompatibilities with legacy python modules (Alexander Kukushkin)

  They prevented from building/running Patroni on Debian buster/Ubuntu bionic.

--------

## Version 2.1.6

Released 2022-12-30

**Improvements**

- Fix annoying exceptions on ssl socket shutdown (Alexander Kukushkin)

  The HAProxy is closing connections as soon as it got the HTTP Status code leaving no time for Patroni to properly shutdown SSL connection.

- Adjust example Dockerfile for arm64 (Polina Bungina)

  Remove explicit `amd64` and `x86_64`, don't remove `libnss_files.so.*`.

**Security improvements**

- Enforce `search_path=pg_catalog` for non-replication connections (Alexander Kukushkin)

  Patroni depends heavily on superuser connections. A user-defined function or operator in `public` could match a `pg_catalog` object's name and signature to attack these connections. To protect them, Patroni enforces `search_path=pg_catalog` for all connections except replication connections.

- Prevent passwords from being recorded in `pg_stat_statements` (Feike Steenbergen)

  It is achieved by setting `pg_stat_statements.track_utility=off` when creating users.

**Bugfixes**

- Declare `proxy_address` as optional (Denis Laxalde)

  As it is effectively a non-required option.

- Improve behaviour of the insecure option (Alexander Kukushkin)

  Ctl's `insecure` option didn't work properly when client certificates were used for REST API requests.

- Take watchdog configuration from `bootstrap.dcs` when the new cluster is bootstrapped (Matt Baker)

  Patroni used to initially configure watchdog with defaults when bootstrapping a new cluster rather than taking configuration used to bootstrap the DCS.

- Fix the way file extensions are treated while finding executables in WIN32 (Martín Marqués)

  Only add `.exe` to a file name if it has no extension yet.

- Fix Consul TTL setup (Alexander Kukushkin)

  Patroni set `ttl/2.0` on the HTTPClient but did not multiply the current value by 2 in the class property. The Consul TTL was therefore incorrect by a factor of two.

**Removed functionality**

- Remove `patronictl configure` (Polina Bungina)

  There is no more need for a separate [patronictl](/docs/patroni/patronictl#patronictl) config creation.

--------

## Version 2.1.5

Released 2022-11-28

This version enhances compatibility with PostgreSQL 15 and declares Etcd v3 support as production ready. The Patroni on Raft remains in Beta.

**New features**

- Improve `patroni --validate-config` (Denis Laxalde)

  Exit with code 1 if config is invalid and print errors to stderr.

- Don't drop replication slots in pause (Alexander Kukushkin)

  Patroni is automatically creating/removing physical replication slots when members are joining/leaving the cluster. In pause slots will no longer be removed.

- Support the `HEAD` request method for monitoring endpoints (Robert Cutajar)

  If used instead of `GET` Patroni will return only the HTTP Status Code.

- Support behave tests on Windows (Alexander Kukushkin)

  Emulate graceful Patroni shutdown (`SIGTERM`) on Windows by introduce the new REST API endpoint `POST /sigterm`.

- Introduce `postgresql.proxy_address` (Alexander Kukushkin)

  It will be written to the member key in DCS as the `proxy_url` and could be used/useful for service discovery.

**Stability improvements**

- Call `pg_replication_slot_advance()` from a thread (Alexander Kukushkin)

  On busy clusters with many logical replication slots, `pg_replication_slot_advance()` delayed the main HA loop. This could cause the member key to expire.

- Archive possibly missing WALs before calling `pg_rewind` on the old primary (Polina Bungina)

  After a long primary outage, WAL files could be absent from both the archive and the new primary. `pg_rewind` could remove these files from the old primary. The old primary then could not start as a standby. Archiving `ready` WAL files reduces this risk and improves continuous archiving.

- Ignore `403` errors when trying to create Kubernetes Service (Nick Hudson, Polina Bungina)

  Patroni was spamming logs by unsuccessful attempts to create the service, which in fact could already exist.

- Improve liveness probe (Alexander Kukushkin)

  The liveness probe fails if the heartbeat loop exceeds `ttl` on the primary or `2\*ttl` on a replica. This allows its use as an alternative to [watchdog](/docs/patroni/watchdog#watchdog) on Kubernetes.

- Make sure only sync node tries to grab the lock when switchover (Alexander Kukushkin, Polina Bungina)

  Previously, an up-to-date asynchronous member had a small chance of becoming leader during a manual switchover without a specified target.

- Avoid cloning while bootstrap is running (Ants Aasma)

  Do not allow a create replica method that does not require a leader to be triggered while the cluster bootstrap is running.

- Compatibility with kazoo-2.9.0 (Alexander Kukushkin)

  Depending on the Python version, `SequentialThreadingHandler.select()` can raise `TypeError` or `IOError` when `select()` uses a closed socket.

- Explicitly shut down SSL connection before socket shutdown (Alexander Kukushkin)

  Not doing it resulted in `unexpected eof while reading` errors with OpenSSL 3.0.

- Compatibility with `prettytable\>=2.2.0` (Alexander Kukushkin)

  Due to the internal API changes the cluster name header was shown on the incorrect line.

**Bugfixes**

- Handle expired token for Etcd lease_grant (monsterxx03)

  In case of error get the new token and retry request.

- Fix bug in the `GET /read-only-sync` endpoint (Alexander Kukushkin)

  It was introduced in previous release and effectively never worked.

- Handle the case when data dir storage disappeared (Alexander Kukushkin)

  Patroni periodically checks that PGDATA exists and is not empty. A storage failure could make `os.listdir()` raise `OSError`, which broke the heartbeat loop.

- Apply `master_stop_timeout` when waiting for user backends to close (Alexander Kukushkin)

  Something that looks like user backend could be in fact a background worker (e.g., Citus Maintenance Daemon) that is failing to stop.

- Accept `*:<port>` for `postgresql.listen` (Denis Laxalde)

  The `patroni --validate-config` was complaining about it being invalid.

- Timeouts fixes in Raft (Alexander Kukushkin)

  When Patroni or patronictl are starting they try to get Raft cluster topology from known members. These calls were made without proper timeouts.

- Forcefully update consul service if token was changed (John A. Lotoski)

  Not doing so results in errors "rpc error making call: rpc error making call: ACL not found".

--------

## Version 2.1.4

Released 2022-06-01

**New features**

- Improve `pg_rewind` behavior on typical Debian/Ubuntu systems (Gunnar "Nick" Bluth)

  On Postgres setups that keep `postgresql.conf` outside of the data directory (e.g. Ubuntu/Debian packages), `pg_rewind --restore-target-wal` fails to figure out the value of the `restore_command`.

- Allow setting `TLSServerName` on Consul service checks (Michael Gmelin)

  Useful when checks are performed by IP and the Consul `node_name` is not a FQDN.

- Added `ppc64le` support in watchdog (Jean-Michel Scheiwiler)

  And fixed watchdog support on some non-x86 platforms.

- Switched aws.py callback from `boto` to `boto3` (Alexander Kukushkin)

> `boto` 2.x is abandoned since 2018 and fails with python 3.9.

- Periodically refresh service account token on K8s (Haitao Li)

  Since Kubernetes v1.21 service account tokens expire in 1 hour.

- Added `/read-only-sync` monitoring endpoint (Dennis4b)

  It is similar to the `/read-only` but includes only synchronous replicas.

**Stability improvements**

- Don't copy the logical replication slot to a replica if there is a configuration mismatch in the logical decoding setup with the primary (Alexander Kukushkin)

  A replica no longer copies a logical replication slot if it does not match the `plugin` or `database` configuration. Previously, Patroni checked these options only after copying the slot and starting the replica with it. This caused repeated unnecessary restarts.

- Special handling of recovery configuration parameters for PostgreSQL v12+ (Alexander Kukushkin)

  When starting as a replica, Patroni caches the current recovery parameters instead of querying `pg_settings`. This lets it update `postgresql.conf` and restart or reload when the leader address changes.

- Better handling of IPv6 addresses in the `postgresql.listen` parameters (Alexander Kukushkin)

  The `listen` parameter includes a port, so users can put IPv6 addresses in square brackets. Patroni did not correctly remove these brackets from lists with multiple IP addresses.

- Use `replication` credentials when performing divergence check only on PostgreSQL v10 and older (Alexander Kukushkin)

  If `rewind` is enabled, Patroni will again use either `superuser` or `rewind` credentials on newer Postgres versions.

**Bugfixes**

- Fixed missing import of `dateutil.parser` (Wesley Mendes)

  Tests weren't failing only because it was also imported from other modules.

- Ensure that `optime` annotation is a string (Sebastian Hasler)

  In certain cases Patroni was trying to pass it as numeric.

- Better handling of failed `pg_rewind` attempt (Alexander Kukushkin)

  If the primary becomes unavailable during `pg_rewind`, `$PGDATA` will be left in a broken state. Following that, Patroni will remove the data directory even if this is not allowed by the configuration.

- Don't remove `slots` annotations from the leader `ConfigMap`/`Endpoint` when PostgreSQL isn't ready (Alexander Kukushkin)

  If `slots` value isn't passed the annotation will keep the current value.

- Handle concurrency problem with K8s API watchers (Alexander Kukushkin)

  Watchers can become stale under unknown conditions. As a result, `attempt_to_acquire_leader()` could fail with HTTP status code 409. Patroni now resets watcher connections and restarts the watchers in this case.

--------

## Version 2.1.3

Released 2022-02-18

**New features**

- Added support for encrypted TLS keys for [patronictl](/docs/patroni/patronictl#patronictl) (Alexander Kukushkin)

  It could be configured via `ctl.keyfile_password` or the `PATRONI_CTL_KEYFILE_PASSWORD` environment variable.

- Added more metrics to the /metrics endpoint (Alexandre Pereira)

  Specifically, `patroni_pending_restart` and `patroni_is_paused`.

- Make it possible to specify multiple hosts in the standby cluster configuration (Michael Banck)

  A standby cluster that replicates from a Patroni cluster can use client-side failover, available in `libpq` since PostgreSQL v10. The standby leader's `primary_conninfo` and `pg_rewind` connection strings set `target_session_attrs=read-write`. The generated `pgpass` file has one line per host. The standby cluster waits for `pg_control` updates instead of calling `CHECKPOINT` on primary cluster nodes.

**Stability improvements**

- Compatibility with legacy `psycopg2` (Alexander Kukushkin)

  For example, the `psycopg2` installed from Ubuntu 18.04 packages doesn't have the `UndefinedFile` exception yet.

- Restart `etcd3` watcher if all Etcd nodes don't respond (Alexander Kukushkin)

  If the watcher is alive the `get_cluster()` method continues returning stale information even if all Etcd nodes are failing.

- Don't remove the leader lock in the standby cluster while paused (Alexander Kukushkin)

  Previously the lock was maintained only by the node that was running as a primary and not a standby leader.

**Bugfixes**

- Fixed bug in the standby-leader bootstrap (Alexander Kukushkin)

  Patroni was considering bootstrap as failed if Postgres didn't start accepting connections after 60 seconds. The bug was introduced in the 2.1.2 release.

- Fixed bug with failover to a cascading standby (Alexander Kukushkin)

  When figuring out which slots should be created on cascading standby we forgot to take into account that the leader might be absent.

- Fixed small issues in Postgres config validator (Alexander Kukushkin)

  Integer parameters introduced in PostgreSQL v14 were failing to validate because min and max values were quoted in the validator.py

- Use replication credentials when checking leader status (Alexander Kukushkin)

  It could be that the `remove_data_directory_on_diverged_timelines` is set, but there is no `rewind_credentials` defined and superuser access between nodes is not allowed.

- Fixed "port in use" error on REST API certificate replacement (Ants Aasma)

  Certificate replacement could race with a concurrent API request. An active request during replacement caused a port-in-use error. Patroni then remained without an active API server.

- Fixed a bug in cluster bootstrap if passwords contain `%` characters (Bastien Wirtz)

  Bootstrap executes a `DO` block with properly quoted parameters. However, `cursor.execute()` failed when it received an empty parameter list.

- Fixed the "AttributeError: no attribute 'leader'" exception (Hrvoje Milković)

  It could happen if the synchronous mode is enabled and the DCS content was wiped out.

- Fix bug in divergence timeline check (Alexander Kukushkin)

  Patroni incorrectly assumed that timelines had diverged. This did not affect pg_rewind. However, it caused reinitialization of the former leader when pg_rewind was disallowed and `remove_data_directory_on_diverged_timelines` was set.

--------

## Version 2.1.2

Released 2021-12-03

**New features**

- Compatibility with `psycopg>=3.0` (Alexander Kukushkin)

  By default `psycopg2` is preferred. `psycopg\>=3.0` will be used only if `psycopg2` is not available or its version is too old.

- Add `dcs_last_seen` field to the REST API (Michael Banck)

  This field notes the last time (as unix epoch) a cluster member has successfully communicated with the DCS. This is useful to identify and/or analyze network partitions.

- Release the leader lock when `pg_controldata` reports "shut down" (Alexander Kukushkin)

  A slow or failing `archive_command` can delay switchover or shutdown. Patroni now removes the leader key when `pg_controldata` reports PGDATA as cleanly `shut down` and a replica has received all changes. If no replica meets this condition, Patroni retains the old behavior and continues to update the leader lock.

- Add `sslcrldir` connection parameter support (Kostiantyn Nemchenko)

  The new connection parameter was introduced in the PostgreSQL v14.

- Allow setting ACLs for ZNodes in Zookeeper (Alwyn Davis)

  Introduce a new configuration option `zookeeper.set_acls` so that Kazoo will apply a default ACL for each ZNode that it creates.

**Stability improvements**

- Delay the next attempt of recovery till next HA loop (Alexander Kukushkin)

  If Postgres crashed due to out of disk space (for example) and fails to start because of that Patroni is too eagerly trying to recover it flooding logs.

- Add log before demoting, which can take some time (Michael Banck)

  It can take some time for the demote to finish and it might not be obvious from looking at the logs what exactly is going on.

- Improve "I am" status messages (Michael Banck)

  `no action. I am a secondary ({0})` vs `no action. I am ({0}), a secondary`

- Cast to int `wal_keep_segments` when converting to `wal_keep_size` (Jorge Solórzano)

  Global [dynamic configuration](/docs/patroni/config/dynamic#dynamic) can specify `wal_keep_segments` as a string. Python multiplied that string instead of its numeric value. For example, `wal_keep_segments: "100"` became `100100100100100100100100100100100100100100100100MB`.

- Allow switchover only to sync nodes when synchronous replication is enabled (Alexander Kukushkin)

  In addition to that do the leader race only against known synchronous nodes.

- Use cached role as a fallback when Postgres is slow (Alexander Kukushkin)

  Postgres can become so slow that a monitoring query takes more than a few seconds. Patroni did not correctly handle the resulting `statement_timeout` exception. It could fail to demote Postgres on time after leader key expiration or update failure. Patroni now uses the cached `role` after this exception to determine whether Postgres is primary.

- Avoid unnecessary updates of the member ZNode (Alexander Kukushkin)

  If no values have changed in the members data, the update should not happen.

- Optimize checkpoint after promote (Alexander Kukushkin)

  Avoid doing `CHECKPOINT` if the latest timeline is already stored in `pg_control`. It helps to avoid unnecessary `CHECKPOINT` right after initializing the new cluster with `initdb`.

- Prefer members without `nofailover` when picking sync nodes (Alexander Kukushkin)

  Previously, Patroni selected synchronous nodes only by replication lag. A node with `nofailover` had the same chance of selection as any other node. This was confusing and dangerous because primary failure could then prevent automatic failover.

- Remove duplicate hosts from the etcd machine cache (Michael Banck)

  An etcd cluster can advertise incorrectly configured client URLs. Patroni now removes duplicate hosts from its cache.

**Bugfixes**

- Skip temporary replication slots while doing slot management (Alexander Kukushkin)

  From v10, `pg_basebackup` creates a temporary replication slot for WAL streaming. Patroni tried to drop this slot because its name was unknown. Patroni now excludes all temporary slots when querying `pg_stat_replication_slots`.

- Ensure `pg_replication_slot_advance()` doesn't timeout (Alexander Kukushkin)

  Patroni used the default `statement_timeout` for this call. After failure, the call was very unlikely to recover. This increased `pg_wal` size and caused `pg_catalog` bloat.

- The `/status` wasn't updated on demote (Alexander Kukushkin)

  After demoting PostgreSQL the old leader updates the last LSN in DCS. Starting from `2.1.0` the new `/status` key was introduced, but the optime was still written to the `/optime/leader`.

- Handle DCS exceptions when demoting (Alexander Kukushkin)

  Patroni demotes the master after a leader lock update fails. If DCS then becomes completely unavailable, `get_cluster()` can raise an exception. Incorrect handling left Postgres stopped until DCS recovered.

- The `use_unix_socket_repl` didn't work is some cases (Alexander Kukushkin)

  Specifically, if `postgresql.unix_socket_directories` is not set. In this case Patroni is supposed to use the default value from `libpq`.

- Fix a few issues with Patroni REST API (Alexander Kukushkin)

  An undefined `clusters_unlocked` sometimes caused exceptions in `GET /metrics`. Error handling also assumed that `connect_address` always contained two elements. IPv6 addresses can contain more elements.

- Wait for newly promoted node to finish recovery before deciding to rewind (Alexander Kukushkin)

  It could take some time before the actual promote happens and the new timeline is created. Without waiting replicas could come to the conclusion that rewind isn't required.

- Handle missing timelines in a history file when deciding to rewind (Alexander Kukushkin)

  If the current replica timeline is missing in the history file on the primary the replica was falsely assuming that rewind isn't required.

--------

## Version 2.1.1

Released 2021-08-19

**New features**

- Support for ETCD SRV name suffix (David Pavlicek)

  Etcd allows to differentiate between multiple Etcd clusters under the same domain and from now on Patroni also supports it.

- Enrich history with the new leader (huiyalin525)

  It adds the new column to the `patronictl history` output.

- Make the CA bundle configurable for in-cluster Kubernetes config (Aron Parsons)

  By default Patroni is using `/var/run/secrets/kubernetes.io/serviceaccount/ca.crt` and this new feature allows specifying the custom `kubernetes.cacert`.

- Support dynamically registering/deregistering as a Consul service and changing tags (Tommy Li)

  Previously it required Patroni restart.

**Bugfixes**

- Avoid unnecessary reload of REST API (Alexander Kukushkin)

  The previous release added a feature of reloading REST API certificates if changed on disk. Unfortunately, the reload was happening unconditionally right after the start.

- Don't resolve cluster members when `etcd.use_proxies` is set (Alexander Kukushkin)

  At startup, Patroni queries the Etcd member list to check cluster health. It also resolved member hostnames. This was unnecessary through a proxy and caused unnecessary warnings.

- Skip rows with NULL values in the `pg_stat_replication` (Alexander Kukushkin)

  It seems that the `pg_stat_replication` view could contain NULL values in the `replay_lsn`, `flush_lsn`, or `write_lsn` fields even when `state = 'streaming'`.

--------

## Version 2.1.0

Released 2021-07-06

This version adds PostgreSQL v14 compatibility and preserves logical replication slots across failover and switchover. It adds REST API allowlists and reduces normal logs to one line per heartbeat.

**New features**

- Compatibility with PostgreSQL v14 (Alexander Kukushkin)

  Unpause WAL replay if Patroni is not in a "pause" mode itself. It could be "paused" due to the change of certain parameters like for example `max_connections` on the primary.

- Failover logical slots (Alexander Kukushkin)

  Logical replication slots can now survive failover and switchover on PostgreSQL v11+. Patroni copies the slot from primary to replica with a restart. It then advances the slot with [pg_replication_slot_advance()](https://www.postgresql.org/docs/11/functions-admin.html#id-1.5.8.31.8.5.2.2.8.1.1). Thus, the slot exists before failover and no events should be lost. Some events can be delivered more than once.

- Implemented allowlist for Patroni REST API (Alexander Kukushkin)

  If configured, only IP's that matching rules would be allowed to call unsafe endpoints. In addition to that, it is possible to automatically include IP's of members of the cluster to the list.

- Added support of replication connections via unix socket (Mohamad El-Rifai)

  Previously Patroni was always using TCP for replication connection what could cause some issues with SSL verification. Using unix sockets allows exempt replication user from SSL verification.

- Health check on user-defined tags (Arman Jafari Tehrani)

  You can specify any number of custom tags with the [predefined tags:](/docs/patroni/config/yaml#tags_settings). These appear in `patronictl list` and the REST API. Custom tags can now be used in health checks.

- Added Prometheus `/metrics` endpoint (Mark Mercado, Michael Banck)

  The endpoint exposing the same metrics as `/patroni`.

- Reduced chattiness of Patroni logs (Alexander Kukushkin)

  When everything goes normal, only one line will be written for every run of HA loop.

**Breaking changes**

- The old `permanent logical replication slots` feature will no longer work with PostgreSQL v10 and older (Alexander Kukushkin)

  The strategy of creating the logical slots after performing a promotion can't guaranty that no logical events are lost and therefore disabled.

- The `/leader` endpoint always returns 200 if the node holds the lock (Alexander Kukushkin)

  Previously, standby cluster promotion required changes to load-balancer health checks. These changes were inconvenient and easy to forget. The `/leader` endpoint now returns 200 whether the cluster is normal or a [standby_cluster](/docs/patroni/standby_cluster#standby_cluster).

**Improvements in Raft support**

- Reliable support of Raft traffic encryption (Alexander Kukushkin)

  Due to the different issues in the `PySyncObj` the encryption support was very unstable

- Handle DNS issues in Raft implementation (Alexander Kukushkin)

  `self_addr` and `partner_addrs` can use DNS names instead of IP addresses. `PySyncObj` previously resolved these names only when creating the object. This caused problems when a node returned with a different IP address.

**Stability improvements**

- Compatibility with `psycopg2-2.9+` (Alexander Kukushkin)

  In `psycopg2` the `autocommit = True` is ignored in the `with connection` block, which breaks replication protocol connections.

- Fix excessive HA loop runs with Zookeeper (Alexander Kukushkin)

  Update of member ZNodes was causing a chain reaction and resulted in running the HA loops multiple times in a row.

- Reload if REST API certificate is changed on disk (Michael Todorovic)

  If the REST API certificate file was updated in place Patroni didn't perform a reload.

- Don't create pgpass dir if kerberos auth is used (Kostiantyn Nemchenko)

  Kerberos and password authentication are mutually exclusive.

- Fixed little issues with custom bootstrap (Alexander Kukushkin)

  Start Postgres with `hot_standby=off` only when we do a PITR and restart it after PITR is done.

**Bugfixes**

- Compatibility with `kazoo-2.7+` (Alexander Kukushkin)

  Patroni handles retries itself. It depends on the old `kazoo` behavior that immediately discards Zookeeper requests when no connection is available.

- Explicitly request the version of Etcd v3 cluster when it is known that we are connecting via proxy (Alexander Kukushkin)

  Patroni connects to Etcd v3 through gPRC-gateway. The cluster version determines the endpoint: `/v3`, `/v3beta`, or `/v3alpha`. Previously, Patroni resolved the version only during topology discovery. Connections through a proxy did not perform that discovery.

--------

## Version 2.0.2

Released 2021-02-22

**New features**

- Ability to ignore externally managed replication slots (James Coleman)

  Patroni tries to remove unknown replication slots. Some slots need external management. You can now configure slots that Patroni must retain.

- Added support for cipher suite limitation for REST API (Gunnar "Nick" Bluth)

  It could be configured via `restapi.ciphers` or the `PATRONI_RESTAPI_CIPHERS` environment variable.

- Added support for encrypted TLS keys for REST API (Jonathan S. Katz)

  It could be configured via `restapi.keyfile_password` or the `PATRONI_RESTAPI_KEYFILE_PASSWORD` environment variable.

- Constant time comparison of REST API authentication credentials (Alex Brasetvik)

  Use `hmac.compare_digest()` instead of `==`, which is vulnerable to timing attack.

- Choose synchronous nodes based on replication lag (Krishna Sarabu)

  If the replication lag on the synchronous node starts exceeding the configured threshold it could be demoted to asynchronous and/or replaced by the other node. Behaviour is controlled with `maximum_lag_on_syncnode`.

**Stability improvements**

- Start postgres with `hot_standby = off` when doing custom bootstrap (Igor Yanchenko)

  During custom bootstrap, Patroni restores the basebackup, starts Postgres, and waits for recovery. Some standby parameters cannot be smaller than their primary values. If a value restored from WAL exceeds the configured value, Postgres panics and stops. Custom bootstrap now runs without `hot_standby` mode to avoid this problem.

- Warn the user if the required watchdog is not healthy (Nicolas Thauvin)

  When the watchdog device is not writable or missing in required mode, the member cannot be promoted. Added a warning to show the user where to search for this misconfiguration.

- Better verbosity for single-user mode recovery (Alexander Kukushkin)

  After an unclean PostgreSQL shutdown, Patroni can perform crash recovery in single-user mode. Recovery failures, such as insufficient disk space, previously did not expose their errors.

- Added compatibility with `python-consul2` module (Alexander Kukushkin, Wilfried Roset)

  `python-consul` has not been maintained for several years. A fork provides new features and bug fixes.

- Don't use `bypass_api_service` when running [patronictl](/docs/patroni/patronictl#patronictl) (Alexander Kukushkin)

  A K8s pod outside the `default` namespace might lack permission to query the [kubernetes](/docs/patroni/kubernetes#kubernetes) endpoint. Patroni then warns and ignores `bypass_api_service`. This warning was unnecessary for [patronictl](/docs/patroni/patronictl#patronictl).

- Create `raft.data_dir` if it doesn't exists or make sure that it is writable (Mark Mercado)

  Improves user-friendliness and usability.

**Bugfixes**

- Don't interrupt restart or promote if lost leader lock in pause (Alexander Kukushkin)

  In pause it is allowed to run postgres as primary without lock.

- Fixed issue with `shutdown_request()` in the REST API (Nicolas Limage)

  Patroni overrides several `HTTPServer` methods to improve SSL handling and delay the handshake until the thread starts. It previously omitted `shutdown_request()`.

- Fixed issue with sleep time when using Zookeeper (Alexander Kukushkin)

  There were chances that Patroni was sleeping up to twice longer between running HA code.

- Fixed invalid `os.symlink()` calls when moving data directory after failed bootstrap (Andrew L'Ecuyer)

  After bootstrap failure, Patroni renames the data directory, pg_wal, and all tablespaces. It updates symlinks to keep the filesystem consistent. Symlink creation failed because the `src` and `dst` arguments were reversed.

- Fixed bug in the post_bootstrap() method (Alexander Kukushkin)

  If the superuser password wasn't configured Patroni was failing to call the `post_init` script and therefore the whole bootstrap was failing.

- Fixed an issues with pg_rewind in the standby cluster (Alexander Kukushkin)

  If the superuser name is different from Postgres, the `pg_rewind` in the standby cluster was failing because the connection string didn't contain the database name.

- Exit only if authentication with Etcd v3 explicitly failed (Alexander Kukushkin)

  At startup, Patroni discovers the Etcd topology and authenticates if necessary. Authentication against an inaccessible server previously caused failure. Patroni now retries with the next node.

- Handle case with psutil cmdline() returning empty list (Alexander Kukushkin)

  Zombie processes are still postmasters children, but they don't have cmdline()

- Treat `PATRONI_KUBERNETES_USE_ENDPOINTS` environment variable as boolean (Alexander Kukushkin)

  Not doing so was making impossible disabling `kubernetes.use_endpoints` via environment.

- Improve handling of concurrent endpoint update errors (Alexander Kukushkin)

  Patroni will explicitly query the current endpoint object, verify that the current pod still holds the leader lock and repeat the update.

--------

## Version 2.0.1

Released 2020-10-01

**New features**

- Use `more` as pager in `patronictl edit-config` if `less` is not available (Pavel Golub)

  On Windows it would be the `more.com`. In addition to that, `cdiff` was changed to `ydiff` in `requirements.txt`, but [patronictl](/docs/patroni/patronictl#patronictl) still supports both for compatibility.

- Added support of `raft` `bind_addr` and `password` (Alexander Kukushkin)

  `raft.bind_addr` might be useful when running behind NAT. `raft.password` enables traffic encryption (requires the `cryptography` module).

- Added `sslpassword` connection parameter support (Kostiantyn Nemchenko)

  The connection parameter was introduced in PostgreSQL 13.

**Stability improvements**

- Changed the behavior in pause (Alexander Kukushkin)

  1.  Patroni will not call the `bootstrap` method if the `PGDATA` directory is missing/empty.
  2.  Patroni will not exit on sysid mismatch in pause, only log a warning.
  3.  In pause mode, a node accepting writes will not try to acquire the leader key if its sysid differs from the initialize key.

- Apply `master_start_timeout` when executing crash recovery (Alexander Kukushkin)

  If Postgres crashed on the leader node, Patroni does a crash-recovery by starting Postgres in single-user mode. During the crash-recovery the leader lock is being updated. If the crash-recovery didn't finish in `master_start_timeout` seconds, Patroni will stop it forcefully and release the leader lock.

- Removed the `secure` extra from the `urllib3` requirements (Alexander Kukushkin)

  The only reason for adding it there was the `ipaddress` dependency for python 2.7.

**Bugfixes**

- Fixed a bug in the `Kubernetes.update_leader()` (Alexander Kukushkin)

  An unhandled exception was preventing demoting the primary when the update of the leader object failed.

- Fixed hanging [patronictl](/docs/patroni/patronictl#patronictl) when RAFT is being used (Alexander Kukushkin)

  When using [patronictl](/docs/patroni/patronictl#patronictl) with Patroni config, `self_addr` should be added to the `partner_addrs`.

- Fixed bug in `get_guc_value()` (Alexander Kukushkin)

  Patroni was failing to get the value of `restore_command` on PostgreSQL 12, therefore fetching missing WALs for `pg_rewind` didn't work.

--------

## Version 2.0.0

Released 2020-09-02

This version improves PostgreSQL 13 compatibility and `pg_rewind` handling. It adds multiple synchronous standbys, Etcd v3, and pure RAFT operation without Etcd, Consul, or Zookeeper. It also supports an optional `pre_promote` fencing script.

**PostgreSQL 13 support**

- Don't fire `on_reload` when promoting to `standby_leader` on PostgreSQL 13+ (Alexander Kukushkin)

  When promoting to `standby_leader` we change `primary_conninfo`, update the role and reload Postgres. Since `on_role_change` and `on_reload` effectively duplicate each other, Patroni will call only `on_role_change`.

- Added support for `gssencmode` and `channel_binding` connection parameters (Alexander Kukushkin)

  PostgreSQL 12 introduced `gssencmode` and 13 `channel_binding` connection parameters and now they can be used if defined in the `postgresql.authentication` section.

- Handle renaming of `wal_keep_segments` to `wal_keep_size` (Alexander Kukushkin)

  In case of misconfiguration (`wal_keep_segments` on 13 and `wal_keep_size` on older versions) Patroni will automatically adjust the configuration.

- Use `pg_rewind` with `--restore-target-wal` on 13 if possible (Alexander Kukushkin)

  On PostgreSQL 13 Patroni checks if `restore_command` is configured and tells `pg_rewind` to use it.

**New features**

- \[BETA\] Implemented support of Patroni on pure RAFT (Alexander Kukushkin)

  Patroni can run without dependencies such as Etcd, Consul, or Zookeeper. HA requires three Patroni nodes, or two Patroni nodes and one `patroni_raft_controller` node. See the [documentation](/docs/patroni/config/yaml#raft_settings).

- \[BETA\] Implemented support for Etcd v3 protocol via gPRC-gateway (Alexander Kukushkin)

  Etcd 3.0 was released more than four years before this release. Etcd 3.4 disables v2 by default, and future versions might remove v2. Patroni now supports Etcd v3. To use it, explicitly create an `etcd3` section in the Patroni configuration file.

- Supporting multiple synchronous standbys (Krishna Sarabu)

  It allows running a cluster with more than one synchronous replicas. The maximum number of synchronous replicas is controlled by the new parameter `synchronous_node_count`. It is set to 1 by default and has no effect when the [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) is set to `off`.

- Added possibility to call the `pre_promote` script (Sergey Dudoladov)

  Unlike callbacks, the `pre_promote` script is called synchronously after acquiring the leader lock, but before promoting Postgres. If the script fails or exits with a non-zero exitcode, the current node will release the leader lock.

- Added support for configuration directories (Floris van Nee)

  YAML files in the directory loaded and applied in alphabetical order.

- Advanced validation of PostgreSQL parameters (Alexander Kukushkin)

  The current PostgreSQL version might not support the parameter, or its value might be incorrect. Patroni will remove the parameter or try to correct its value.

- Wake up the main thread when the forced checkpoint after promote completed (Alexander Kukushkin)

  Replicas wait for checkpoint information in the leader's DCS member key. Patroni normally updates this key once per HA loop. Without waking the main thread, replicas could wait up to `loop_wait` extra seconds.

- Use of `pg_stat_wal_receiver` view on 9.6+ (Alexander Kukushkin)

  The view contains up-to-date values of `primary_conninfo` and `primary_slot_name`, while the contents of `recovery.conf` could be stale.

- Improved handing of IPv6 addresses in the Patroni config file (Mateusz Kowalski)

  The IPv6 address is supposed to be enclosed into square brackets, but Patroni was expecting to get it plain. Now both formats are supported.

- Added Consul `service_tags` configuration parameter (Robert Edström)

  They are useful for dynamic service discovery, for example by load balancers.

- Implemented SSL support for Zookeeper (Kostiantyn Nemchenko)

  It requires `kazoo>=2.6.0`.

- Implemented `no_params` option for custom bootstrap method (Kostiantyn Nemchenko)

  It allows calling `wal-g`, `pgBackRest` and other backup tools without wrapping them into shell scripts.

- Move WAL and tablespaces after a failed init (Feike Steenbergen)

  During `reinit`, Patroni already removed `PGDATA`, the symlinked WAL directory, and tablespaces. The `move_data_directory()` method now also renames the WAL directory and tablespaces. It updates their symlinks in PGDATA.

**Improved in pg_rewind support**

- Improved timeline divergence check (Alexander Kukushkin)

  Rewind is unnecessary if the replica replay location is not ahead of the switchpoint. It is also unnecessary if the former primary's checkpoint record ends at the switchpoint. Patroni uses `pg_waldump` output to find the end of the checkpoint record.

- Try to fetch missing WAL if `pg_rewind` complains about it (Alexander Kukushkin)

  A WAL segment required by `pg_rewind` can be absent from `pg_wal`. Then `pg_rewind` cannot find the checkpoint before timeline divergence. From PostgreSQL 13, `pg_rewind` can fetch missing WALs with `restore_command`. For older versions, Patroni parses errors from a failed rewind and calls `restore_command` to fetch the missing WAL.

- Detect a new timeline in the standby cluster and trigger rewind/reinitialize if necessary (Alexander Kukushkin)

  The [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) is decoupled from the primary cluster and therefore doesn't immediately know about leader elections and timeline switches. In order to detect the fact, the `standby_leader` periodically checks for new history files in `pg_wal`.

- Shorten and beautify history log output (Alexander Kukushkin)

  Patroni can log the primary history file while deciding whether `pg_rewind` is necessary. This file grows with every failover or switchover, and most lines eventually become irrelevant to the check. Patroni now shows only 3 lines before the current replica timeline and 2 lines after it.

**Improvements on K8s**

- Get rid of [kubernetes](/docs/patroni/kubernetes#kubernetes) python module (Alexander Kukushkin)

  The official python kubernetes client contains a lot of auto-generated code and therefore very heavy. Patroni uses only a small fraction of K8s API endpoints and implementing support for them wasn't hard.

- Make it possible to bypass the [kubernetes](/docs/patroni/kubernetes#kubernetes) service (Alexander Kukushkin)

  On K8s, Patroni normally contacts the API through the [kubernetes](/docs/patroni/kubernetes#kubernetes) service. `KUBERNETES_SERVICE_HOST` supplies its address. The [kubernetes](/docs/patroni/kubernetes#kubernetes) service uses `kube-proxy`, which routes traffic through a userspace program or `iptables`, depending on configuration. Direct connections to K8s master nodes permit a better retry strategy. They reduce the risk of Postgres demotion during K8s master upgrades.

- Sync HA loops of all pods of a Patroni cluster (Alexander Kukushkin)

  Not doing so was increasing failure detection time from `ttl` to `ttl + loop_wait`.

- Populate `references` and `nodename` in the subsets addresses on K8s (Alexander Kukushkin)

  Some load-balancers are relying on this information.

- Fix possible race conditions in the `update_leader()` (Alexander Kukushkin)

  The concurrent update of the leader configmap or endpoint happening outside of Patroni might cause the `update_leader()` call to fail. In this case Patroni rechecks that the current node is still owning the leader lock and repeats the update.

- Explicitly disallow patching non-existent config (Alexander Kukushkin)

  Outside [kubernetes](/docs/patroni/kubernetes#kubernetes), PATCH on nonexistent configuration fails because `cluster.config` is `None`. Kubernetes instead created the config annotation. This prevented Patroni from writing bootstrap configuration after bootstrap completed.

- Fix bug in [pause](/docs/patroni/pause#pause) (Alexander Kukushkin)

  Replicas were removing `primary_conninfo` and restarting Postgres when the leader key was absent, but they should do nothing.

**Improvements in REST API**

- Defer TLS handshake until worker thread has started (Alexander Kukushkin, Ben Harris)

  If the TLS handshake was done in the API thread and the client-side didn't send any data, the API thread was blocked (risking DoS).

- Check `basic-auth` independently from client certificate in REST API (Alexander Kukushkin)

  Previously only the client certificate was validated. Doing two checks independently is an absolutely valid use-case.

- Write double `CRLF` after HTTP headers of the `OPTIONS` request (Sergey Burladyan)

  HAProxy was happy with a single `CRLF`, while Consul health-check complained about broken connection and unexpected EOF.

- `GET /cluster` was showing stale members info for Zookeeper (Alexander Kukushkin)

  The endpoint used Patroni's internal cluster view. This did not affect Patroni itself. External responses, however, need current information, especially replication lag.

- Fixed health-checks for standby cluster (Alexander Kukushkin)

  The `GET /standby-leader` for a master and `GET /master` for a `standby_leader` were incorrectly responding with 200.

- Implemented `DELETE /switchover` (Alexander Kukushkin)

  The REST API call deletes the scheduled switchover.

- Created `/readiness` and `/liveness` endpoints (Alexander Kukushkin)

  They could be useful to eliminate "unhealthy" pods from subsets addresses when the K8s service is used with label selectors.

- Enhanced `GET /replica` and `GET /async` REST API health-checks (Krishna Sarabu, Alexander Kukushkin)

  Checks support the optional `?lag=<max-lag>` argument. They return 200 only when lag is below the supplied value. Leader WAL position information updates only every `loop_wait` seconds.

- Added support for user defined HTTP headers in the REST API response (Yogesh Sharma)

  This feature might be useful if requests are made from a browser.

**Improvements in patronictl**

- Don't try to call non-existing leader in `patronictl pause` (Alexander Kukushkin)

  While pausing a cluster without a leader on K8s, [patronictl](/docs/patroni/patronictl#patronictl) was showing warnings that member "None" could not be accessed.

- Handle the case when member `conn_url` is missing (Alexander Kukushkin)

  On K8s it is possible that the pod doesn't have the necessary annotations because Patroni is not yet running. It was making [patronictl](/docs/patroni/patronictl#patronictl) to fail.

- Added ability to print ASCII cluster topology (Maxim Fedotov, Alexander Kukushkin)

  It is very useful to get overview of the cluster with cascading replication.

- Implement `patronictl flush switchover` (Alexander Kukushkin)

  Before that `patronictl flush` only supported cancelling scheduled restarts.

**Bugfixes**

- Attribute error during bootstrap of the cluster with existing PGDATA (Krishna Sarabu)

  When trying to create/update the `/history` key, Patroni was accessing the `ClusterConfig` object which wasn't created in DCS yet.

- Improved exception handling in Consul (Alexander Kukushkin)

  Unhandled exception in the `touch_member()` method caused the whole Patroni process to crash.

- Enforce `synchronous_commit=local` for the `post_init` script (Alexander Kukushkin)

  Patroni already enforced this setting when creating `replication` and `rewind` users, but omitted it for `post_init`. Bootstrap in [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) could not finish unless the script set it itself.

- Increased `maxsize` in the Consul pool manager (ponvenkates)

  With the default `size=1` some warnings were generated.

- Patroni was wrongly reporting Postgres as running (Alexander Kukushkin)

  The state wasn't updated when for example Postgres crashed due to an out-of-disk error.

- Put `*` into `pgpass` instead of missing or empty values (Alexander Kukushkin)

  If for example the `standby_cluster.port` is not specified, the `pgpass` file was incorrectly generated.

- Skip physical replication slot creation on the leader node with special characters (Krishna Sarabu)

  Patroni appeared to be creating a dormant slot (when `slots` defined) for the leader node when the name contained special chars such as '-' (for e.g. "abc-us-1").

- Avoid removing non-existent `pg_hba.conf` in the custom bootstrap (Krishna Sarabu)

  Patroni was failing if `pg_hba.conf` happened to be located outside of the `pgdata` dir after custom bootstrap.

--------

## Version 1.6.5

Released 2020-08-23

**New features**

- Master stop timeout (Krishna Sarabu)

  `master_stop_timeout` limits how many seconds Patroni can wait for Postgres to stop. It applies only with [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) enabled and a value greater than 0. Patroni sends `SIGKILL` to postmaster if shutdown exceeds this limit. Choose the value according to your durability and availability requirements. An unset or non-positive value has no effect.

- Don't create permanent physical slot with name of the primary (Alexander Kukushkin)

  The primary can recycle WAL segments while a replica is down. Static clusters with fixed node names and counts can now avoid this problem. List all node names in `slots`. The primary then retains each slot while its node is down and absent from DCS.

- First draft of Config Validator (Igor Yanchenko)

  Use `patroni --validate-config patroni.yaml` in order to validate Patroni configuration.

- Possibility to configure max length of timelines history (Krishna Sarabu)

  Patroni stores failover and switchover history in the DCS `/history` key. This key grows over time, although usually only recent entries are useful. `max_timelines_history` sets the maximum number of history items retained in DCS.

- Kazoo 2.7.0 compatibility (Danyal Prout)

  Some non-public methods in Kazoo changed their signatures, but Patroni was relying on them.

**Improvements in patronictl**

- Show member tags (Kostiantyn Nemchenko, Alexander Kukushkin)

  Tags are configured individually for every node and there was no easy way to get an overview of them

- Improve members output (Alexander Kukushkin)

  The redundant cluster name won't be shown anymore on every line, only in the table header.

``` bash
$ patronictl list
+ Cluster: batman (6813309862653668387) +---------+----+-----------+---------------------+
|    Member   |      Host      |  Role  |  State  | TL | Lag in MB | Tags                |
+-------------+----------------+--------+---------+----+-----------+---------------------+
| postgresql0 | 127.0.0.1:5432 | Leader | running |  3 |           | clonefrom: true     |
|             |                |        |         |    |           | noloadbalance: true |
|             |                |        |         |    |           | nosync: true        |
+-------------+----------------+--------+---------+----+-----------+---------------------+
| postgresql1 | 127.0.0.1:5433 |        | running |  3 |       0.0 |                     |
+-------------+----------------+--------+---------+----+-----------+---------------------+
```

- Fail if a config file is specified explicitly but not found (Kaarel Moppel)

  Previously [patronictl](/docs/patroni/patronictl#patronictl) was only reporting a `DEBUG` message.

- Solved the problem of not initialized K8s pod breaking patronictl (Alexander Kukushkin)

  Patroni uses pod annotations on K8s. A starting or stopping pod can lack valid annotations. This previously caused [patronictl](/docs/patroni/patronictl#patronictl) to raise an exception.

**Stability improvements**

- Apply 1 second backoff if LIST call to K8s API server failed (Alexander Kukushkin)

  It is mostly necessary to avoid flooding logs, but also helps to prevent starvation of the main thread.

- Retry if the `retry-after` HTTP header is returned by K8s API (Alexander Kukushkin)

  If the K8s API server is overwhelmed with requests it might ask to retry.

- Scrub `KUBERNETES_` environment from the postmaster (Feike Steenbergen)

  PostgreSQL does not require `KUBERNETES_` environment variables. Exposing them to postmaster also exposes them to backends and regular database users, for example through pl/perl.

- Clean up tablespaces on reinitialize (Krishna Sarabu)

  During reinit, Patroni was removing only `PGDATA` and leaving user-defined tablespace directories. This is causing Patroni to loop in reinit. The previous workaround for the problem was implementing the [custom bootstrap](/docs/patroni/replica_bootstrap#custom_bootstrap) script.

- Explicitly execute `CHECKPOINT` after promote happened (Alexander Kukushkin)

  It helps to reduce the time before the new primary is usable for `pg_rewind`.

- Smart refresh of Etcd members (Alexander Kukushkin)

  If a request fails on every Etcd member, Patroni rechecks `A` or `SRV` records for changed IP addresses or hosts before retrying.

- Skip missing values from `pg_controldata` (Feike Steenbergen)

  Values are missing when trying to use binaries of a version that doesn't match PGDATA. Patroni will try to start Postgres anyway, and Postgres will complain that the major version doesn't match and abort with an error.

**Bugfixes**

- Disable SSL verification for Consul when required (Julien Riou)

  Starting from a certain version of `urllib3`, the `cert_reqs` must be explicitly set to `ssl.CERT_NONE` in order to effectively disable SSL verification.

- Avoid opening replication connection on every cycle of HA loop (Alexander Kukushkin)

  Regression was introduced in 1.6.4.

- Call `on_role_change` callback on failed primary (Alexander Kukushkin)

  In certain cases it could lead to the virtual IP remaining attached to the old primary. Regression was introduced in 1.4.5.

- Reset rewind state if postgres started after successful pg_rewind (Alexander Kukushkin)

  As a result of this bug Patroni was starting up manually shut down postgres in the pause mode.

- Convert `recovery_min_apply_delay` to `ms` when checking `recovery.conf`

  Patroni was indefinitely restarting replica if `recovery_min_apply_delay` was configured on PostgreSQL older than 12.

- PyInstaller compatibility (Alexander Kukushkin)

  PyInstaller freezes (packages) Python applications into stand-alone executables. The compatibility was broken when we switched to the `spawn` method instead of `fork` for `multiprocessing`.

--------

## Version 1.6.4

Released 2020-01-27

**New features**

- Implemented `--wait` option for `patronictl reinit` (Igor Yanchenko)

  Patronictl will wait for `reinit` to finish is the `--wait` option is used.

- Further improvements of Windows support (Igor Yanchenko, Alexander Kukushkin)

  1.  All shell scripts which are used for integration testing are rewritten in python
  2.  The `pg_ctl kill` will be used to stop postgres on non posix systems
  3.  Don't try to use unix-domain sockets

**Stability improvements**

- Make sure `unix_socket_directories` and `stats_temp_directory` exist (Igor Yanchenko)

  Upon the start of Patroni and Postgres make sure that `unix_socket_directories` and `stats_temp_directory` exist or try to create them. Patroni will exit if failed to create them.

- Make sure `postgresql.pgpass` is located in the place where Patroni has write access (Igor Yanchenko)

  In case if it doesn't have a write access Patroni will exit with exception.

- Disable Consul `serfHealth` check by default (Kostiantyn Nemchenko)

  Even minor network problems can make `serfHealth` fail and invalidate every session associated with the node. The leader key then disappears much earlier than `ttl`. This causes unnecessary replica restarts and possibly primary demotion.

- Configure tcp keepalives for connections to K8s API (Alexander Kukushkin)

  In case if we get nothing from the socket after TTL seconds it can be considered dead.

- Avoid logging of passwords on user creation (Alexander Kukushkin)

  PostgreSQL can log a rejected password, or log it when logging is verbose or unconfigured. Before creating or updating users, Patroni sets safe values for `log_statement`, `log_min_duration_statement`, and `log_min_error_statement`.

**Bugfixes**

- Use `restore_command` from the [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) config on cascading replicas (Alexander Kukushkin)

  The `standby_leader` was already doing it from the beginning the feature existed. Not doing the same on replicas might prevent them from catching up with standby leader.

- Update timeline reported by the standby cluster (Alexander Kukushkin)

  In case of timeline switch the standby cluster was correctly replicating from the primary but [patronictl](/docs/patroni/patronictl#patronictl) was reporting the old timeline.

- Allow certain recovery parameters be defined in the custom_conf (Alexander Kukushkin)

  During replica recovery validation, Patroni can skip `archive_cleanup_command`, `promote_trigger_file`, `recovery_end_command`, `recovery_min_apply_delay`, and `restore_command`. This applies when they are absent from Patroni configuration and defined in files other than `postgresql.auto.conf` or `postgresql.conf`.

- Improve handling of postgresql parameters with period in its name (Alexander Kukushkin)

  Such parameters could be defined by extensions where the unit is not necessarily a string. Changing the value might require a restart (for example `pg_stat_statements.max`).

- Improve exception handling during shutdown (Alexander Kukushkin)

  During shutdown Patroni is trying to update its status in the DCS. If the DCS is inaccessible an exception might be raised. Lack of exception handling was preventing logger thread from stopping.

--------

## Version 1.6.3

Released 2019-12-05

**Bugfixes**

- Don't expose password when running `pg_rewind` (Alexander Kukushkin)

  Bug was introduced in the [\#1301](https://github.com/patroni/patroni/pull/1301)

- Apply connection parameters specified in the `postgresql.authentication` to `pg_basebackup` and custom replica creation methods (Alexander Kukushkin)

  They were relying on url-like connection string and therefore parameters never applied.

--------

## Version 1.6.2

Released 2019-12-05

**New features**

- Implemented `patroni --version` (Igor Yanchenko)

  It prints the current version of Patroni and exits.

- Set the `user-agent` http header for all http requests (Alexander Kukushkin)

  Patroni is communicating with Consul, Etcd, and Kubernetes API via the http protocol. Having a specifically crafted `user-agent` (example: `Patroni/1.6.2 Python/3.6.8 Linux`) might be useful for debugging and monitoring.

- Make it possible to configure log level for exception tracebacks (Igor Yanchenko)

  If you set `log.traceback_level=DEBUG` the tracebacks will be visible only when `log.level=DEBUG`. The default behavior remains the same.

**Stability improvements**

- Avoid importing all DCS modules when searching for the module required by the config file (Alexander Kukushkin)

  Patroni now imports only the DCS modules required by its configuration, for example Zookeeper without Etcd, Consul, or Kubernetes. This reduces memory use and removes unnecessary INFO messages such as `Failed to import smth`.

- Removed python `requests` module from explicit requirements (Alexander Kukushkin)

  It wasn't used for anything critical, but causing a lot of problems when the new version of `urllib3` is released.

- Improve handling of `etcd.hosts` written as a comma-separated string instead of YAML array (Igor Yanchenko)

  Previously it was failing when written in format `host1:port1, host2:port2` (the space character after the comma).

**Usability improvements**

- Don't force users to choose members from an empty list in [patronictl](/docs/patroni/patronictl#patronictl) (Igor Yanchenko)

  If the user provides a wrong cluster name, we will raise an exception rather than ask to choose a member from an empty list.

- Make the error message more helpful if the REST API cannot bind (Igor Yanchenko)

  For an inexperienced user it might be hard to figure out what is wrong from the Python stacktrace.

**Bugfixes**

- Fix calculation of `wal_buffers` (Alexander Kukushkin)

  The base unit has been changed from 8 kB blocks to bytes in PostgreSQL 11.

- Use `passfile` in `primary_conninfo` only on PostgreSQL 10+ (Alexander Kukushkin)

  On older versions there is no guarantee that `passfile` will work, unless the latest version of `libpq` is installed.

--------

## Version 1.6.1

Released 2019-11-15

**New features**

- Added `PATRONICTL_CONFIG_FILE` environment variable (msvechla)

  It allows configuring the `--config-file` argument for [patronictl](/docs/patroni/patronictl#patronictl) from the environment.

- Implement `patronictl history` (Alexander Kukushkin)

  It shows the history of failovers/switchovers.

- Pass `-c statement_timeout=0` in `PGOPTIONS` when doing `pg_rewind` (Alexander Kukushkin)

  It protects from the case when `statement_timeout` on the server is set to some small value and one of the statements executed by pg_rewind is canceled.

- Allow lower values for PostgreSQL configuration (Soulou)

  Patroni didn't allow some of the PostgreSQL configuration parameters be set smaller than some hardcoded values. Now the minimal allowed values are smaller, default values have not been changed.

- Allow for certificate-based authentication (Jonathan S. Katz)

  This feature enables certificate-based authentication for superuser, replication, rewind accounts and allows the user to specify the `sslmode` they wish to connect with.

- Use the `passfile` in the `primary_conninfo` instead of password (Alexander Kukushkin)

  It allows to avoid setting `600` permissions on postgresql.conf

- Perform `pg_ctl reload` regardless of config changes (Alexander Kukushkin)

  Some configuration files are outside Patroni control. A REST API reload or SIGHUP to Patroni is expected to reload Postgres too. Previously, Postgres did not reload unless Patroni's `postgresql` section changed.

- Compare all recovery parameters, not only `primary_conninfo` (Alexander Kukushkin)

  Previously the `check_recovery_conf()` method was only checking whether `primary_conninfo` has changed, never taking into account all other recovery parameters.

- Make it possible to apply some recovery parameters without restart (Alexander Kukushkin)

  Starting from PostgreSQL 12 the following recovery parameters could be changed without restart: `archive_cleanup_command`, `promote_trigger_file`, `recovery_end_command`, and `recovery_min_apply_delay`. In future Postgres releases this list will be extended and Patroni will support it automatically.

- Make it possible to change `use_slots` online (Alexander Kukushkin)

  Previously it required restarting Patroni and removing slots manually.

- Remove only `PATRONI_` prefixed environment variables when starting up Postgres (Cody Coons)

  It will solve a lot of problems with running different Foreign Data Wrappers.

**Stability improvements**

- Use LIST + WATCH when working with K8s API (Alexander Kukushkin)

  It allows to efficiently receive object changes (pods, endpoints/configmaps) and makes less stress on K8s master nodes.

- Improve the workflow when PGDATA is not empty during bootstrap (Alexander Kukushkin)

  Like `initdb`, Patroni now treats PGDATA as empty if it contains only `lost+found` and `.dotfiles`. If `PGDATA` is nonempty but `pg_controldata` reports it invalid, Patroni reports an error and exits.

- Avoid calling expensive `os.listdir()` on every HA loop (Alexander Kukushkin)

  Under IO load, `os.listdir()` can take seconds or minutes and delay the Patroni HA loop. Missing updates could even make the leader key expire. Patroni now checks for `global/pg_control` in PGDATA, which is a less expensive check.

- Some improvements in logging infrastructure (Alexander Kukushkin)

  Previously there was a possibility to loose the last few log lines on shutdown because the logging thread was a `daemon` thread.

- Use `spawn` multiprocessing start method on python 3.4+ (Maciej Kowalczyk)

  Python has a known [issue](https://bugs.python.org/issue6721) when threads and multiprocessing interact. The recommended workaround replaces `fork` with `spawn`. Otherwise, the Postmaster startup process could hang. Patroni would then report `INFO: restarting after failure in progress` indefinitely, although Postgres was running.

**Improvements in REST API**

- Make it possible to check client certificates in the REST API (Alexander Kukushkin)

  If the `verify_client` is set to `required`, Patroni will check client certificates for all REST API calls. When it is set to `optional`, client certificates are checked for all unsafe REST API endpoints.

- Return the response code 503 for the `GET /replica` health check request if Postgres is not running (Alexander Anikin)

  Postgres might spend significant time in recovery before it starts accepting client connections.

- Implement `/history` and `/cluster` endpoints (Alexander Kukushkin)

  The `/history` endpoint shows the content of the `history` key in DCS. The `/cluster` endpoint shows all cluster members and some service info like pending and scheduled restarts or switchovers.

**Improvements in Etcd support**

- Retry on Etcd RAFT internal error (Alexander Kukushkin)

  When the Etcd node is being shut down, it sends `response code=300, data='etcdserver: server stopped'`, which was causing Patroni to demote the primary.

- Don't give up on Etcd request retry too early (Alexander Kukushkin)

  When there were some network problems, Patroni was quickly exhausting the list of Etcd nodes and giving up without using the whole `retry_timeout`, potentially resulting in demoting the primary.

**Bugfixes**

- Disable `synchronous_commit` when granting execute permissions to the `pg_rewind` user (kremius)

  If the bootstrap is done with `synchronous_mode_strict: true` the `GRANT EXECUTE` statement was waiting indefinitely due to the non-synchronous nodes being available.

- Fix memory leak on python 3.7 (Alexander Kukushkin)

  Patroni is using `ThreadingMixIn` to process REST API requests and python 3.7 made threads spawn for every request non-daemon by default.

- Fix race conditions in asynchronous actions (Alexander Kukushkin)

  There was a chance that `patronictl reinit --force` could be overwritten by the attempt to recover stopped Postgres. This ended up in a situation when Patroni was trying to start Postgres while basebackup was running.

- Fix race condition in `postmaster_start_time()` method (Alexander Kukushkin)

  If the method is executed from the REST API thread, it requires a separate cursor object to be created.

- Fix the problem of not promoting the sync standby that had a name containing upper case letters (Alexander Kukushkin)

  We converted the name to the lower case because Postgres was doing the same while comparing the `application_name` with the value in `synchronous_standby_names`.

- Kill all children along with the callback process before starting the new one (Alexander Kukushkin)

  Not doing so makes it hard to implement callbacks in bash and eventually can lead to the situation when two callbacks are running at the same time.

- Fix 'start failed' issue (Alexander Kukushkin)

  Under certain conditions the Postgres state might be set to 'start failed' despite Postgres being up and running.

--------

## Version 1.6.0

Released 2019-08-05

This version adds compatibility with PostgreSQL 12, makes is possible to run pg_rewind without superuser on PostgreSQL 11 and newer, and enables IPv6 support.

**New features**

- Psycopg2 was removed from requirements and must be installed independently (Alexander Kukushkin)

  From 2.8.0, `psycopg2` has two packages: `psycopg2` and `psycopg2-binary`. Both can install to the same filesystem location. To reduce dependency conflicts, users must choose how to install it. See the available [installation options](/docs/patroni/installation#psycopg2_install_options).

- Compatibility with PostgreSQL 12 (Alexander Kukushkin)

  PostgreSQL 12 removes `recovery.conf` and converts its parameters to [GUC](https://www.enterprisedb.com/blog/what-guc-variable) settings. Patroni removes all standby and recovery parameters from `postgresql.auto.conf` to prevent overrides such as `ALTER SYSTEM SET primary_conninfo`. Patroni configuration remains backward compatible. For example, `restore_command` can still be set under `postgresql.recovery_conf.restore_command`. Patroni writes it to `postgresql.conf` for PostgreSQL 12.

- Make it possible to use `pg_rewind` without superuser on PostgreSQL 11 and newer (Alexander Kukushkin)

  Set `username` and `password` in `postgresql.authentication.rewind` in the Patroni configuration. For an existing cluster, manually create the user and `GRANT EXECUTE` permission on the required functions. See the PostgreSQL [documentation](https://www.postgresql.org/docs/11/app-pgrewind.html#id-1.9.5.8.8).

- Do a smart comparison of actual and desired `primary_conninfo` values on replicas (Alexander Kukushkin)

  It might help to avoid replica restart when you are converting an already existing primary-standby cluster to one managed by Patroni

- IPv6 support (Alexander Kukushkin)

  There were two major issues. Patroni REST API service was listening only on `0.0.0.0` and IPv6 IP addresses used in the `api_url` and `conn_url` were not properly quoted.

- Kerberos support (Ajith Vilas, Alexander Kukushkin)

  It makes possible using Kerberos authentication between Postgres nodes instead of defining passwords in Patroni configuration file

- Manage `pg_ident.conf` (Alexander Kukushkin)

  If configuration or DCS defines `postgresql.pg_ident`, Patroni writes its value to `pg_ident.conf`, as it does for `pg_hba.conf`. If `postgresql.parameters.ident_file` is set, Patroni assumes external management of `pg_ident` and does not update the file.

**Improvements in REST API**

- Added `/health` endpoint (Wilfried Roset)

  It will return an HTTP status code only if PostgreSQL is running

- Added `/read-only` and `/read-write` endpoints (Julien Riou)

  The `/read-only` endpoint enables reads balanced across replicas and the primary. The `/read-write` endpoint is an alias for `/primary`, `/leader` and `/master`.

- Use `SSLContext` to wrap the REST API socket (Julien Riou)

  Usage of `ssl.wrap_socket()` is deprecated and was still allowing soon-to-be-deprecated protocols like TLS 1.1.

**Logging improvements**

- Two-step logging (Alexander Kukushkin)

  Patroni first writes log messages to an in-memory queue. A separate thread asynchronously writes them to stderr or a file. The maximum queue size is configurable. At the limit, Patroni discards logs to avoid blocking the HA loop.

- Enable debug logging for GET/OPTIONS API calls together with latency (Jan Tomsa)

  It will help with debugging of health-checks performed by HAProxy, Consul or other tooling that decides which node is the primary/replica.

- Log exceptions caught in Retry (Daniel Kucera)

  Log the final exception when either the number of attempts or the timeout were reached. It will hopefully help to debug some issues when communication to DCS fails.

**Improvements in patronictl**

- Enhance dialogues for scheduled switchover and restart (Rafia Sabih)

  Previously dialogues did not take into account scheduled actions and therefore were misleading.

- Check if config file exists (Wilfried Roset)

  Be verbose about configuration file when the given filename does not exists, instead of ignoring silently (which can lead to misunderstanding).

- Add fallback value for `EDITOR` (Wilfried Roset)

  When the `EDITOR` environment variable was not defined, `patronictl edit-config` was failing with `PatroniCtlException`. The new strategy is to try `editor` and than `vi`, which should be available on most systems.

**Improvements in Consul support**

- Allow to specify Consul consistency mode (Jan Tomsa)

  You can read more about consistency mode [here](https://www.consul.io/api/features/consistency.html).

- Reload Consul config on SIGHUP (Cameron Daniel Kucera, Alexander Kukushkin)

  It is especially useful when somebody is changing the value of `token`.

**Bugfixes**

- Fix corner case in switchover/failover (Sharoon Thomas)

  The variable `scheduled_at` may be undefined if REST API is not accessible and we are using DCS as a fallback.

- Open trust to localhost in `pg_hba.conf` during custom bootstrap (Alexander Kukushkin)

  Previously it was open only to unix_socket, which was causing a lot of errors: `FATAL:  no pg_hba.conf entry for replication connection from host "127.0.0.1", user "replicator"`

- Consider synchronous node as healthy even when the former leader is ahead (Alexander Kukushkin)

  When the primary loses DCS access, it restarts Postgres in read-only mode. Other nodes might still reach the old primary through REST API. If its reported WAL position was ahead, the synchronous standby previously refused to promote.

- Standby cluster bugfixes (Alexander Kukushkin)

  Make it possible to bootstrap a replica in a standby cluster when the standby_leader is not accessible and a few other minor fixes.

--------

## Version 1.5.6

Released 2019-08-03

**New features**

- Support work with etcd cluster via set of proxies (Alexander Kukushkin)

  It might happen that etcd cluster is not accessible directly but via set of proxies. In this case Patroni will not perform etcd topology discovery but just round-robin via proxy hosts. Behavior is controlled by `etcd.use_proxies`.

- Changed callbacks behavior when role on the node is changed (Alexander Kukushkin)

  Patroni now calls `on_role_change` instead of `on_restart` when `master` or `standby_leader` changes to `replica`. This also applies when `replica` changes to `standby_leader`.

- Change the way how we start postgres (Alexander Kukushkin)

  Use `multiprocessing.Process` instead of executing itself and `multiprocessing.Pipe` to transmit the postmaster pid to the Patroni process. Before that we were using pipes, what was leaving postmaster process with stdin closed.

**Bug fixes**

- Fix role returned by REST API for the standby leader (Alexander Kukushkin)

  It was incorrectly returning `replica` instead of `standby_leader`

- Wait for callback end if it could not be killed (Julien Tachoires)

  Patroni doesn't have enough privileges to terminate the callback script running under `sudo` what was cancelling the new callback. If the running script could not be killed, Patroni will wait until it finishes and then run the next callback.

- Reduce lock time taken by dcs.get_cluster method (Alexander Kukushkin)

  Due to the lock being held DCS slowness was affecting the REST API health checks causing false positives.

- Improve cleaning of PGDATA when `pg_wal`/\`pg_xlog\` is a symlink (Julien Tachoires)

  In this case Patroni will explicitly remove files from the target directory.

- Remove unnecessary usage of os.path.relpath (Ants Aasma)

  It depends on being able to resolve the working directory, what will fail if Patroni is started in a directory that is later unlinked from the filesystem.

- Do not enforce ssl version when communicating with Etcd (Alexander Kukushkin)

  For an unknown reason, Debian and Ubuntu did not use the latest python3-etcd package. Their package enforced TLSv1, which Etcd v3 did not support. This release solved the problem in Patroni.

--------

## Version 1.5.5

Released 2019-02-15

This version introduces the possibility of automatic reinit of the former master, improves patronictl list output and fixes a number of bugs.

**New features**

- Add support of `PATRONI_ETCD_PROTOCOL`, `PATRONI_ETCD_USERNAME` and `PATRONI_ETCD_PASSWORD` environment variables (Étienne M)

  Before it was possible to configure them only in the config file or as a part of `PATRONI_ETCD_URL`, which is not always convenient.

- Make it possible to automatically reinit the former master (Alexander Kukushkin)

  If pg_rewind is disabled or unavailable, diverged timelines can prevent the former master from starting as a replica. Recovery requires removal of the data directory and reinitialization. Set `postgresql.remove_data_directory_on_diverged_timelines` to make Patroni do this automatically.

- Show information about timelines in patronictl list (Alexander Kukushkin)

  It helps to detect stale replicas. In addition to that, `Host` will include ':{port}' if the port value isn't default or there is more than one member running on the same host.

- Create a headless service associated with the \$SCOPE-config endpoint (Alexander Kukushkin)

  The "config" endpoint stores cluster-wide Patroni and Postgres configuration, history, and the `initialize` key. A Kubernetes master restart or upgrade removes endpoints without services. The headless service prevents removal of this endpoint.

**Bug fixes**

- Adjust the read timeout for the leader watch blocking query (Alexander Kukushkin)

  Consul adds a small random delay to a blocking query timeout to spread concurrent request wakeups. This can add up to `wait / 16` to the maximum duration. Patroni adds the greater of `wait / 15` and 1 second to its read timeout.

- Always use replication=1 when connecting via replication protocol to the postgres (Alexander Kukushkin)

  Starting from Postgres 10 the line in the pg_hba.conf with database=replication doesn't accept connections with the parameter replication=database.

- Don't write primary_conninfo into recovery.conf for wal-only standby cluster (Alexander Kukushkin)

  Despite not having neither `host` nor `port` defined in the [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) config, Patroni was putting the `primary_conninfo` into the `recovery.conf`, which is useless and generating a lot of errors.

--------

## Version 1.5.4

Released 2019-01-15

This version implements flexible logging and fixes a number of bugs.

**New features**

- Improvements in logging infrastructure (Alexander Kukushkin, Lucas Capistrant, Alexander Anikin)

  Logging can now be configured in the Patroni configuration file as well as through environment variables. To apply changes at runtime, update configuration and reload, or send SIGHUP to Patroni. The default destination remains stderr. Patroni can now write to a file and rotate it at a configured size. Custom date formats and per-module Python log levels are also supported.

- Make it possible to take into account the current timeline during leader elections (Alexander Kukushkin)

  A node can consider itself healthiest while it is not on the latest known timeline. To prevent promotion of such nodes, set `check_timeline` to `true`. The default behavior is unchanged.

- Relaxed requirements on superuser credentials

  Libpq allows opening connections without explicitly specifying neither username nor password. Depending on situation it relies either on pgpass file or trust authentication method in pg_hba.conf. Since pg_rewind is also using libpq, it will work the same way.

- Implemented possibility to configure Consul Service registration and check interval via environment variables (Alexander Kukushkin)

  Registration of service in Consul was added in the 1.5.0, but so far it was only possible to turn it on via patroni.yaml.

**Stability Improvements**

- Set archive_mode to off during the custom bootstrap (Alexander Kukushkin)

  We want to avoid archiving wals and history files until the cluster is fully functional. It really helps if the custom bootstrap involves pg_upgrade.

- Apply five seconds backoff when loading global config on start (Alexander Kukushkin)

  It helps to avoid hammering DCS when Patroni just starting up.

- Reduce amount of error messages generated on shutdown (Alexander Kukushkin)

  They were harmless but rather annoying and sometimes scary.

- Explicitly secure rw perms for recovery.conf at creation time (Lucas Capistrant)

  We don't want anybody except patroni/postgres user reading this file, because it contains replication user and password.

- Redirect HTTPServer exceptions to logger (Julien Riou)

  By default, such exceptions were logged on standard output messing with regular logs.

**Bug fixes**

- Removed stderr pipe to stdout on pg_ctl process (Cody Coons)

  Inheriting stderr from Patroni makes all Postgres and Patroni logs visible together. Container tools such as docker logs and kubectl can consume these logs. This also fixes postmaster PID detection when Postgres writes warnings to stderr.

- Set Consul service check deregister timeout in Go time format (Pavel Kirillov)

  Without explicitly mentioned time unit registration was failing.

- Relax checks of standby_cluster cluster configuration (Dmitry Dolgov, Alexander Kukushkin)

  It was accepting only strings as valid values and therefore it was not possible to specify the port as integer and create_replica_methods as a list.

--------

## Version 1.5.3

Released 2018-12-03

Compatibility and bugfix release.

- Improve stability when running with python3 against zookeeper (Alexander Kukushkin)

  Change of `loop_wait` was causing Patroni to disconnect from zookeeper and never reconnect back.

- Fix broken compatibility with postgres 9.3 (Alexander Kukushkin)

  When opening a replication connection we should specify replication=1, because 9.3 does not understand replication='database'

- Make sure we refresh Consul session at least once per HA loop and improve handling of consul sessions exceptions (Alexander Kukushkin)

  Restart of local consul agent invalidates all sessions related to the node. Not calling session refresh on time and not doing proper handling of session errors was causing demote of the primary.

--------

## Version 1.5.2

Released 2018-11-26

Compatibility and bugfix release.

- Compatibility with kazoo-2.6.0 (Alexander Kukushkin)

  In order to make sure that requests are performed with an appropriate timeout, Patroni redefines create_connection method from python-kazoo module. The last release of kazoo slightly changed the way how create_connection method is called.

- Fix Patroni crash when Consul cluster loses the leader (Alexander Kukushkin)

  The crash was happening due to incorrect implementation of touch_member method, it should return boolean and not raise any exceptions.

--------

## Version 1.5.1

Released 2018-11-01

This version implements support of permanent replication slots, adds support of pgBackRest and fixes number of bugs.

**New features**

- Permanent replication slots (Alexander Kukushkin)

  Permanent replication slots survive failover and switchover. After promotion, Patroni creates the configured slots on the new primary. Configure them with `patronictl edit-config`, or set initial configuration in [bootstrap.dcs](/docs/patroni/config/yaml#yaml).

- Add pgbackrest support (Yogesh Sharma)

  pgBackrest can restore into an existing \$PGDATA folder. It skips files unchanged since the last backup, which speeds up restore. The new `keep_data` parameter supports this feature. See [replica creation method](/docs/patroni/replica_bootstrap#custom_replica_creation) for examples.

**Bug fixes**

- A few bugfixes in the "standby cluster" workflow (Alexander Kukushkin)

  Please see <https://github.com/patroni/patroni/pull/823> for more details.

- Fix REST API health check when cluster management is paused and DCS is not accessible (Alexander Kukushkin)

  Regression was introduced in <https://github.com/patroni/patroni/commit/90cf930036a9d5249265af15d2b787ec7517cf57>

--------

## Version 1.5.0

Released 2018-09-20

This version enables standby mode for a Patroni HA cluster. It introduces experimental Windows support. It also adds a configuration parameter to register the PostgreSQL service in Consul.

**New features**

- Standby cluster (Dmitry Dolgov)

  One or more Patroni nodes can form a standby cluster alongside the primary cluster, for example in another datacenter. All its PostgreSQL nodes are replicas. One replica elects itself to replicate directly from the remote master. The others replicate from that node through cascading replication. See [the description and examples](/docs/patroni/standby_cluster#standby_cluster).

- Register Services in Consul (Pavel Kirillov, Alexander Kukushkin)

  If `register_service` parameter in the consul [configuration](/docs/patroni/config/yaml#consul_settings) is enabled, the node will register a service with the name `scope` and the tag `master`, `replica` or `standby-leader`.

- Experimental Windows support (Pavel Golub)

  Patroni can now run on Windows. This support is new and has received less real-world testing than Linux support. Feedback is welcome.

**Improvements in patronictl**

- Add patronictl -k/--insecure flag and support for restapi cert (Wilfried Roset)

  Previously, [patronictl](/docs/patroni/patronictl#patronictl) could not verify self-signed REST API certificates, and verification could not be disabled. You can now configure [patronictl](/docs/patroni/patronictl#patronictl) to skip certificate verification. Alternatively, supply CA and client certificates in the [ctl:](/docs/patroni/config/yaml#patronictl_settings) configuration section.

- Exclude members with nofailover tag from patronictl switchover/failover output (Alexander Anikin)

  Previously, those members were incorrectly proposed as candidates when performing interactive switchover or failover via patronictl.

**Stability improvements**

- Avoid parsing non-key-value output lines of pg_controldata (Alexander Anikin)

  pg_controldata sometimes outputs lines without a colon. Patroni failed to parse these lines, which hid the original problem. Such lines often occur in warnings before the regular output, for example when the binary and data directory major versions differ.

- Add member name to the error message during the leader election (Jan Mussler)

  During the leader election, Patroni connects to all known members of the cluster and requests their status. Such status is written to the Patroni log and includes the name of the member. Previously, if the member was not accessible, the error message did not indicate its name, containing only the URL.

- Immediately reserve the WAL position upon creation of the replication slot (Alexander Kukushkin)

  From 9.6, `pg_create_physical_replication_slot` accepts the boolean `immediately_reserve` parameter. Its default is `false`. With this value, the slot reserves WAL only after the first client connection. Required segments could disappear between slot creation and that connection.

- Fix bug in strict synchronous replication (Alexander Kukushkin)

  With `synchronous_mode_strict: true`, Patroni sometimes puts `\*` in `synchronous_standby_names`. This changes most replication connections to `potential`. Patroni previously considered only `async` connections and could not select a synchronous candidate.

--------

## Version 1.4.6

Released 2018-08-14

**Bug fixes and stability improvements**

This release fixes the Patroni API /master endpoint returning 200 for a non-master node. This reporting error did not cause split-brain. However, it could direct clients to a read-only node.

- Reset is_leader status on demote (Alexander Kukushkin, Oleksii Kliukin)

  Make sure demoted cluster member stops responding with code 200 on the /master API call.

- Add new "cluster_unlocked" field to the API output (Dmitry Dolgov)

  This field indicates whether the cluster has the master running. It can be used when it is not possible to query any other node but one of the replicas.

--------

## Version 1.4.5

Released 2018-08-03

**New features**

- Improve logging when applying new postgres configuration (Don Seiler)

  Patroni logs changed parameter names and values.

- Python 3.7 compatibility (Christoph Berg)

  async is a reserved keyword in python3.7

- Set state to "stopped" in the DCS when a member is shut down (Tony Sorrentino)

  This shows the member state as "stopped" in "patronictl list" command.

- Improve the message logged when stale postmaster.pid matches a running process (Ants Aasma)

  The previous one was beyond confusing.

- Implement patronictl reload functionality (Don Seiler)

  Before that it was only possible to reload configuration by either calling REST API or by sending SIGHUP signal to the Patroni process.

- Take and apply some parameters from controldata when starting as a replica (Alexander Kukushkin)

  Global `max_connections` and other parameter values can be lower than the values used by the primary. Previously, this prevented replica startup and required manual correction. Patroni now reads and applies values from `pg_controldata`, starts Postgres, and sets `pending_restart`.

- If set, use LD_LIBRARY_PATH when starting postgres (Chris Fraser)

  When starting up Postgres, Patroni was passing along PATH, LC_ALL and LANG env vars if they are set. Now it is doing the same with LD_LIBRARY_PATH. It should help if somebody installed PostgreSQL to non-standard place.

- Rename create_replica_method to create_replica_methods (Dmitry Dolgov)

  To make it clear that it's actually an array. The old name is still supported for backward compatibility.

**Bug fixes and stability improvements**

- Fix condition for the replica start due to pg_rewind in paused state (Oleksii Kliukin)

  Avoid starting the replica that had already executed pg_rewind before.

- Respond 200 to the master health-check only if update_lock has been successful (Alexander Kukushkin)

  Prevent Patroni from reporting itself a master on the former (demoted) master if DCS is partitioned.

- Fix compatibility with the new consul module (Alexander Kukushkin)

  Starting from v1.1.0 python-consul changed internal API and started using `list` instead of `dict` to pass query parameters.

- Catch exceptions from Patroni REST API thread during shutdown (Alexander Kukushkin)

  Those uncaught exceptions kept PostgreSQL running at shutdown.

- Do crash recovery only when Postgres runs as the master (Alexander Kukushkin)

  Require `pg_controldata` to report 'in production' or 'shutting down' or 'in crash recovery'. In all other cases no crash recovery is necessary.

- Improve handling of configuration errors (Henning Jacobs, Alexander Kukushkin)

  Many parameters, including `restapi.listen`, can change at runtime through configuration updates and SIGHUP. Invalid values previously caused unclear exceptions in the restapi thread. This fix improves those errors.

--------

## Version 1.4.4

Released 2018-05-22

**Stability improvements**

- Fix race condition in poll_failover_result (Alexander Kukushkin)

  This did not directly affect failover or switchover. Rarely, poll_failover_result reported success as soon as the former leader released its lock. It then showed 'Failed over to "None"' instead of 'Failed over to "desired-node"'.

- Treat Postgres parameter names as case insensitive (Alexander Kukushkin)

  Most Postgres parameter names use snake_case. The exceptions are DateStyle, IntervalStyle, and TimeZone. Postgres accepts other letter cases, for example timezone = 'some/tzn'. Patroni previously failed to find these names case-insensitively in pg_settings and ignored them.

- Abort start if attaching to running postgres and cluster not initialized (Alexander Kukushkin)

  Patroni can attach itself to an already running Postgres instance. It is imperative to start running Patroni on the master node before getting to the replicas.

- Fix behavior of patronictl scaffold (Alexander Kukushkin)

  Pass a dict object to `touch_member` instead of a JSON-encoded string; the DCS implementation will take care of encoding it.

- Don't demote master if failed to update leader key in pause (Alexander Kukushkin)

  During maintenance a DCS may start failing write requests while continuing to responds to read ones. In that case, Patroni used to put the Postgres master node to a read-only mode after failing to update the leader lock in DCS.

- Sync replication slots when Patroni notices a new postmaster process (Alexander Kukushkin)

  If Postgres has been restarted, Patroni has to make sure that list of replication slots matches its expectations.

- Verify sysid and sync replication slots after coming out of pause (Alexander Kukushkin)

  The data directory can be completely replaced during `maintenance` mode. Afterward, Patroni must verify that `Database system identifier` still belongs to the cluster. It must also synchronize replication slots with its expected configuration.

- Fix a possible failure to start not running Postgres on a data directory with postmaster lock file present (Alexander Kukushkin)

  Detect reuse of PID from the postmaster lock file. More likely to hit such problem if you run Patroni and Postgres in the docker container.

- Improve protection of DCS being accidentally wiped (Alexander Kukushkin)

  Patroni can prevent failover after accidental DCS deletion and restore its keys. Previously, deleting /config disabled pause mode for 1 HA loop cycle.

- Do not exit when encountering invalid system ID (Oleksii Kliukin)

  Do not exit when the cluster system ID is empty or the one that doesn't pass the validation check. In that case, the cluster most likely needs a reinit; mention it in the result message. Avoid terminating Patroni, as otherwise reinit cannot happen.

**Compatibility with Kubernetes 1.10+**

- Added check for empty subsets (Cody Coons)

  Kubernetes 1.10.0+ started returning `Endpoints.subsets` set to `None` instead of `\[\]`.

**Bootstrap improvements**

- Make deleting recovery.conf optional (Brad Nicholson)

  If <span class="title-ref">bootstrap.\<custom_bootstrap_method_name\>.keep_existing_recovery_conf</span> is defined and set to `True`, Patroni will not remove the existing `recovery.conf` file. This is useful when bootstrapping from a backup with tools like pgBackRest that generate the appropriate `recovery.conf` for you.

- Allow options to the basebackup built-in method (Oleksii Kliukin)

  Configure built-in basebackup options in the `basebackup` section, as with custom replica creation methods. pg_basebackup accepts both `--key=value` and `--key`. Therefore, the section accepts a dictionary of key-value pairs or a list of one-element dictionaries and keys without values. See [replica creation method](/docs/patroni/replica_bootstrap#custom_replica_creation) for examples.

--------

## Version 1.4.3

Released 2018-03-05

**Improvements in logging**

- Make log level configurable from environment variables (Andy Newton, Keyvan Hedayati)

  `PATRONI_LOGLEVEL` sets the general log level. `PATRONI_REQUESTS_LOGLEVEL` sets the level for all HTTP requests, including Kubernetes API calls. See <span class="title-ref">the docs for Python logging \<https://docs.python.org/3.6/library/logging.html#levels\></span> for available levels.

**Stability improvements and bug fixes**

- Don't rediscover etcd cluster topology when watch timed out (Alexander Kukushkin)

  If configuration listed only one inaccessible etcd host, Patroni repeatedly tried and failed to discover cluster topology. It should instead switch to the next available node.

- Write content of bootstrap.pg_hba into a pg_hba.conf after custom bootstrap (Alexander Kukushkin)

  Now it behaves similarly to the usual bootstrap with `initdb`

- Single user mode was waiting for user input and never finish (Alexander Kukushkin)

  Regression was introduced in <https://github.com/patroni/patroni/pull/576>

--------

## Version 1.4.2

Released 2018-01-30

**Improvements in patronictl**

- Rename scheduled failover to scheduled switchover (Alexander Kukushkin)

  Failover and switchover functions were separated in version 1.4, but `patronictl list` was still reporting `Scheduled failover` instead of `Scheduled switchover`.

- Show information about pending restarts (Alexander Kukushkin)

  Some configuration changes require a Postgres restart. Patroni already indicated this in REST API responses and node status in DCS. Previously, there was no easy way to display it.

- Make show-config to work with cluster_name from config file (Alexander Kukushkin)

  It works similar to the `patronictl edit-config`

**Stability improvements**

- Avoid calling pg_controldata during bootstrap (Alexander Kukushkin)

  During initdb or custom bootstrap there is a time window when pgdata is not empty but pg_controldata has not been written yet. In such case pg_controldata call was failing with error messages.

- Handle exceptions raised from psutil (Alexander Kukushkin)

  cmdline is read and parsed every time when `cmdline()` method is called. It could happen that the process being examined has already disappeared, in that case `NoSuchProcess` is raised.

**Kubernetes support improvements**

- Don't swallow errors from k8s API (Alexander Kukushkin)

  A call to Kubernetes API could fail for a different number of reasons. In some cases such call should be retried, in some other cases we should log the error message and the exception stack trace. The change here will help debug Kubernetes permission issues.

- Update Kubernetes example Dockerfile to install Patroni from the master branch (Maciej Szulik)

  Before that it was using `feature/k8s`, which became outdated.

- Add proper RBAC to run patroni on k8s (Maciej Szulik)

  Add a Service account for the cluster pods. Add a Role with only the required permissions and a rolebinding that connects the Service account to the Role.

--------

## Version 1.4.1

Released 2018-01-17

**Fixes in patronictl**

- Don't show current leader in suggested list of members to failover to. (Alexander Kukushkin)

  patronictl failover could still work when there is leader in the cluster and it should be excluded from the list of member where it is possible to failover to.

- Make patronictl switchover compatible with the old Patroni api (Alexander Kukushkin)

  In case if POST /switchover REST API call has failed with status code 501 it will do it once again, but to /failover endpoint.

--------

## Version 1.4

Released 2018-01-10

This version adds support for using Kubernetes as a DCS, allowing to run Patroni as a cloud-native agent in Kubernetes without any additional deployments of Etcd, Zookeeper or Consul.

**Upgrade notice**

Installing Patroni with pip no longer installs optional dependencies automatically. These include Etcd, Zookeper, Consul, Kubernetes, and AWS libraries. List the required dependencies explicitly, for example `pip install patroni\[etcd,kubernetes\]`.

**Kubernetes support**

Implement Kubernetes-based DCS. The endpoints meta-data is used in order to store the configuration and the leader key. The meta-data field inside the pods definition is used to store the member-related data. In addition to using Endpoints, Patroni supports ConfigMaps. You can find more information about this feature in the [Kubernetes chapter of the documentation](/docs/patroni/kubernetes#kubernetes)

**Stability improvements**

- Factor out postmaster process into a separate object (Ants Aasma)

  This object identifies postmaster by PID and start time. It simplifies detection and handling of external Postgres restarts or removal of its directory.

- Minimize the amount of SELECT's issued by Patroni on every loop of HA cycle (Alexander Kukushkin)

  On every iteration of HA loop Patroni needs to know recovery status and absolute wal position. From now on Patroni will run only single SELECT to get this information instead of two on the replica and three on the master.

- Remove leader key on shutdown only when we have the lock (Ants Aasma)

  Unconditional removal was generating unnecessary and misleading exceptions.

**Improvements in patronictl**

- Add version command to patronictl (Ants Aasma)

  It will show the version of installed Patroni and versions of running Patroni instances (if the cluster name is specified).

- Make optional specifying cluster_name argument for some of patronictl commands (Alexander Kukushkin, Ants Aasma)

  It will work if patronictl is using usual Patroni configuration file with the `scope` defined.

- Show information about scheduled switchover and maintenance mode (Alexander Kukushkin)

  Before that it was possible to get this information only from Patroni logs or directly from DCS.

- Improve `patronictl reinit` (Alexander Kukushkin)

  Sometimes `patronictl reinit` refused to run while Patroni was busy, for example while starting Postgres. [patronictl](/docs/patroni/patronictl#patronictl) could not cancel these long-running actions. The only workaround was dangerous manual removal of the data directory. `reinit` now forcefully cancels such actions before it proceeds.

- Implement `--wait` flag in `patronictl pause` and `patronictl resume` (Alexander Kukushkin)

  It will make [patronictl](/docs/patroni/patronictl#patronictl) wait until the requested action is acknowledged by all nodes in the cluster. Such behaviour is achieved by exposing the [pause](/docs/patroni/pause#pause) flag for every node in DCS and via the REST API.

- Rename `patronictl failover` into `patronictl switchover` (Alexander Kukushkin)

  The previous `failover` was actually only capable of doing a switchover; it refused to proceed in a cluster without the leader.

- Alter the behavior of `patronictl failover` (Alexander Kukushkin)

  It will work even if there is no leader, but in that case you will have to explicitly specify a node which should become the new leader.

**Expose information about timeline and history**

- Expose current timeline in DCS and via API (Alexander Kukushkin)

  Store information about the current timeline for each member of the cluster. This information is accessible via the API and is stored in the DCS

- Store promotion history in the /history key in DCS (Alexander Kukushkin)

  In addition, store the timeline history enriched with the timestamp of the corresponding promotion in the /history key in DCS and update it with each promote.

**Add endpoints for getting synchronous and asynchronous replicas**

- Add new /sync and /async endpoints (Alexander Kukushkin, Oleksii Kliukin)

> Those endpoints (also accessible as /synchronous and /asynchronous) return 200 only for synchronous and asynchronous replicas correspondingly (excluding those marked as `noloadbalance`).

**Allow multiple hosts for Etcd**

- Add a new `hosts` parameter to Etcd configuration (Alexander Kukushkin)

  This parameter contains the initial hosts for discovering the running etcd cluster members. If all discovered hosts become unavailable, Patroni returns to the initial `hosts` list.

--------

## Version 1.3.6

Released 2017-11-10

**Stability improvements**

- Verify process start time when checking if postgres is running. (Ants Aasma)

  After a crash, a stale postmaster.pid can match a new process with the same PID. This caused a false positive in is_running() and subsequent incorrect behavior.

- Shutdown postgresql before bootstrap when we lost data directory (ainlolcat)

  After forced removal of the master data directory, Postgres can remain alive temporarily. It can prevent the replacement replica from starting or replicating. Patroni now caches postmaster PID and start time. It terminates the old postmaster if it still runs after data directory removal.

- Perform crash recovery in a single user mode if postgres master dies (Alexander Kukushkin)

  It is unsafe to start immediately as a standby and not possible to run `pg_rewind` if postgres hasn't been shut down cleanly. The single user crash recovery only kicks in if `pg_rewind` is enabled or there is no master at the moment.

**Consul improvements**

- Make it possible to provide datacenter configuration for Consul (Vilius Okockis, Alexander Kukushkin)

  Before that Patroni was always communicating with datacenter of the host it runs on.

- Always send a token in X-Consul-Token http header (Alexander Kukushkin)

  Patroni now always sends `consul.token` in the X-Consul-Token HTTP header. python-consul follows the Consul REST API, whose [session API](https://www.consul.io/api/session.html) rejects tokens in query parameters. The X-Consul-Token header still works.

- Adjust session TTL if supplied value is smaller than the minimum possible (Stas Fomin, Alexander Kukushkin)

  A configured TTL can be below the Consul minimum. Consul then cannot create a session. Without a session, Patroni cannot create member or leader keys in the Consul KV store, leaving the cluster unhealthy.

**Other improvements**

- Define custom log format via environment variable `PATRONI_LOGFORMAT` (Stas Fomin)

  Allow disabling timestamps and other similar fields in Patroni logs if they are already added by the system logger (usually when Patroni runs as a service).

--------

## Version 1.3.5

Released 2017-10-12

**Bugfix**

- Set role to 'uninitialized' if data directory was removed (Alexander Kukushkin)

  If the node was running as a master it was preventing from failover.

**Stability improvement**

- Try to run postmaster in a single-user mode if we tried and failed to start postgres (Alexander Kukushkin)

  This usually occurs after termination of a master and timeline divergence. With `restore_command` in `recovery.conf`, Postgres is very likely to abort startup without changing controldata. This prevents `pg_rewind`, which requires a clean shutdown.

**Consul improvements**

- Make it possible to specify health checks when creating session (Alexander Kukushkin)

  If not specified, Consul will use "serfHealth". On the one hand, this allows fast detection of an isolated master; on the other hand, it makes it impossible for Patroni to tolerate short network lags.

**Bugfix**

- Fix watchdog on Python 3 (Ants Aasma)

  The code misunderstood ioctl(). With mutable=False, fcntl.ioctl() returns the argument buffer. This accidentally worked in Python2 because int-to-str comparisons did not raise errors. ioctl errors raise IOError in Python2 and OSError in Python3.

--------

## Version 1.3.4

Released 2017-09-08

**Different Consul improvements**

- Pass the consul token as a header (Andrew Colin Kissa)

  Headers are now the preferred way to pass the token to the consul [API](https://www.consul.io/api/index.html#authentication).

- Advanced configuration for Consul (Alexander Kukushkin)

  possibility to specify `scheme`, `token`, client and ca certificates [details](/docs/patroni/config/yaml#consul_settings).

- compatibility with python-consul-0.7.1 and above (Alexander Kukushkin)

  new python-consul module has changed signature of some methods

- "Could not take out TTL lock" message was never logged (Alexander Kukushkin)

  Not a critical bug, but lack of proper logging complicates investigation in case of problems.

**Quote synchronous_standby_names using quote_ident**

- When writing `synchronous_standby_names` into the `postgresql.conf` its value must be quoted (Alexander Kukushkin)

  If it is not quoted properly, PostgreSQL will effectively disable synchronous replication and continue to work.

**Different bugfixes around pause state, mostly related to watchdog** (Alexander Kukushkin)

- Do not send keepalives if watchdog is not active
- Avoid activating watchdog in a pause mode
- Set correct postgres state in pause mode
- Do not try to run queries from API if postgres is stopped

--------

## Version 1.3.3

Released 2017-08-04

**Bugfixes**

- synchronous replication was disabled shortly after promotion even when synchronous_mode_strict was turned on (Alexander Kukushkin)
- create empty `pg_ident.conf` file if it is missing after restoring from the backup (Alexander Kukushkin)
- open access in `pg_hba.conf` to all databases, not only postgres (Franco Bellagamba)

--------

## Version 1.3.2

Released 2017-07-31

**Bugfix**

- patronictl edit-config didn't work with ZooKeeper (Alexander Kukushkin)

--------

## Version 1.3.1

Released 2017-07-28

**Bugfix**

- failover via API was broken due to change in `_MemberStatus` (Alexander Kukushkin)

--------

## Version 1.3

Released 2017-07-27

Version 1.3 adds custom bootstrap possibility, significantly improves support for pg_rewind, enhances the synchronous mode support, adds configuration editing to patronictl and implements watchdog support on Linux. In addition, this is the first version to work correctly with PostgreSQL 10.

**Upgrade notice**

There are no known compatibility issues with this Patroni version. Version 1.2 configuration should work unchanged. Install the new packages, then restart Patroni; this also restarts PostgreSQL. Alternatively, enter [pause mode](/docs/patroni/pause#pause) before restarting Patroni on all cluster nodes. In pause mode, Patroni does not try to stop or start PostgreSQL. Resume the cluster afterward.

**Custom bootstrap**

- Make the process of bootstrapping the cluster configurable (Alexander Kukushkin)

  Allow custom bootstrap scripts instead of `initdb` when initializing the very first node in the cluster. The bootstrap command receives the name of the cluster and the path to the data directory. The resulting cluster can be configured to perform recovery, making it possible to bootstrap from a backup and do point in time recovery. Refer to the [documentation page](/docs/patroni/replica_bootstrap#custom_bootstrap) for more detailed description of this feature.

**Smarter pg_rewind support**

- Decide on whether to run pg_rewind by looking at the timeline differences from the current master (Alexander Kukushkin)

  Previously, Patroni triggered pg_rewind when starting a former master or handling other nodes during a switchover to a designated node. It also triggered pg_rewind when a replica had the nofailover tag. In each case, a replica might be ahead of the new master. These rules sometimes ran pg_rewind unnecessarily or missed a necessary rewind. Patroni now compares master and replica WAL positions through the streaming replication protocol to decide reliably whether rewind is required.

**Synchronous replication mode strict**

- Enhance synchronous replication support by adding the strict mode (James Sewell, Alexander Kukushkin)

  With [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode), Patroni normally disables synchronous replication when no replicas are attached, keeping the master writable. With `synchronous_mode_strict`, it retains synchronous replication and blocks client writes when no replicas exist. Synchronous mode already prevents data loss from automatic failover. Strict mode also ensures that each write is stored durably on two nodes, or blocked when the cluster has only one node.

**Configuration editing with patronictl**

- Add configuration editing to patronictl (Ants Aasma, Alexander Kukushkin)

  Add the ability to patronictl of editing dynamic cluster configuration stored in DCS. Support either specifying the parameter/values from the command-line, invoking the \$EDITOR, or applying configuration from the yaml file.

**Linux watchdog support**

- Implement watchdog support for Linux (Ants Aasma)

  The Linux software watchdog reboots a node when Patroni stops or does not respond, for example under high load. Configure the device and mode in the watchdog section. The default device is `/dev/watchdog`; modes are on, automatic, and off. See the [watchdog documentation](/docs/patroni/watchdog#watchdog).

**Add support for PostgreSQL 10**

- Patroni is compatible with all beta versions of PostgreSQL 10 released so far and we expect it to be compatible with the PostgreSQL 10 when it will be released.

**PostgreSQL-related minor improvements**

- Define pg_hba.conf via the Patroni configuration file or the dynamic configuration in DCS (Alexander Kukushkin)

  Define `pg_hba.conf` content in the `postgresql` section's `pg_hba` subsection. Defining it once in DCS simplifies management across nodes. It replaces manual edits and configuration reloads on each node.

  When defined, the contents of this section will replace the current `pg_hba.conf` completely. Patroni ignores it if `hba_file` PostgreSQL parameter is set.

- Support connecting via a UNIX socket to the local PostgreSQL cluster (Alexander Kukushkin)

  Set `use_unix_socket` to true in the `postgresql` section to connect locally through a UNIX socket. If `unix_socket_directories` is nonempty, Patroni uses its first value. If it is undefined, Patroni assumes its default and omits `host` from the PostgreSQL connection string.

- Support change of superuser and replication credentials on reload (Alexander Kukushkin)

- Support storing of configuration files outside of PostgreSQL data directory (@jouir)

  Add the new configuration `postgresql` configuration directive `config_dir`. It defaults to the data directory and must be writable by Patroni.

**Bug fixes and stability improvements**

- Handle EtcdEventIndexCleared and EtcdWatcherCleared exceptions (Alexander Kukushkin)

  Faster recovery when the watch operation is ended by Etcd by avoiding useless retries.

- Remove error spinning on Etcd failure and reduce log spam (Ants Aasma)

  Avoid immediate retrying and emitting stack traces in the log on the second and subsequent Etcd connection failures.

- Export locale variables when forking PostgreSQL processes (Oleksii Kliukin)

  Avoid the `postmaster became multithreaded during startup` fatal error on non-English locales for PostgreSQL built with NLS.

- Extra checks when dropping the replication slot (Alexander Kukushkin)

  In some cases Patroni is prevented from dropping the replication slot by the WAL sender.

- Truncate the replication slot name to 63 (NAMEDATALEN - 1) characters to comply with PostgreSQL naming rules (Nick Scott)

- Fix a race condition resulting in extra connections being opened to the PostgreSQL cluster from Patroni (Alexander Kukushkin)

- Release the leader key when the node restarts with an empty data directory (Alex Kerney)

- Set asynchronous executor busy when running bootstrap without a leader (Alexander Kukushkin)

  Without this busy state, Patroni continued normal operations during bootstrap by a method that did not require a leader. This could cause errors claiming that the node belonged to another cluster.

- Improve WAL-E replica creation method (Joar Wandborg, Alexander Kukushkin).

  - Use csv.DictReader when parsing WAL-E base backup, accepting ISO dates with space-delimited date and time.
  - Support fetching current WAL position from the replica to estimate the amount of WAL to restore. Previously, the code used to call system information functions that were available only on the master node.

--------

## Version 1.2

Released 2016-12-13

This version improves synchronous replication, startup reliability, and failover reliability. It adds PostgreSQL 9.6 support and fixes bugs. Documentation, including release notes, has moved to [Patroni documentation](/docs/patroni/).

**Synchronous replication**

- Add synchronous replication support. (Ants Aasma)

  The new [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) setting makes Patroni manage `synchronous_standby_names` and enable synchronous replication when healthy standbys exist. Automatic failover then selects only a standby that replicated synchronously at master failure. No user-visible transaction is lost in this case. See the [feature documentation](/docs/patroni/replication_modes#synchronous_mode) for behavior and implementation details.

**Reliability improvements**

- Do not try to update the leader position stored in the `leader optime` key when PostgreSQL is not 100% healthy. Demote immediately when the update of the leader key failed. (Alexander Kukushkin)

- Exclude unhealthy nodes from the list of targets to clone the new replica from. (Alexander Kukushkin)

- Implement retry and timeout strategy for Consul similar to how it is done for Etcd. (Alexander Kukushkin)

- Make `--dcs` and `--config-file` apply to all options in [patronictl](/docs/patroni/patronictl#patronictl). (Alexander Kukushkin)

- Write all postgres parameters into postgresql.conf. (Alexander Kukushkin)

  It allows starting PostgreSQL configured by Patroni with just `pg_ctl`.

- Avoid exceptions when there are no users in the config. (Kirill Pushkin)

- Allow pausing an unhealthy cluster. Before this fix, [patronictl](/docs/patroni/patronictl#patronictl) would bail out if the node it tries to execute pause on is unhealthy. (Alexander Kukushkin)

- Improve the leader watch functionality. (Alexander Kukushkin)

  Previously, replicas always watched the leader key until timeout or a key change. They now watch only when PostgreSQL is `running`. They do not watch while it is stopped, starting, or restarting.

- Avoid running into race conditions when handling SIGCHILD as a PID 1. (Alexander Kukushkin)

  In Docker containers, one Patroni process both started children and handled their SIGCHILD signals. This could cause a race. Patroni now uses fork/exec and leaves the original PID 1 process to handle child signals.

- Fix WAL-E restore. (Oleksii Kliukin)

  Previously, WAL-E restore used `no_master` to bypass the master check. Patroni therefore always preferred WAL restore to `pg_basebackup`. The original `no_master` meaning is restored: Patroni can select WAL-E when the master is not running. It checks this through the connection string passed to the method. This change also improves retries and handles other minor issues.

- Implement asynchronous DNS resolver cache. (Alexander Kukushkin)

  Avoid failing when DNS is temporary unavailable (for instance, due to an excessive traffic received by the node).

- Implement starting state and master start timeout. (Ants Aasma, Alexander Kukushkin)

  Previously, `pg_ctl` assumed PostgreSQL was running after a timeout, even when it was not. The resulting race could cause failover, crash recovery, or failover during recovery with a missed rewind. The new `master_start_timeout` parameter and `starting` HA state address this. With `master_start_timeout` set to 0, a master crash triggers immediate failover if a candidate exists. Otherwise, Patroni tries to start the master, waits for the timeout, and then fails over if possible. Manual failover requests remain valid before the timeout expires.

  Introduce the `timeout` parameter to the `restart` API endpoint and [patronictl](/docs/patroni/patronictl#patronictl). When it is set and restart takes longer than the timeout, PostgreSQL is considered unhealthy and the other nodes becomes eligible to take the leader lock.

- Fix `pg_rewind` behavior in a pause mode. (Ants Aasma)

  In pause mode, avoid a restart when rewind is required but unavailable, for example when `pg_rewind` is absent. If rewind configuration omits `superuser` authentication, use `libpq` defaults for `superuser`, including the OS user.

- Serialize callback execution. Kill the previous callback of the same type when the new one is about to run. Fix the issue of spawning zombie processes when running callbacks. (Alexander Kukushkin)

- Avoid promoting a former master when the leader key is set in DCS but update to this leader key fails. (Alexander Kukushkin)

  A partition can isolate the current master with a minority of DCS nodes. This change prevents it from keeping its role. It applies to Etcd and other DCSs that allow "inconsistent reads".

**Miscellaneous**

- Add `post_init` configuration option on bootstrap. (Alejandro Martínez)

  Patroni will call the script argument of this option right after running `initdb` and starting up PostgreSQL for a new cluster. The script receives a connection URL with `superuser` and sets `PGPASSFILE` to point to the `.pgpass` file containing the password. If the script fails, Patroni initialization fails as well. It is useful for adding new users or creating extensions in the new cluster.

- Implement PostgreSQL 9.6 support. (Alexander Kukushkin)

  Use `wal_level = replica` as a synonym for `hot_standby`, avoiding pending_restart flag when it changes from one to another. (Alexander Kukushkin)

**Documentation improvements**

- Add a Patroni main [loop workflow diagram](https://raw.githubusercontent.com/patroni/patroni/master/docs/ha_loop_diagram.png). (Alejandro Martínez, Alexander Kukushkin)

- Improve README, adding the Helm chart and links to release notes. (Lauri Apple)

- Move Patroni documentation to `Read the Docs`. The up-to-date documentation is available at [Patroni documentation](/docs/patroni/). (Oleksii Kliukin)

  Makes the documentation easily viewable from different devices (including smartphones) and searchable.

- Move the package to the semantic versioning. (Oleksii Kliukin)

  Patroni will follow the major.minor.patch version schema to avoid releasing the new minor version on small but critical bugfixes. We will only publish the release notes for the minor version, which will include all patches.

--------

## Version 1.1

Released 2016-09-07

This release adds pause mode and improves maintenance with scheduled and conditional restarts. It also improves Etcd and Zookeeper connection reliability and extends patronictl.

**Upgrade notice**

When upgrading from releases below 1.0 read about changing of credentials and configuration format at 1.0 release notes.

**Pause mode**

- Introduce pause mode to temporary detach Patroni from managing PostgreSQL instance (Murat Kabilov, Alexander Kukushkin, Oleksii Kliukin).

  Previously, one had to send SIGKILL signal to Patroni to stop it without terminating PostgreSQL. The new pause mode detaches Patroni from PostgreSQL cluster-wide without terminating Patroni. It is similar to the maintenance mode in Pacemaker. Patroni is still responsible for updating member and leader keys in DCS, but it will not start, stop or restart PostgreSQL server in the process. There are a few exceptions, for instance, manual failovers, reinitializes and restarts are still allowed. You can read [a detailed description of this feature](/docs/patroni/pause#pause).

In addition, patronictl supports new [pause](/docs/patroni/pause#pause) and `resume` commands to toggle the pause mode.

**Scheduled and conditional restarts**

- Add conditions to the restart API command (Oleksii Kliukin)

  Restart requests can now have conditions. These can require a master or replica role, a PostgreSQL version, or pending configuration changes that need a restart.

- Add scheduled restarts (Oleksii Kliukin)

  You can schedule one future restart per node and clear it when no longer needed. Scheduled restarts can also have conditions. For example, schedule a nighttime minor upgrade that restarts only outdated PostgreSQL instances. Administration scripts do not need PostgreSQL-specific logic for this.

- Add support for conditional and scheduled restarts to patronictl (Murat Kabilov).

  patronictl restart supports several new options. There is also patronictl flush command to clean the scheduled actions.

**Robust DCS interaction**

- Set Kazoo timeouts depending on the loop_wait (Alexander Kukushkin)

  Originally, ping_timeout and connect_timeout values were calculated from the negotiated session timeout. Patroni loop_wait was not taken into account. As a result, a single retry could take more time than the session timeout, forcing Patroni to release the lock and demote.

  This change set ping and connect timeouts to half of loop_wait. It accelerated connection problem detection. It also left enough time to retry the connection before losing the lock.

- Update Etcd topology only after original request succeed (Alexander Kukushkin)

  Update the client's Etcd topology after the original request succeeds. During discovery, set retry timeouts according to the known Etcd node count. This prioritizes request results over an updated node list.

  Both changes make Patroni connections to DCS more robust in the face of network issues.

**Patronictl, monitoring and configuration**

- Return information about streaming replicas via the API (Feike Steenbergen)

Previously, there was no reliable way to query Patroni about PostgreSQL instances that fail to stream changes (for instance, due to connection issues). This change exposes the contents of pg_stat_replication via the /patroni endpoint.

- Add patronictl scaffold command (Oleksii Kliukin)

  This command creates an Etcd cluster structure with a user-specified sysid and leader. Leader and member keys are persistent. It supports master-less configurations where Patroni replicas follow an external master that does not use Patroni. Later, remove the leader key to promote a Patroni node and replace the original master with a Patroni HA cluster.

- Add configuration option `bin_dir` to locate PostgreSQL binaries (Ants Aasma)

  It is useful to be able to specify the location of PostgreSQL binaries explicitly when Linux distros that support installing multiple PostgreSQL versions at the same time.

- Allow configuration file path to be overridden using `custom_conf` of (Alejandro Martínez)

  Allows for custom configuration file paths, which will be unmanaged by Patroni, [details](/docs/patroni/config/yaml#postgresql_settings).

**Bug fixes and code improvements**

- Make Patroni compatible with new version schema in PostgreSQL 10 and above (Feike Steenbergen)

  Make sure that Patroni understand 2-digits version numbers when doing conditional restarts based on the PostgreSQL version.

- Use pkgutil to find DCS modules (Alexander Kukushkin)

  Use the dedicated python module instead of traversing directories manually in order to find DCS modules.

- Always call on_start callback when starting Patroni (Alexander Kukushkin)

  Previously, Patroni did not call callbacks when joining a running node with the correct role. Callbacks often configure client routing, so this could leave the node unregistered. Patroni now calls on_start even when joining a running node.

- Do not drop active replication slots (Murat Kabilov, Oleksii Kliukin)

  Avoid dropping active physical replication slots on master. PostgreSQL cannot drop such slots anyway. This change makes possible to run non-Patroni managed replicas/consumers on the master.

- Close Patroni connections during start of the PostgreSQL instance (Alexander Kukushkin)

  Forces Patroni to close all former connections when PostgreSQL node is started. Avoids the trap of reusing former connections if postmaster was killed with SIGKILL.

- Replace invalid characters when constructing slot names from member names (Ants Aasma)

  Make sure that standby names that do not comply with the slot naming rules don't cause the slot creation and standby startup to fail. Replace the dashes in the slot names with underscores and all other characters not allowed in slot names with their unicode codepoints.

--------

## Version 1.0

Released 2016-07-05

This release introduces the global dynamic configuration that allows dynamic changes of the PostgreSQL and Patroni configuration parameters for the entire HA cluster. It also delivers numerous bugfixes.

**Upgrade notice**

When upgrading from v0.90 or below, always upgrade all replicas before the master. Since we don't store replication credentials in DCS anymore, an old replica won't be able to connect to the new master.

**Dynamic Configuration**

- Implement the dynamic global configuration (Alexander Kukushkin)

  The new /config REST API endpoint supplies global PostgreSQL and Patroni settings for the master and all replicas. These settings reside in DCS. Many can change without disrupting PostgreSQL or Patroni. Values that require a PostgreSQL restart set the API-visible "pending restart" flag. Issue the restart manually through the API.

  Patroni SIGHUP or POST to /reload will make it re-read the configuration file.

  See the [Patroni configuration](/docs/patroni/config#config) for the details on which parameters can be changed and the order of processing difference configuration sources.

  The configuration file format *has changed* since v0.90. Old configuration files remain compatible, but bootstrap parameters require the new format. Use the [dynamic configuration documentation page](/docs/patroni/config/dynamic#dynamic) to update them.

**More flexible configuration**\*

- Make postgresql configuration and database name Patroni connects to configurable (Misja Hoebe)

  Introduce `database` and `config_base_name` configuration parameters. Among others, it makes possible to run Patroni with PipelineDB and other PostgreSQL forks.

- Implement possibility to configure some Patroni configuration parameters via environment (Alexander Kukushkin)

  Environment settings include scope, node name, namespace, and secrets. They simplify operation in dynamic environments such as Kubernetes. See the [supported environment variables](/docs/patroni/config/env#env).

- Update the built-in Patroni docker container to take advantage of environment-based configuration (Feike Steenbergen).

- Add Zookeeper support to Patroni docker image (Alexander Kukushkin)

- Split the Zookeeper and Exhibitor configuration options (Alexander Kukushkin)

- Make patronictl reuse the code from Patroni to read configuration (Alexander Kukushkin)

  This allows patronictl to take advantage of environment-based configuration.

- Set application name to node name in primary_conninfo (Alexander Kukushkin)

  This simplifies identification and configuration of synchronous replication for a given node.

**Stability, security and usability improvements**

- Reset sysid and do not call pg_controldata when restore of backup in progress (Alexander Kukushkin)

  This change reduces the amount of noise generated by Patroni API health checks during the lengthy initialization of this node from the backup.

- Fix a bunch of pg_rewind corner-cases (Alexander Kukushkin)

  Avoid running pg_rewind if the source cluster is not the master.

  In addition, avoid removing the data directory on an unsuccessful rewind, unless the new parameter *remove_data_directory_on_rewind_failure* is set to true. By default it is false.

- Remove passwords from the replication connection string in DCS (Alexander Kukushkin)

  Previously, Patroni always used the replication credentials from the Postgres URL in DCS. That is now changed to take the credentials from the patroni configuration. The secrets (replication username and password) and no longer exposed in DCS.

- Fix the asynchronous machinery around the demote call (Alexander Kukushkin)

  Demote now runs totally asynchronously without blocking the DCS interactions.

- Make patronictl always send the authorization header if it is configured (Alexander Kukushkin)

  This allows patronictl to issue "protected" requests, i.e. restart or reinitialize, when Patroni is configured to require authorization on those.

- Handle the SystemExit exception correctly (Alexander Kukushkin)

  Avoids the issues of Patroni not stopping properly when receiving the SIGTERM

- Sample haproxy templates for confd (Alexander Kukushkin)

  Generates and dynamically changes haproxy configuration from the patroni state in the DCS using confide

- Improve and restructure the documentation to make it more friendly to the new users (Lauri Apple)

- API must report role=master during pg_ctl stop (Alexander Kukushkin)

  Makes the callback calls more reliable, particularly in the cluster stop case. In addition, introduce the `pg_ctl_timeout` option to set the timeout for the start, stop and restart calls via the `pg_ctl`.

- Fix the retry logic in etcd (Alexander Kukushkin)

  Make retries more predictable and robust.

- Make Zookeeper code more resilient against short network hiccups (Alexander Kukushkin)

  Reduce the connection timeouts to make Zookeeper connection attempts more frequent.

--------

## Version 0.90

Released 2016-04-27

This releases adds support for Consul, includes a new *noloadbalance* tag, changes the behavior of the *clonefrom* tag, improves *pg_rewind* handling and improves *patronictl* control program.

**Consul support**

- Implement Consul support (Alexander Kukushkin)

  Patroni runs against Consul, in addition to Etcd and Zookeeper. the connection parameters can be configured in the YAML file.

**New and improved tags**

- Implement *noloadbalance* tag (Alexander Kukushkin)

  This tag makes Patroni always return that the replica is not available to the load balancer.

- Change the implementation of the *clonefrom* tag (Alexander Kukushkin)

  Previously, *clonefrom* required a node name and forced the tagged replica to clone from that node. It is now boolean. With true, the tagged replica becomes a source candidate for other replicas. When multiple candidates exist, replicas choose one randomly.

**Stability and security improvements**

- Numerous reliability improvements (Alexander Kukushkin)

  Removes some spurious error messages, improves the stability of the failover, addresses some corner cases with reading data from DCS, shutdown, demote and reattaching of the former leader.

- Improve systems script to avoid killing Patroni children on stop (Jan Keirse, Alexander Kukushkin)

  Previously, *systemd* sent PostgreSQL a shutdown signal when stopping Patroni. Patroni also sent a shutdown request, so PostgreSQL received smart shutdown followed by fast shutdown. Replicas disconnected too early, and the former master could not rejoin after demotion. Jan implemented the fix after Alexander's research.

- Eliminate some cases where the former master was unable to call pg_rewind before rejoining as a replica (Oleksii Kliukin)

  Previously, Patroni called *pg_rewind* only after a former master crashed. It now runs pg_rewind for the former master whenever the tool is available. This handles master shutdown before replicas receive the latest changes, for example during smart shutdown.

- Numerous improvements to unit- and acceptance- tests, in particular, enable support for Zookeeper and Consul (Alexander Kukushkin).

- Make Travis CI faster and implement support for running tests against Zookeeper (Exhibitor) and Consul (Alexander Kukushkin)

  Both unit and acceptance tests run automatically against Etcd, Zookeeper and Consul on each commit or pull-request.

- Clear environment variables before calling PostgreSQL commands from Patroni (Feike Steenbergen)

  This prevents a possibility of reading system environment variables by connecting to the PostgreSQL cluster managed by Patroni.

**Configuration and control changes**

- Unify patronictl and Patroni configuration (Feike Steenbergen)

  patronictl can use the same configuration file as Patroni itself.

- Enable Patroni to read the configuration from the environment variables (Oleksii Kliukin)

  This simplifies generating configuration for Patroni automatically, or merging a single configuration from different sources.

- Include database system identifier in the information returned by the API (Feike Steenbergen)

- Implement *delete_cluster* for all available DCSs (Alexander Kukushkin)

  Enables support for DCSs other than Etcd in patronictl.

--------

## Version 0.80

Released 2016-03-14

This release adds *cascading replication* and *scheduled failovers*. Older Patroni versions, particularly 0.78, can run with this version during migration. Cascading replication and scheduled failover features require Patroni 0.80 or later.

**Cascading replication**

> - Add support for the *replicatefrom* and *clonefrom* tags for the patroni node (Oleksii Kliukin).
>
> The tag *replicatefrom* allows a replica to use an arbitrary node a source, not necessary the master. The *clonefrom* does the same for the initial backup. Together, they enable Patroni to fully support cascading replication.

- Add support for running replication methods to initialize the replica even without a running replication connection (Oleksii Kliukin).

> This is useful in order to create replicas from the snapshots stored on S3 or FTP. A replication method that does not require a running replication connection should supply *no_master: true* in the yaml configuration. Those scripts will still be called in order if the replication connection is present.

**Patronictl, API and DCS improvements**

- Implement scheduled failovers (Feike Steenbergen).

  Failovers can be scheduled to happen at a certain time in the future, using either patronictl, or API calls.

- Add support for *dbuser* and *password* parameters in patronictl (Feike Steenbergen).

- Add PostgreSQL version to the health check output (Feike Steenbergen).

- Improve Zookeeper support in patronictl (Oleksandr Shulgin)

- Migrate to python-etcd 0.43 (Alexander Kukushkin)

**Configuration**

- Add a sample systems configuration script for Patroni (Jan Keirse).
- Fix the problem of Patroni ignoring the superuser name specified in the configuration file for DB connections (Alexander Kukushkin).
- Fix the handling of CTRL-C by creating a separate session ID and process group for the postmaster launched by Patroni (Alexander Kukushkin).

**Tests**

- Add acceptance tests with *behave* in order to check real-world scenarios of running Patroni (Alexander Kukushkin, Oleksii Kliukin).

  The tests can be launched manually using the *behave* command. They are also launched automatically for pull requests and after commits.

  Release notes for some older versions can be found on [project's github page](https://github.com/patroni/patroni/releases).
