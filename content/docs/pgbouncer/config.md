---
title: "Configuration: pgbouncer.ini"
linkTitle: "Config"
weight: 20
description: "PgBouncer configuration file (pgbouncer.ini) reference"
icon: fa-solid fa-code
module: [PGBOUNCER]
categories: [Reference]
---

> Source: <https://www.pgbouncer.org/config.html> · [1.26.0 source](https://github.com/pgbouncer/pgbouncer/blob/pgbouncer_1_26_0/doc/config.md)

--------

## Description

The configuration file uses INI format. Section names appear between `[` and `]`. Lines beginning with `;` or `#` are comments and are ignored. Elsewhere in a line, these characters have no special meaning.

--------

## Generic settings

### logfile

Specifies the log file. For daemonization (`-d`), either this or `syslog` need to be set.

PgBouncer keeps the log file open. After rotation, run `kill -HUP` or console `RELOAD;`. On Windows, stop and start the service.

Note that setting `logfile` does not by itself turn off logging to stderr. Use the command-line option `-q` or `-d` for that.

Default: not set

### pidfile

Specifies the PID file. Without `pidfile` set, daemonization (`-d`) is not allowed.

Default: not set

### listen_addr

Comma-separated TCP listen addresses. Use `*` for all addresses. If unset, PgBouncer accepts only Unix socket connections.

Addresses can be specified numerically (IPv4/IPv6) or by name.

Default: not set

### listen_port

Which port to listen on. Applies to both TCP and Unix sockets.

Default: 6432

### unix_socket_dir

Unix socket directory for listening and server connections. An empty string disables Unix sockets. A value beginning with `@` selects the abstract namespace, currently supported on Linux and Windows.

Default: `/tmp` (empty on Windows)

### unix_socket_mode

File system mode for Unix socket. Ignored for sockets in the abstract namespace. Not supported on Windows.

Default: 0777

### unix_socket_group

Group name to use for Unix socket. Ignored for sockets in the abstract namespace. Not supported on Windows.

Default: not set

### user

If set, specifies the Unix user to change to after startup. Works only if PgBouncer is started as root or if it's already running as the given user. Not supported on Windows.

Default: not set

### pool_mode

Specifies when a server connection can be reused by other clients.

- **`session`**: Server is released back to pool after client disconnects. Default.
- **`transaction`**: Server is released back to pool after transaction finishes.
- **`statement`**: Server is released back to pool after query finishes. Transactions spanning multiple statements are disallowed in this mode.

### max_client_conn

Maximum number of client connections allowed.

Increasing this limit may also require a higher operating system file descriptor limit. PgBouncer can use more than `max_client_conn` file descriptors. If each client user connects to the server with its own name, the theoretical maximum is:

```text
max_client_conn + (max pool_size * total databases * total users)
```

If a database user is specified in the connection string (all users connect under the same user name), the theoretical maximum is:

```text
max_client_conn + (max pool_size * total databases)
```

Normal workloads should not reach this theoretical maximum; a deliberately constructed workload could. Set the file descriptor limit sufficiently high.

Search for `ulimit` in your favorite shell man page. Note: `ulimit` does not apply in a Windows environment.

Default: 100

### default_pool_size

Maximum server connections per user/database pair. Per-database or per-user `pool_size` overrides this value. It applies when neither specifies `pool_size`.

Default: 20

### min_pool_size

Add server connections when the pool is below this minimum. This improves response when normal load returns after inactivity. The pool size caps the effective minimum.

Only enforced for pools where at least one of the following is true:

* the entry in the `[database]` section for the pool has a value set for the `user` key (aka forced user)
* there is at least one client connected to the pool

Default: 0 (disabled)

### reserve_pool_size

How many additional connections to allow to a pool (see `reserve_pool_timeout`). 0 disables.

Default: 0 (disabled)

### reserve_pool_timeout

If a client has not been serviced in this time, use additional connections from the reserve pool. 0 disables. [seconds]

Default: 5.0

### max_db_connections

Maximum server connections per database, across all users. This refers to the client-facing PgBouncer database, not the destination PostgreSQL database.

This can also be set per database in the `[databases]` section.

At the limit, closing a client does not immediately free capacity for another pool. The first pool's server connection remains open. After its idle timeout closes it, PgBouncer immediately opens a connection for the waiting pool.

Default: 0 (unlimited)

### max_db_client_connections

Maximum client connections per database, across all users. This refers to the client-facing PgBouncer database, not the destination PostgreSQL database.

Set this to at least max_db_connections. The difference is the number of database connections that can queue while active connections finish.

This can also be set per database in the `[databases]` section.

Default: 0 (unlimited)

### max_user_connections

Maximum server connections per user, across all databases. The pool user is the configured server connection user, or the client user if no server user is specified.

This can also be set per user in the `[users]` section.

At the limit, closing a client does not immediately free capacity for another pool. The first pool's server connection remains open. After its idle timeout closes it, PgBouncer immediately opens a connection for the waiting pool.

Default: 0 (unlimited)

### max_user_client_connections

Maximum client connections per user, across all databases. Set it above max_user_connections. The difference between max_user_connections and max_user_client_connections is the maximum queue size for that user.

This can also be set per user in the `[users]` section.

Default: 0 (unlimited)

### server_round_robin

By default, PgBouncer reuses connections in LIFO order: last in, first out. A few connections therefore receive most load. This performs best with one database server. For TCP, DNS, or host-list round-robin routing, enable round-robin reuse in PgBouncer to distribute load evenly.

Default: 0

### track_extra_parameters

By default, PgBouncer tracks all the parameters that Postgres reports to the client and that can be changed by the client:

- `application_name`
- `client_encoding`
- `DateStyle`
- `default_transaction_read_only`
- `IntervalStyle`
- `scram_iterations` (since PostgreSQL version 16)
- `search_path` (since PostgreSQL version 18)
- `session_authorization`
- `standard_conforming_strings`
- `TimeZone`

List additional parameters here to keep them in the client variable cache. PgBouncer restores their server values whenever the client becomes active.

If you need to specify multiple values, use a comma-separated list (e.g. `some_extension.setting, other_extension.setting`)

Note: Most parameters cannot be fully tracked. PgBouncer learns `SET` changes only for parameters reported by Postgres. See the [reported parameter list](https://www.postgresql.org/docs/current/protocol-flow.html#PROTOCOL-ASYNC). Extensions can report new parameters or existing parameters that Postgres does not normally report. Citus 12.0+ reports `search_path`.

Some default tracked parameters require newer Postgres versions for reporting: `default_transaction_read_only` requires 14, `scram_iterations` requires 16, and `search_path` requires 18.

For unreported parameters, PgBouncer knows only values supplied in the client startup packet or its `options` parameter. For example, this applies to `search_path` before Postgres 18. When the client becomes active, PgBouncer applies its startup value. For clients without a supplied value, it restores the default. Later `SET` changes are not tracked and can affect other clients sharing the connection unless `server_reset_query_always` is used.

Postgres accepts parameters directly in the startup packet or inside [`options`][options-startup]. `track_extra_parameters` supports both methods. List the parameters inside `options`; you cannot list `options` itself.

Default: empty

### ignore_startup_parameters

By default, startup packets can contain only tracked parameters; see `track_extra_parameters`. Other parameters cause an error. List additional parameters here to let PgBouncer ignore them because the administrator manages them.

If you need to specify multiple values, use a comma-separated list (e.g. `options,extra_float_digits`)

Postgres accepts parameters directly in the startup packet or inside [`options`][options-startup]. `ignore_startup_parameters` supports both methods. You can also list `options` itself to ignore every unknown parameter inside it.

[options-startup]: https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-OPTIONS

Default: empty

### peer_id

Identifier for this PgBouncer process within its peer group. Each `peer_id` must be unique in the group. A value of 0 disables peering. The maximum is 16383. See `[peers]` for details.

Default: 0

### disable_pqexec

Disable Simple Query protocol (PQexec). Unlike Extended Query, Simple Query permits multiple queries per packet, which enables some SQL injection attacks. Disabling it can improve security. Only clients that exclusively use Extended Query continue to work.

Default: 0

### application_name_add_host

Add the client host address and port to the application name at connection startup. This helps identify query sources. It applies only at startup. PgBouncer does not alter later `SET` changes to `application_name`.

Default: 0

### conffile

Show location of current config file. Changing it will make PgBouncer use another config file for next `RELOAD` / `SIGHUP`.

Default: file from command line

### service_name

Used on win32 service registration.

Default: `pgbouncer`

### job_name

Alias for `service_name`.

### stats_period

Sets how often the averages shown in various `SHOW` commands are updated and how often aggregated statistics are written to the log (but see `log_stats`). [seconds]

Default: 60

### max_prepared_statements

A non-zero value enables protocol-level named prepared statement tracking in transaction and statement pooling. PgBouncer makes each client statement available on its assigned server connection, even if another connection originally prepared it.

PgBouncer assigns each unique prepared query string an internal name, `PGBOUNCER_{unique_id}`. Identical strings share a name, even across clients. PostgreSQL receives only this internal name. PgBouncer tracks each client's statement names and rewrites commands before forwarding them, for example from `my_prepared_statement` to `PGBOUNCER_123`. If the assigned server has not prepared the statement, PgBouncer prepares it before execution. This can occur when a client receives a different server connection.

Note: SQL-level `PREPARE`, `EXECUTE`, and `DEALLOCATE` commands are not tracked or rewritten. PgBouncer forwards them directly to Postgres. The exceptions are `DEALLOCATE ALL` and `DISCARD ALL`: these clear the tracked statements for the requesting client.

This value limits prepared statements in each server connection's LRU cache. A value of 0 disables support in transaction and statement pooling. For best performance, use a value above the number of commonly used application statements. Higher values increase PostgreSQL memory per connection because more statements remain prepared. They also increase PgBouncer memory use for query strings.

PgBouncer limits memory use in two ways:
- Each unique query is stored once in a global cache.
- Each client uses a packet rewrite buffer, at most four times `pkt_buf`. This maximum is reached only when prepared queries are between two and four times `pkt_buf`.

So if you consider the following as an example scenario:
- There are 1000 active clients
- The clients prepare 200 unique queries
- The average size of a query is 5kB
- `pkt_buf` parameter is set to the default of 4096 (4kB)

Then, PgBouncer needs at most the following amount of memory to handle these prepared statements:

```text
200 x 5kB + 1000 x 4 x 4kB = ~17MB of memory.
```

Prepared statement tracking also increases CPU use because PgBouncer inspects and rewrites commands. To use multiple cores, run multiple instances on one port. See [`so_reuseport`](#so_reuseport).

Prepared statements reduce repeated query parsing and planning, as with direct PostgreSQL connections. PgBouncer also reuses statements prepared by other clients on the same server connection. For example, with `pool_size` 20 and 100 clients preparing an identical query, PostgreSQL prepares and parses it only 20 times.

If a reused statement's return or argument types change between executions, PostgreSQL currently raises an error such as:

```text
ERROR:  cached plan must not change result type
```

Do not use identical query strings with different expected argument or result types across clients. This problem commonly occurs during DDL migrations that add columns or change column types. After migration, run `RECONNECT` in the admin console to force statement preparation again and clear the error.

Default: 200

### scram_iterations

Number of iterations for SCRAM-SHA-256 password encryption. Higher values strengthen protection against brute-force attacks on stored passwords but slow authentication.

Default: 4096

--------

## Authentication settings

PgBouncer handles its own client authentication and has its own database of users. These settings control this.

### auth_type

How to authenticate users.

- **`cert`**: Client must connect over TLS connection with a valid client certificate. The user name is then taken from the CommonName field from the certificate.
- **`md5`**: Use MD5-based password check. This is the default authentication method. `auth_file` may contain both MD5-encrypted and plain-text passwords. If `md5` is configured and a user has a SCRAM secret, then SCRAM authentication is used automatically instead.
- **`scram-sha-256`**: Use password check with SCRAM-SHA-256. `auth_file` has to contain SCRAM secrets or plain-text passwords.
- **`plain`**: The clear-text password is sent over the wire. Deprecated.
- **`trust`**: No authentication is done. The user name must still exist in `auth_file`.
- **`any`**: Like the `trust` method, but the user name given is ignored. Requires that all databases are configured to log in as a specific user. Additionally, the console database allows any user to log in as a statistics user; users listed in `admin_users` receive administrator privileges.
- **`hba`**: The actual authentication type is loaded from `auth_hba_file`. This allows different authentication methods for different access paths, for example: connections over Unix socket use the `peer` authentication method, connections over TCP must use TLS.
- **`ldap`**: Users are authenticated against an LDAP server, like in PostgreSQL (see <https://www.postgresql.org/docs/current/auth-ldap.html> for details). The LDAP connection options are configured using the setting `auth_ldap_options`, or alternatively in the `auth_hba_file`.
- **`pam`**: PAM is used to authenticate users, `auth_file` is ignored. This method is not compatible with databases using the `auth_user` option. The service name reported to PAM is "pgbouncer". `pam` is not supported in the HBA configuration file.

### auth_hba_file

HBA configuration file to use when `auth_type` is `hba`. See section [HBA file format](#hba-file-format) below about details.

Default: not set

### auth_ident_file

Identity map file to use when `auth_type` is `hba` and a user map will be defined. See section [Ident map file format](#ident-map-file-format) below about details.

Default: not set

### auth_file

The name of the file to load user names and passwords from. See section [Authentication file format](#authentication-file-format) below about details.

Most authentication types (see above) require that either `auth_file` or `auth_user` be set; otherwise there would be no users defined.

Default: not set

### auth_user

With `auth_user`, PgBouncer uses `auth_query` to retrieve users absent from `auth_file` from database `pg_authid`. It connects as `auth_user` using that user's password from `auth_file`. If `auth_user` needs no password, it need not appear in `auth_file`.

Direct access to `pg_authid` requires admin rights. It's preferable to use a non-superuser that calls a SECURITY DEFINER function instead.

Default: not set

### auth_query

Query to load user's password from database.

Direct access to `pg_authid` requires admin rights. It's preferable to use a non-superuser that calls a SECURITY DEFINER function instead.

Note that the query is run inside the target database. So if a function is used, it needs to be installed into each database.

The query must return user name and encrypted or hashed password columns. For a nonexistent user, return no rows or a row with a null user name. The default query returns no rows. A null user name is useful with record-returning functions; see [Examples](#examples). A null password means the user exists but has no usable password. PgBouncer then rejects every supplied password.

Default: `SELECT rolname, CASE WHEN rolvaliduntil < now() THEN NULL ELSE rolpassword END FROM pg_authid WHERE rolname=$1 AND rolcanlogin`

### auth_dbname

Database name in the `[database]` section to be used for authentication purposes. This option can be either global or overridden in the connection string if this parameter is specified.

### auth_ldap_options

LDAP connection options to use if `auth_type` is `ldap`. (Not used if authentication is configured via `auth_hba_file`.) Example:

```ini
auth_ldap_options = ldapurl="ldap://127.0.0.1:12345/dc=example,dc=net?uid?sub"
```

--------

## Log settings

### syslog

Toggles syslog on/off. On Windows, the event log is used instead.

Default: 0

### syslog_ident

Under what name to send logs to syslog.

Default: `pgbouncer` (program name)

### syslog_facility

Under what facility to send logs to syslog. Possibilities: `auth`, `authpriv`, `daemon`, `user`, `local0-7`.

Default: `daemon`

### log_connections

Log successful logins.

Default: 1

### log_disconnections

Log disconnections with reasons.

Default: 1

### log_pooler_errors

Log error messages the pooler sends to clients.

Default: 1

### log_stats

Write aggregated statistics into the log, every `stats_period`. This can be disabled if external monitoring tools are used to grab the same data from `SHOW` commands.

Default: 1

### verbose

Increase verbosity. Mirrors the `-v` switch on the command line. For example, using `-v -v` on the command line is the same as `verbose=2`. 3 is the highest currently-supported verbosity.

Default: 0

--------

## Console access control

### admin_users

Comma-separated list of database users that are allowed to connect and run all commands on the console. With `auth_type=any`, this list still determines who receives administrator privileges; other users can log in as statistics users. See the [1.26.0 console access checks](https://github.com/pgbouncer/pgbouncer/blob/pgbouncer_1_26_0/src/admin.c#L1572-L1609).

Default: empty

### stats_users

Comma-separated list of database users that are allowed to connect and run read-only queries on the console. That means all `SHOW` commands.

Default: empty

--------

## Connection sanity checks, timeouts

### server_reset_query

Query sent when a server connection is released, before another client uses it. No transaction is active at this point. Do not include `ABORT` or `ROLLBACK`.

The query clears session changes so the next client receives a known state. The default `DISCARD ALL` clears everything, including cached state. A lighter query, such as `DEALLOCATE ALL`, removes only prepared statements. Use a lighter query only if retained state does not break the application.

Transaction pooling does not use `server_reset_query`. Clients must avoid session features because transactions can use different connections and session states.

Default: `DISCARD ALL`

### server_reset_query_always

Controls whether `server_reset_query` runs in all pooling modes. When disabled, the default, it runs only in session pooling. Transaction pooling should not need a reset query.

Use this to work around applications that incorrectly use session features with transaction pooling. State loss becomes predictable: clients lose session state after every transaction.

Default: 0

### server_check_delay

How long to keep released connections available for immediate re-use, without running `server_check_query` on it. If 0 then the check is always run.

Default: 30.0

### server_check_query

Simple do-nothing query to check if the server connection is alive.

If an empty string, then sanity checking is disabled.

If `<empty>` then send empty query as sanity check.

Default: `<empty>`

### server_fast_close

In session pooling, close a server marked "close_needed" immediately if idle, or after its current transaction. This avoids waiting for session end. `RECONNECT`, changed connection settings on `RELOAD`, or DNS changes set "close_needed". Statement and transaction pooling already behave this way, so the setting has no effect there.

If this setting closes a server before client session end, PgBouncer also closes the client connection. The client can then detect the interruption.

This applies connection changes sooner during long sessions. Applications must reconnect and restore session state after interruptions. Running transactions are not interrupted, so no transactions are lost; only idle sessions are closed.

Default: 0

### server_lifetime

Close unused server connections older than this interval. Unused means not linked to a client. A value of 0 permits one use before closure. [seconds]

This can also be set per database in the `[databases]` section.

Default: 3600.0

### server_idle_timeout

If a server connection has been idle more than this many seconds it will be closed. If 0 then this timeout is disabled. [seconds]

Default: 600.0

### server_connect_timeout

If connection and login don't finish in this amount of time, the connection will be closed. [seconds]

Default: 15.0

### server_login_retry

After a connection or authentication failure, wait this interval before another server login attempt. During the interval, new clients receive an immediate error without another attempt. [seconds]

This prevents clients from queuing for an unavailable server. However, a brief failure, such as restart or configuration error, still delays retries by this interval. Use `PAUSE` for planned restarts to avoid this delay.

Default: 15.0

### client_login_timeout

If a client connects but does not manage to log in in this amount of time, it will be disconnected. [seconds]

Default: 60.0

### autodb_idle_timeout

If the automatically created (via `*`) database pools have been unused this many seconds, they are freed. The negative aspect of that is that their statistics are also forgotten. [seconds]

Default: 3600.0

### pool_idle_timeout

Free a database/user pool after it has no clients or servers for this interval. Unlike `autodb_idle_timeout`, this frees individual pools, not entire automatically created databases. Unlike `server_idle_timeout`, it frees the pool itself, but only when completely empty.

As with `autodb_idle_timeout`, freeing a pool discards its statistics. Per-database `SHOW STATS` totals sum only current pools, so totals decrease after removal. Monitoring may interpret this as a counter reset. This setting is therefore disabled by default. A value of 0 disables it. [seconds]

Default: 0 (disabled)

### dns_max_ttl

How long DNS lookups can be cached. The actual DNS TTL is ignored. [seconds]

Default: 15.0

### dns_nxdomain_ttl

How long DNS errors and NXDOMAIN DNS lookups can be cached. [seconds]

Default: 15.0

### dns_zone_check_period

Period to check if a zone serial has changed.

PgBouncer derives DNS zones from the part of each host name after the first dot. It checks zone serials periodically. After a serial change, it looks up every host in that zone again. A changed host IP invalidates its connections.

Works only with c-ares backend (`configure` option `--with-cares`).

Default: 0.0 (disabled)

### resolv_conf

The location of a custom `resolv.conf` file. This is to allow specifying custom DNS servers and perhaps other name resolution options, independent of the global operating system configuration.

Requires evdns (>= 2.0.3) or c-ares (>= 1.15.0) backend.

The parsing of the file is done by the DNS backend library, not PgBouncer, so see the library's documentation for details on allowed syntax and directives.

Default: empty (use operating system defaults)

### query_wait_notify

Time that a client will be queued for before PgBouncer sends a notification message that they are being queued. [seconds]

A value of 0 disables this notification message.

Default: 5

### login_notify_message

Welcome notify message that is sent to the client after a login is successful. Can be used to ensure that clients understand that they are connecting to pgbouncer instead of postgres directly.

Default: empty (no welcome message sent)

--------

## TLS settings

After RELOAD, new connections use changed certificate or key file contents, even if filenames are unchanged. Existing connections remain open. To apply replacement files promptly to all connections for security reasons, run RECONNECT after RELOAD.

Changing any TLS settings will trigger a RECONNECT automatically for security reasons.

### client_tls_sslmode

Client TLS mode. TLS is disabled by default. To enable it, also set `client_tls_key_file` and `client_tls_cert_file` for the accepting key and certificate. PEM is the most common supported certificate format.

- **`disable`**: Plain TCP. If client requests TLS, it's ignored. Default.
- **`allow`**: If client requests TLS, it is used. If not, plain TCP is used. If the client presents a client certificate, it is not validated.
- **`prefer`**: Same as `allow`.
- **`require`**: Client must use TLS. If not, the client connection is rejected. If the client presents a client certificate, it is not validated.
- **`verify-ca`**: Client must use TLS with valid client certificate.
- **`verify-full`**: Same as `verify-ca`.

### client_tls_key_file

Private key for PgBouncer to accept client connections.

Default: not set

### client_tls_cert_file

Certificate for private key. Clients can validate it.

Default: not set

### client_tls_ca_file

Root certificate file to validate client certificates.

Default: not set

### client_tls_protocols

Which TLS protocol versions are allowed. Allowed values: `tlsv1.0`, `tlsv1.1`, `tlsv1.2`, `tlsv1.3`. Shortcuts: `all` (tlsv1.0,tlsv1.1,tlsv1.2,tlsv1.3), `secure` (tlsv1.2,tlsv1.3).

Default: `secure`

### client_tls_ciphers

Allowed TLS ciphers, in OpenSSL syntax. Shortcuts:

- `default`/`secure`/`fast`/`normal` (these all use system wide OpenSSL defaults)
- `all` (enables all ciphers, not recommended)

Only connections using TLS version 1.2 and lower are affected. For version 1.3 see `client_tls13_ciphers` below.

Default: `default`

### client_tls13_ciphers

Allowed TLS v1.3 ciphers. When empty it will use the value of `client_tls_ciphers`. Allowed values:

- `TLS_AES_256_GCM_SHA384`
- `TLS_CHACHA20_POLY1305_SHA256`
- `TLS_AES_128_GCM_SHA256`
- `TLS_AES_128_CCM_8_SHA256`
- `TLS_AES_128_CCM_SHA256`

Only connections using TLS version 1.3 and higher are affected. For version 1.2 and lower see `client_tls_ciphers`.

Default: `<empty>`

### client_tls_ecdhcurve

Elliptic Curve name to use for ECDH key exchanges.

Allowed values: `none` (DH is disabled), `auto` (256-bit ECDH), curve name

Default: `auto`

### client_tls_dheparams

DHE key exchange type.

Allowed values: `none` (DH is disabled), `auto` (2048-bit DH), `legacy` (1024-bit DH)

Default: `auto`

### server_tls_sslmode

TLS mode to use for connections to PostgreSQL servers. The default mode is `prefer`.

- **`disable`**: Plain TCP. TLS is not even requested from the server.
- **`allow`**: FIXME: if server rejects plain, try TLS?
- **`prefer`**: TLS connection is always requested first from PostgreSQL. If refused, the connection will be established over plain TCP. Server certificate is not validated. Default.
- **`require`**: Connection must go over TLS. If server rejects it, plain TCP is not attempted. Server certificate is not validated.
- **`verify-ca`**: Connection must go over TLS and server certificate must be valid according to `server_tls_ca_file`. Server host name is not checked against certificate.
- **`verify-full`**: Connection must go over TLS and server certificate must be valid according to `server_tls_ca_file`. Server host name must match certificate information.

### server_tls_ca_file

Root certificate file to validate PostgreSQL server certificates.

Default: not set

### server_tls_key_file

Private key for PgBouncer to authenticate against PostgreSQL server.

Default: not set

### server_tls_cert_file

Certificate for private key. PostgreSQL server can validate it.

Default: not set

### server_tls_protocols

Which TLS protocol versions are allowed. Allowed values: `tlsv1.0`, `tlsv1.1`, `tlsv1.2`, `tlsv1.3`. Shortcuts: `all` (tlsv1.0,tlsv1.1,tlsv1.2,tlsv1.3), `secure` (tlsv1.2,tlsv1.3), `legacy` (all).

Default: `secure`

### server_tls_ciphers

Allowed TLS ciphers, in OpenSSL syntax. Shortcuts:

- `default`/`secure`/`fast`/`normal` (these all use system wide OpenSSL defaults)
- `all` (enables all ciphers, not recommended)

Only connections using TLS version 1.2 and lower are affected. For version 1.3 see `server_tls13_ciphers` below.

Default: `default`

### server_tls13_ciphers

Allowed TLS v1.3 ciphers. When empty it will use the value of `server_tls_ciphers`. Allowed values:

- `TLS_AES_256_GCM_SHA384`
- `TLS_CHACHA20_POLY1305_SHA256`
- `TLS_AES_128_GCM_SHA256`
- `TLS_AES_128_CCM_8_SHA256`
- `TLS_AES_128_CCM_SHA256`

Only connections using TLS version 1.3 and higher are affected. For version 1.2 and lower see `server_tls_ciphers`.

Default: `<empty>`

--------

## Dangerous timeouts

Setting the following timeouts can cause unexpected errors.

### query_timeout

Queries running longer than that are canceled. This should be used only with a slightly smaller server-side `statement_timeout`, to apply only for network problems. [seconds]

Default: 0.0 (disabled)

### query_wait_timeout

Maximum time queries are allowed to spend waiting for execution. If the query is not assigned to a server during that time, the client is disconnected. 0 disables. If this is disabled, clients will be queued indefinitely. [seconds]

This setting is used to prevent unresponsive servers from grabbing up connections. It also helps when the server is down or rejects connections for any reason.

This setting can also be configured per database and per user. The precedence is user, then database, then global. An explicit 0 at the selected level disables this timeout. See the [1.26.0 timeout selection code](https://github.com/pgbouncer/pgbouncer/blob/pgbouncer_1_26_0/src/janitor.c#L328-L336).

Default: 120.0

### cancel_wait_timeout

Maximum time cancellation requests are allowed to spend waiting for execution. If the cancel request is not assigned to a server during that time, the client is disconnected. 0 disables. If this is disabled, cancel requests will be queued indefinitely. [seconds]

This setting is used to prevent a client locking up when a cancel cannot be forwarded due to the server being down.

Default: 10.0

### client_idle_timeout

Client connections idling longer than this many seconds are closed. This should be larger than the client-side connection lifetime settings, and only used for network problems. [seconds]

Default: 0.0 (disabled)

### idle_transaction_timeout

If a client has been in "idle in transaction" state longer, it will be disconnected. [seconds]

Default: 0.0 (disabled)

### transaction_timeout

If a client has been in "in transaction" state longer, it will be disconnected. [seconds]

Default: 0.0 (disabled)

--------

## Low-level network settings

### pkt_buf

Internal buffer size for packets. Affects size of TCP packets sent and general memory usage. Actual libpq packets can be larger than this, so no need to set it large.

Default: 4096

### max_packet_size

Maximum size for PostgreSQL packets that PgBouncer allows through. One packet is either one query or one result set row. The full result set can be larger.

Default: 2147483647

### listen_backlog

Backlog argument for `listen(2)`. Determines how many new unanswered connection attempts are kept in the queue. When the queue is full, further new connections are dropped.

Default: 128

### sbuf_loopcnt

How many times to process data on one connection, before proceeding. Without this limit, one connection with a big result set can stall PgBouncer for a long time. One loop processes one `pkt_buf` amount of data. 0 means no limit.

Default: 5

### so_reuseport

Set `SO_REUSEPORT` on TCP listening sockets. On supported systems, multiple PgBouncer instances can share a host and port, and the kernel distributes connections. This uses multiple CPU cores. Each PgBouncer instance has one thread and uses one core.

Behavior depends on the kernel. At the time of writing, sufficiently recent Linux, DragonFlyBSD, and FreeBSD support the intended distribution. FreeBSD uses `SO_REUSEPORT_LB`. Other systems may permit port sharing but send all connections to one process. See your operating system's `setsockopt()` documentation.

On systems that don't support the socket option at all, turning this setting on will result in an error.

Each instance on one host needs distinct `unix_socket_dir` and `pidfile` settings, plus distinct `logfile` if used. TCP/IP can no longer select a specific instance. Consider this when collecting monitoring data and metrics.

Configure peering between processes so query cancellation continues to work. See `peer_id`, `peers`, and the example using peering with `so_reuseport`.

Default: 0

### tcp_defer_accept

Sets the `TCP_DEFER_ACCEPT` socket option; see `man 7 tcp` for details. (This is a Boolean option: 1 means enabled. The actual value set if enabled is currently hardcoded to 45 seconds.)

This is currently only supported on Linux.

Default: 1 on Linux, otherwise 0

### tcp_socket_buffer

Default: not set

### tcp_keepalive

Turns on basic keepalive with OS defaults.

On Linux, the system defaults are `tcp_keepidle=7200`, `tcp_keepintvl=75`, `tcp_keepcnt=9`. They are probably similar on other operating systems.

Default: 1

### tcp_keepcnt

Default: not set

### tcp_keepidle

Default: not set

### tcp_keepintvl

Default: not set

### tcp_user_timeout

Sets `TCP_USER_TIMEOUT`: maximum milliseconds that transmitted data can remain unacknowledged before forced connection closure. A value of 0 uses the operating system default.

This is currently only supported on Linux.

Default: 0

--------

## Section [databases]

The `[databases]` section defines client-facing database names and connection destinations. Use key=value entries:

```ini
dbname = connection string
```

The key is the database name. The value contains key=value connection parameters described below. Syntax resembles libpq, but PgBouncer does not use libpq and supports different features. For example:

```ini
foodb = host=host1.example.com port=5432
bardb = host=localhost dbname=bazdb
```

The database name can contain characters `_0-9A-Za-z` without quoting. Names that contain other characters need to be quoted with standard SQL identifier quoting: double quotes, with `""` for a single instance of a double quote.

The database name `pgbouncer` is reserved for the admin console and cannot be used as a key here.

`*` acts as a fallback database: If the exact name does not exist, its value is taken as connection string for the requested database. For example, if there is an entry (and no other overriding entries)

```ini
* = host=foo
```

then a connection to PgBouncer specifying a database `bar` will effectively behave as if an entry

```ini
bar = host=foo dbname=bar
```

exists (taking advantage of the default for `dbname` being the client-side database name; see below).

Such automatically created database entries are cleaned up if they stay idle longer than the time specified by the `autodb_idle_timeout` parameter.

### dbname

Destination database name.

Default: same as client-side database name

### host

Destination host name or IP address. PgBouncer resolves names at connection time and caches results for `dns_max_ttl`. If DNS results change, it closes old connections on release according to pooling mode. New connections use the changed result immediately. Multiple DNS results are used in round-robin order.

If the value begins with `/`, then a Unix socket in the file-system namespace is used. If the value begins with `@`, then a Unix socket in the abstract namespace is used.

You can specify comma-separated host names or addresses for round-robin connections. If a host also resolves to multiple IP addresses, the two round-robin mechanisms operate independently. This implementation detail can change. Every listed host must remain available: this list has no mechanism to skip unreachable hosts or select available ones. This differs from libpq host lists.

Host selection affects new connections only. See `server_round_robin` for assignment to existing server connections.

Examples:

```text
host=localhost
host=127.0.0.1
host=2001:0db8:85a3:0000:0000:8a2e:0370:7334
host=/var/run/postgresql
host=192.168.0.1,192.168.0.2,192.168.0.3
```

Default: not set, meaning to use a Unix socket

### port

Default: 5432

### user

If `user=` is set, all connections to the destination database will be done with the specified user, meaning that there will be only one pool for this database.

Otherwise, PgBouncer logs into the destination database with the client user name, meaning that there will be one pool per user.

### password

If no password is specified here, the password from the `auth_file` will be used for the user specified above. Dynamic forms of password discovery such as `auth_query` are not currently supported.

### auth_user

Override of the global `auth_user` setting, if specified.

### auth_query

Override of the global `auth_query` setting, if specified. The entire SQL statement needs to be enclosed in single quotes.

### auth_dbname

Override of the global `auth_dbname` setting, if specified.

### pool_size

Set the maximum size of pools for this database. If not set, the `default_pool_size` is used.

### min_pool_size

Set the minimum pool size for this database. If not set, the global `min_pool_size` is used.

Only enforced if at least one of the following is true:

* this entry in the `[database]` section has a value set for the `user` key (aka forced user)
* there is at least one client connected to the pool

### reserve_pool_size

Set additional connections for this database. If not set, the global `reserve_pool_size` is used. For backwards compatibility reasons `reserve_pool` is an alias for this option.

### connect_query

Query to be executed after a connection is established, but before allowing the connection to be used by any clients. If the query raises errors, they are logged but ignored otherwise.

### pool_mode

Set the pool mode specific to this database. If not set, the default `pool_mode` is used.

### query_wait_timeout

Maximum time queries are allowed to spend waiting for execution. 0 disables. Omit this setting to inherit the applicable default. [seconds]

See description of the global `query_wait_timeout` setting for additional detail.

A user-level `query_wait_timeout` overrides this database setting. If neither is set, the global `query_wait_timeout` is used.

### load_balance_hosts

When a comma-separated list is specified in `host`, `load_balance_hosts` controls which entry is chosen for a new connection.

Note: This setting controls multiple connection-string hosts, but not multiple IP addresses returned for one DNS name. A future release may extend it to both methods.

- **`round-robin`**: A new connection attempt chooses the next host entry in the list.
- **`disable`**: A new connection continues using the same host entry until a connection fails, after which the next host entry is chosen.

It is recommended to set `server_login_retry` lower than the default to ensure fast retries when multiple hosts are available.

Default: `round-robin`

### max_db_connections

Configure a database-wide maximum of server connections (i.e. all pools within the database will not have more than this many server connections).

### max_db_client_connections

Configure a database-wide client connection maximum. Should be used in conjunction with `max_client_conn` to limit the number of connections that PgBouncer is allowed to accept.

### server_lifetime

Configure the `server_lifetime` per database. If not set the database will fall back to the instance wide configured value for `server_lifetime`.

### client_encoding

Ask specific `client_encoding` from server.

### datestyle

Ask specific `datestyle` from server.

### timezone

Ask specific `timezone` from server.

--------

## Section [users]

This section contains key=value lines like

```ini
user1 = settings
```

where the key will be taken as a user name and the value as a list of key=value pairs of configuration settings specific for this user. Example:

```ini
user1 = pool_mode=session
```

Only a few settings are available here.

If a user appears in `[users]` but not in configured `auth_file`, PgBouncer uses `auth_query` when `auth_user` is set. Without `auth_user`, PgBouncer treats the user as existing but accepts no password. It does not return "no such user".

### pool_size

Set the maximum size of pools for all connections from this user. If not set, the database or `default_pool_size` is used.

### reserve_pool_size

Set the number of additional connections to allow to a pool for this user. If not set, the database configuration or the global `reserve_pool_size` is used.

### pool_mode

Set the pool mode to be used for all connections from this user. If not set, the database or default `pool_mode` is used.

### max_user_connections

Configure a maximum for the user of server connections (i.e. all pools with the user will not have more than this many server connections).

### query_timeout

Set the maximum number of seconds that a user query can run for. If set this timeout overrides the server level `query_timeout` described above.

### query_wait_timeout

Maximum time queries are allowed to spend waiting for execution. 0 disables. Omit this setting to inherit the applicable default. [seconds]

See description of the global `query_wait_timeout` setting for additional detail.

This setting overrides both the database and global `query_wait_timeout`. If not set, the database setting is used, falling back to the global value.

### idle_transaction_timeout

Set the maximum number of seconds that a user can have an idle transaction open. If set this timeout overrides the server level `idle_transaction_timeout` described above.

### transaction_timeout

Set the maximum number of seconds that a user can have a transaction open. If set this timeout overrides the server level `transaction_timeout` described above.

### client_idle_timeout

Set the maximum amount of time in seconds that a client is allowed to idly connect to the PgBouncer instance. If set this timeout overrides the server level `client_idle_timeout` described above.

Please note that this is a potentially dangerous timeout.

### max_user_client_connections

Configure a maximum for the user of client connections. This is the user equivalent of the `max_client_conn` setting.

--------

## Section [peers]

The section `[peers]` defines the peers that PgBouncer can forward cancellation requests to and where those cancellation requests will be routed.

Define `peer_id` and `[peers]` in each process configuration to create a peer group. Peers forward cancellation requests to the process handling the query. This is necessary when processes, possibly on different servers, share a TCP load balancer. Query cancellation uses a separate TCP connection, so the balancer can route it to a different process. Peering forwards it to the correct process. See this [conference talk][cancel-problem-video] for details.

[cancel-problem-video]: https://www.youtube.com/watch?v=X-nCHcZ6vQU

The section contains key=value lines like

```ini
peer_id = connection string
```

The key is `peer_id`. The value contains key=value connection parameters described below. Syntax resembles libpq, but PgBouncer does not use libpq and supports different features. For example:

```ini
1 = host=host1.example.com
2 = host=/tmp/pgbouncer-2  port=5555
```

Note 1: Every process needs a unique `peer_id` within the group. `[peers]` should list each peer ID; see the examples below. It may also list the current process's `peer_id`, but this entry is ignored. This permits identical `[peers]` sections across process configurations.

Note 2: Peering supports different versions only if all peers are on the same side of the v1.21.0 boundary. Version 1.21.0 changed cancellation token encoding incompatibly with earlier versions.

### host

Destination host name or IP address. PgBouncer resolves names at connection time and caches results for `dns_max_ttl`. It uses multiple DNS results in round-robin order. Avoid names with multiple IP addresses: cancellation can reach the wrong node and need forwarding again. Forwarding is allowed at most three times.

If the value begins with `/`, then a Unix socket in the file-system namespace is used. If the value begins with `@`, then a Unix socket in the abstract namespace is used.

Examples:

```text
host=localhost
host=127.0.0.1
host=2001:0db8:85a3:0000:0000:8a2e:0370:7334
host=/var/run/pgbouncer-1
```

### port

Default: 6432

### pool_size

Maximum concurrent cancellation requests to this peer. Requests often arrive in bursts when Postgres slows or fails. Set `pool_size` high enough to handle these bursts.

If not set, the `default_pool_size` is used.

--------

## Include directive

The PgBouncer configuration file can contain include directives, which specify another configuration file to read and process. This allows splitting the configuration file into physically separate parts. The include directives look like this:

```ini
%include filename
```

If the file name is not an absolute path, it is taken as relative to the current working directory.

--------

## Authentication file format

This section describes the format of the file specified by the `auth_file` setting. It is a text file in the following format:

```text
"username1" "password" ...
"username2" "md5abcdef012342345" ...
"username2" "SCRAM-SHA-256$<iterations>:<salt>$<storedkey>:<serverkey>"
```

Each line needs at least two double-quoted fields. The first is the user name. The second is a plain-text password, MD5-hashed password, or SCRAM secret. PgBouncer ignores additional fields. Escape a double quote by writing it twice.

PostgreSQL MD5-hashed password format:

```text
"md5" + md5(password + username)
```

So user `admin` with password `1234` will have MD5-hashed password `md545f2603610af569b6155c45067268c6b`.

PostgreSQL SCRAM secret format:

```text
SCRAM-SHA-256$<iterations>:<salt>$<storedkey>:<serverkey>
```

See the PostgreSQL documentation and RFC 5803 for details on this.

The authentication file serves two purposes. It verifies incoming passwords when client authentication uses passwords. It also supplies backend passwords when the server requires password authentication, unless a database connection string supplies one directly.

### Limitations

If the password is stored in plain text, it can be used for any password-based authentication used in the backend server; plain text, MD5 or SCRAM (see <https://www.postgresql.org/docs/current/auth-password.html> for details).

MD5-hashed passwords can be used if backend server uses MD5 authentication (or specific users have MD5-hashed passwords).

SCRAM server login requires SCRAM client authentication, no user name in the PgBouncer database definition, and identical PgBouncer and PostgreSQL secrets. The salt and iteration count must match, not only the password. SCRAM security prevents deriving login credentials from the stored secret alone.

Write the file manually or generate it from another user/password list. The sample `./etc/mkauth.py` generates it from `pg_authid`. Alternatively, use `auth_query` instead of `auth_file` to avoid a separate authentication file.

### Note on managed servers

For SCRAM backend authentication, PgBouncer must know the plain-text password or the corresponding SCRAM secret.

Some cloud providers, such as AWS RDS, block password access through sensitive PostgreSQL system tables. Even `rds_superuser` members receive `ERROR: permission denied for table pg_authid` from `select * from pg_authid`. See the [AWS blog](https://aws.amazon.com/blogs/database/best-practices-for-migrating-postgresql-databases-to-amazon-rds-and-amazon-aurora/).

You cannot retrieve an existing SCRAM secret from such a managed server. To use an identical secret on both sides, generate it before storage:

Generate a SCRAM secret for your chosen password with a tool that displays it. For example, `psql --echo-hidden` displays the secret from `\password` before sending it to the server:

```bash
$ psql --echo-hidden <connection_string>
postgres=# \password <role_name>
Enter new password for user "<role_name>":
Enter it again:
********* QUERY **********
ALTER USER <role_name> PASSWORD 'SCRAM-SHA-256$<iterations>:<salt>$<storedkey>:<serverkey>'
**************************
```

Note down the SCRAM secret from the QUERY and set it in PgBouncer's `userlist.txt`.

If you used another tool instead of `psql --echo-hidden`, also set the secret on the server. Use `ALTER ROLE <role_name> PASSWORD '<scram_secret>'`.

--------

## HBA file format

The location of the HBA file is specified by the setting `auth_hba_file`. It is only used if `auth_type` is set to `hba`.

The file follows the format of the PostgreSQL `pg_hba.conf` file (see <https://www.postgresql.org/docs/current/auth-pg-hba-conf.html>).

* Supported record types: `local`, `host`, `hostssl`, `hostnossl`.
* Database field: Supports `all`, `replication`, `sameuser`, `@file`, multiple names. Not supported: `samerole`, `samegroup`.
* User name field: Supports `all`, `@file`, multiple names. Not supported: `+groupname`.
* Address field: Supports `all`, IPv4, IPv6. Not supported: `samehost`, `samenet`, DNS names, domain prefixes.
* Auth-method field: Only methods supported by PgBouncer's `auth_type` are supported, plus `peer` and `reject`, but except `any` and `pam`, which only work globally.
* User name map (`map=`) parameter is supported when `auth_type` is `cert` or `peer`.

--------

## Ident map file format

The location of the ident map file is specified by the setting `auth_ident_file`. It is only loaded if `auth_type` is set to `hba`.

The file format is a simplified variation of the PostgreSQL ident map file (see <https://www.postgresql.org/docs/current/auth-username-maps.html>).

* Supported lines are only of the form `map-name system-username database-username`.
* There is no support for including file/directory.
* System-username field: Not supported: regular expressions.
* Database-username field: Supports `all` or a single Postgres user name. Not supported: `+groupname`, regular expressions.

--------

## Examples

Small example configuration:

```ini
[databases]
template1 = host=localhost dbname=template1 auth_user=someuser

[pgbouncer]
pool_mode = session
listen_port = 6432
listen_addr = localhost
auth_type = md5
auth_file = users.txt
logfile = pgbouncer.log
pidfile = pgbouncer.pid
admin_users = someuser
stats_users = stat_collector
```

Database examples:

```ini
[databases]

; foodb over Unix socket
foodb =

; redirect bardb to bazdb on localhost
bardb = host=localhost dbname=bazdb

; access to destination database will go with single user
forcedb = host=localhost port=300 user=baz password=foo client_encoding=UNICODE datestyle=ISO
```

Example of a secure function for `auth_query`:

```sql
CREATE OR REPLACE FUNCTION pgbouncer.user_lookup(in i_username text, out uname text, out phash text)
RETURNS record AS $$
BEGIN
    SELECT rolname, CASE WHEN rolvaliduntil < now() THEN NULL ELSE rolpassword END
    FROM pg_authid
    WHERE rolname=i_username AND rolcanlogin
    INTO uname, phash;
    RETURN;
END;
$$ LANGUAGE plpgsql
   SECURITY DEFINER
   -- Set a secure search_path: trusted schema(s), then 'pg_temp'.
   SET search_path = pg_catalog, pg_temp;
REVOKE ALL ON FUNCTION pgbouncer.user_lookup(text) FROM public, pgbouncer;
GRANT EXECUTE ON FUNCTION pgbouncer.user_lookup(text) TO pgbouncer;
```

Example configs for 2 peered PgBouncer processes to create a multi-core PgBouncer setup using `so_reuseport`. The config for the first process:

```ini
[databases]
postgres = host=localhost dbname=postgres

[peers]
1 = host=/tmp/pgbouncer1
2 = host=/tmp/pgbouncer2

[pgbouncer]
listen_addr=127.0.0.1
auth_file=auth_file.conf
so_reuseport=1
unix_socket_dir=/tmp/pgbouncer1
peer_id=1
```

The config for the second process:

```ini
[databases]
postgres = host=localhost dbname=postgres

[peers]
1 = host=/tmp/pgbouncer1
2 = host=/tmp/pgbouncer2

[pgbouncer]
listen_addr=127.0.0.1
auth_file=auth_file.conf
so_reuseport=1
; only unix_socket_dir and peer_id are different
unix_socket_dir=/tmp/pgbouncer2
peer_id=2
```

--------

## See also

pgbouncer(1) - man page for general usage, console commands

<https://www.pgbouncer.org/>
