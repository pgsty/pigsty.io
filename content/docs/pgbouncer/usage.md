---
title: "Usage: pgbouncer command"
linkTitle: "Usage"
weight: 30
description: "PgBouncer command-line usage and administration console"
icon: fa-solid fa-bell-concierge
module: [PGBOUNCER]
categories: [Task]
---

> Source: <https://www.pgbouncer.org/usage.html> · [1.26.0 source](https://github.com/pgbouncer/pgbouncer/blob/pgbouncer_1_26_0/doc/usage.md)

--------

## Synopsis

    pgbouncer [-d][-v][-u user] <pgbouncer.ini>
    pgbouncer -V|-h

On Windows, the options are:

    pgbouncer.exe [-v][-u user] <pgbouncer.ini>
    pgbouncer.exe -V|-h

Additional options for setting up a Windows service:

    pgbouncer.exe --regservice   <pgbouncer.ini>
    pgbouncer.exe --unregservice <pgbouncer.ini>

--------

## Description

**pgbouncer** is a PostgreSQL connection pooler. Applications connect to **pgbouncer** as they would to PostgreSQL. **pgbouncer** creates a server connection or reuses an existing one.

**pgbouncer** reduces the performance cost of opening new PostgreSQL connections.

To preserve transaction semantics, **pgbouncer** supports these pooling modes:

Session pooling

:   PgBouncer assigns a server connection for the full client session. The connection returns to the pool when the client disconnects. This is the default mode and changes connection assignment least often.

Transaction pooling

:   PgBouncer assigns a server connection only during a transaction. The connection returns to the pool when the transaction ends.

Statement pooling

:   The server connection returns to the pool immediately after each query. This mode changes connection assignment most often. Multi-statement transactions cannot work and are disallowed.

Connect to the virtual **pgbouncer** database to use its administration interface. This interface provides additional `SHOW` commands.

Since 1.26.0, PgBouncer sends three `ParameterStatus` values at client login: `pgbouncer.version`, `pgbouncer.pool_mode`, and `pgbouncer.max_prepared_statements`. Drivers can detect PgBouncer and adapt their behavior. Optional [`login_notify_message`](/docs/pgbouncer/config/#login_notify_message) sends a welcome NOTICE after successful login.

--------

## Quick-start

Basic setup and usage is as follows.

1. Create a pgbouncer.ini file.  Details in **pgbouncer(5)**.  Simple example:

        [databases]
        template1 = host=localhost port=5432 dbname=template1

        [pgbouncer]
        listen_port = 6432
        listen_addr = localhost
        auth_type = md5
        auth_file = userlist.txt
        logfile = pgbouncer.log
        pidfile = pgbouncer.pid
        admin_users = someuser

2. Create a `userlist.txt` file that contains the users allowed in:

        "someuser" "same_password_as_in_server"

3. Launch **pgbouncer**:

        $ pgbouncer -d pgbouncer.ini

4. Have your application (or the **psql** client) connect to
   **pgbouncer** instead of directly to the PostgreSQL server:

        $ psql -p 6432 -U someuser template1

5. Manage **pgbouncer** by connecting to the special administration
   database **pgbouncer** and issuing `SHOW HELP;` to begin:

        $ psql -p 6432 -U someuser pgbouncer
        pgbouncer=# SHOW HELP;
        NOTICE:  Console usage
        DETAIL:
          SHOW [HELP|CONFIG|DATABASES|POOLS|CLIENTS|SERVERS|SOCKETS|LISTS|VERSION|...]
          SET key = arg
          RELOAD
          PAUSE
          RESUME
          SHUTDOWN
          [...]

6. If you made changes to the pgbouncer.ini file, you can reload it with:

        pgbouncer=# RELOAD;

--------

## Command line switches

`-d`, `--daemon`
:   Run in the background. Without it, the process will run in the foreground.

    Daemon mode requires `pidfile` and either `logfile` or `syslog`. After entering the background, PgBouncer writes no messages to stderr.

    Note: Does not work on Windows; **pgbouncer** need to run as service there.

`-u` _USERNAME_, `--user=` _USERNAME_
:   Switch to the given user on startup.

`-v`, `--verbose`
:   Increase verbosity.  Can be used multiple times.

`-q`, `--quiet`
:   Disable stderr logging. This does not change logging verbosity. Use it in init.d scripts.

`-V`, `--version`
:   Show version.

`-h`, `--help`
:   Show short help.

`--regservice`
:   Win32: Register PgBouncer to run as Windows service.  The **service_name**
    configuration parameter value is used as the name to register under.

`--unregservice`
:   Win32: Unregister Windows service.

--------

## Admin console

The console is available by connecting as normal to the
database **pgbouncer**:

    $ psql -p 6432 pgbouncer

Only users in **admin_users** or **stats_users** can log in to the console. With `auth_type=any`, any user can log in as a stats_user.

The **pgbouncer** user can also log in without a password through a Unix socket. Its Unix UID must match the running PgBouncer process.

The admin console supports only the simple query protocol. Drivers that use extended query protocol for all commands cannot use it.

### Show commands

The **SHOW** commands output information. Each command is described below.

#### SHOW STATS

Show statistics. In this and related commands, totals start at process startup. Averages update every `stats_period`.

database
:   Statistics are presented per database.

total_xact_count
:   Total number of SQL transactions pooled by **pgbouncer**.

total_query_count
:   Total number of SQL commands pooled by **pgbouncer**.

total_server_assignment_count
:   Total times a server was assigned to a client

total_received
:   Total volume in bytes of network traffic received by **pgbouncer**.

total_sent
:   Total volume in bytes of network traffic sent by **pgbouncer**.

total_xact_time
:   Total number of microseconds spent by **pgbouncer** when connected
    to PostgreSQL in a transaction, either idle in transaction or
    executing queries.

total_query_time
:   Total number of microseconds spent by **pgbouncer** when actively
    connected to PostgreSQL, executing queries.

total_wait_time
:   Time spent by clients waiting for a server, in microseconds. Updated
    when a client connection is assigned a backend connection.

total_client_parse_count
:   Total number of prepared statements created by clients. Only applicable
    in named prepared statement tracking mode, see `max_prepared_statements`.

total_server_parse_count
:   Total number of prepared statements created by **pgbouncer** on a server. Only
    applicable in named prepared statement tracking mode, see `max_prepared_statements`.

total_bind_count
:   Total number of prepared statements readied for execution by clients and forwarded
    to PostgreSQL by **pgbouncer**. Only applicable in named prepared statement tracking
    mode, see `max_prepared_statements`.

total_client_login_count
:   Total number of successful client logins.

avg_xact_count
:   Average transactions per second in last stat period.

avg_query_count
:   Average queries per second in last stat period.

avg_server_assignment_count
:   Average number of times a server as assigned to a client per second in the
    last stat period.

avg_recv
:   Average received (from clients) bytes per second.

avg_sent
:   Average sent (to clients) bytes per second.

avg_xact_time
:   Average transaction duration, in microseconds.

avg_query_time
:   Average query duration, in microseconds.

avg_wait_time
:   Time spent by clients waiting for a server, in microseconds (average
    of the wait times for clients assigned a backend during the current
    `stats_period`).

avg_client_parse_count
:   Average number of prepared statements created by clients. Only applicable
    in named prepared statement tracking mode, see `max_prepared_statements`.

avg_server_parse_count
:   Average number of prepared statements created by **pgbouncer** on a server. Only
    applicable in named prepared statement tracking mode, see `max_prepared_statements`.

avg_bind_count
:   Average number of prepared statements readied for execution by clients and forwarded
    to PostgreSQL by **pgbouncer**. Only applicable in named prepared statement tracking
    mode, see `max_prepared_statements`.

avg_client_login_count
:   Average number of successful client logins per second.

#### SHOW STATS_TOTALS

Subset of **SHOW STATS** showing the total values (**total_**).


#### SHOW STATS_AVERAGES

Subset of **SHOW STATS** showing the average values (**avg_**).

#### SHOW TOTALS

Like **SHOW STATS** but aggregated across all databases.

#### SHOW SERVERS

type
:   S, for server.

user
:   User name **pgbouncer** uses to connect to server.

database
:   Database name.

replication
:   If server connection uses replication. Can be **none**, **logical** or **physical**.

state
:   State of the PgBouncer server connection, one of **active**,
    **idle**, **used**, **tested**, **new**, **active_cancel**,
    **being_canceled**.

addr
:   IP address of PostgreSQL server.

port
:   Port of PostgreSQL server.

local_addr
:   Connection start address on local machine.

local_port
:   Connection start port on local machine.

connect_time
:   When the connection was made.

request_time
:   When last request was issued.

wait
:   Not used for server connections.

wait_us
:   Not used for server connections.

close_needed
:   1 if the connection will be closed as soon as possible,
    because a configuration file reload or DNS update changed the
    connection information or **RECONNECT** was issued.

ptr
:   Address of internal object for this connection.

link
:   Address of client connection the server is paired with.

remote_pid
:   Backend process ID. For Unix socket connections, use the OS PID if the operating system exposes it. Otherwise, read the value from the server cancellation packet. For PostgreSQL, this should be its PID. For another PgBouncer, it is a random number.

tls
:   A string with TLS connection information, or empty if not using TLS.

application_name
:   A string containing the `application_name` set on the linked client connection,
    or empty if this is not set, or if there is no linked connection.

prepared_statements
:  The amount of prepared statements that are prepared on the server. This
   number is limited by the `max_prepared_statements` setting.

id
:   Unique ID for server.


#### SHOW CLIENTS

type
:   C, for client.

user
:   Client connected user.

database
:   Database name.

replication
:   If client connection uses replication. Can be **none**, **logical** or **physical**.

state
:   Client connection state: **active**, **idle**, **waiting**, **active_cancel_req**, or **waiting_cancel_req**. Active clients are linked to servers. Idle clients have no queries waiting for processing.

addr
:   IP address of client.

port
:   Source port of client.

local_addr
:   Connection end address on local machine.

local_port
:   Connection end port on local machine.

connect_time
:   Timestamp of connect time.

request_time
:   Timestamp of latest client request.

wait
:   Current waiting time in seconds.

wait_us
:   Microsecond part of the current waiting time.

close_needed
:   not used for clients

ptr
:   Address of internal object for this connection.

link
:   Address of server connection the client is paired with.

remote_pid
:   Process ID, in case client connects over Unix socket
    and OS supports getting it.

tls
:   A string with TLS connection information, or empty if not using TLS.

application_name
:   A string containing the `application_name` set by the client
    for this connection, or empty if this was not set.

prepared_statements
:  The amount of prepared statements that the client has prepared

id
:   Unique ID for client.

#### SHOW POOLS

A new pool entry is made for each couple of (database, user).

database
:   Database name.

user
:   User name.

cl_active
:   Client connections that are either linked to server connections or are idle with no queries waiting to be processed.

cl_waiting
:   Client connections that have sent queries but have not yet got a server connection.

cl_active_cancel_req
:   Client connections that have forwarded query cancellations to the server and
    are waiting for the server response.

cl_waiting_cancel_req
:   Client connections that have not forwarded query cancellations to the server yet.

sv_active
:   Server connections that are linked to a client.

sv_active_cancel
:   Server connections that are currently forwarding a cancel request.

sv_being_canceled
:   Servers waiting to become idle until all cancellation requests for their queries complete.

sv_idle
:   Server connections that are unused and immediately usable for client queries.

sv_used
:   Server connections that have been idle for more than `server_check_delay`,
    so they need `server_check_query` to run on them before they can be used again.

sv_tested
:   Server connections that are currently running either `server_reset_query`
    or `server_check_query`.

sv_login
:   Server connections currently in the process of logging in.

maxwait
:   Seconds the oldest queued client has waited. An increasing value means the server pool cannot process requests quickly enough. The server may be overloaded, or **pool_size** may be too small.

maxwait_us
:   Microsecond part of the maximum waiting time.

pool_mode
:   The pooling mode in use.

load_balance_hosts
:   The load_balance_hosts in use if the pool's host contains a comma-separated list.

#### SHOW PEER_POOLS

A new peer_pool entry is made for each configured peer.

peer_id
:   ID of the configured peer entry.

cl_active_cancel_req
:   Client connections that have forwarded query cancellations to the server and
    are waiting for the server response.

cl_waiting_cancel_req
:   Client connections that have not forwarded query cancellations to the server yet.

sv_active_cancel
:   Server connections that are currently forwarding a cancel request.

sv_login
:   Server connections currently in the process of logging in.

#### SHOW LISTS

Show following internal information, in columns (not rows):

databases
:   Count of databases.

users
:   Count of users.

pools
:   Count of pools.

free_clients
:   Disconnected client count. PgBouncer retains their allocated memory for future clients to avoid new allocations.

used_clients
:   Count of used clients.

login_clients
:   Count of clients in **login** state.

free_servers
:   Disconnected server count. PgBouncer retains their allocated memory for future servers to avoid new allocations.

used_servers
:   Count of used servers.

dns_names
:   Count of DNS names in the cache.

dns_zones
:   Count of DNS zones in the cache.

dns_queries
:   Count of in-flight DNS queries.

dns_pending
:   not used

#### SHOW USERS

name
:   The user name

pool_size
:   The user's override pool_size. or NULL if not set.

reserve_pool_size
:   The user's override reserve_pool_size. or NULL if not set.

pool_mode
:   The user's override pool_mode, or NULL if not set.

max_user_connections
:   The user's max_user_connections setting. If this setting is not set
    for this specific user, then the default value will be displayed.

current_connections
:   Current number of server connections that this user has open to all servers.

max_user_client_connections
:   The user's max_user_client_connections setting. If this setting is not set
    for this specific user, then the default value will be displayed.

current_client_connections
:   Current number of client connections that this user has open to PgBouncer.

#### SHOW DATABASES

name
:   Name of configured database entry.

host
:   Host PgBouncer connects to.

port
:   Port PgBouncer connects to.

database
:   Actual database name PgBouncer connects to.

force_user
:   If the connection string specifies a user, PgBouncer always uses that user for PostgreSQL connections, regardless of the client user.

pool_size
:   Maximum number of server connections.

min_pool_size
:   Minimum number of server connections.

reserve_pool_size
:   Maximum number of additional connections for this database.

server_lifetime
:   The maximum lifetime of a server connection for this database

pool_mode
:   The database's override pool_mode, or NULL if the default will be used instead.

load_balance_hosts
:   The database's load_balance_hosts if the host contains a comma-separated list.

max_connections
:   Maximum number of allowed server connections for this database, as set by
    **max_db_connections**, either globally or per database.

current_connections
:   Current number of server connections for this database.

max_client_connections
:   Maximum number of allowed client connections for this PgBouncer instance, as set by max_db_client_connections per database.

current_client_connections
:   Current number of client connections for this database.

paused
:   1 if this database is currently paused, else 0.

disabled
:   1 if this database is currently disabled, else 0.

#### SHOW PEERS

peer_id
:   ID of the configured peer entry.

host
:   Host PgBouncer connects to.

port
:   Port PgBouncer connects to.

pool_size
:   Maximum number of server connections that can be made to this peer

#### SHOW SOCKETS, SHOW ACTIVE_SOCKETS

Shows low-level information about sockets or only active sockets.
This includes the information shown under **SHOW CLIENTS** and **SHOW SERVERS** as well as other more low-level information.

#### SHOW CONFIG

Show the current configuration settings, one per row, with the following
columns:

key
:   Configuration variable name

value
:   Configuration value

default
:   Configuration default value

changeable
:   **yes** if the setting can change at runtime, or **no** if it can change only at startup. Use **SET** for runtime changes.

#### SHOW MEM

Shows low-level information about the current sizes of various
internal memory allocations.  The information presented is subject to
change.

#### SHOW DNS_HOSTS

Show host names in DNS cache.

hostname
:   Host name.

ttl
:   How many seconds until next lookup.

addrs
:   Comma separated list of addresses.

#### SHOW DNS_ZONES

Show DNS zones in cache.

zonename
:   Zone name.

serial
:   Current serial.

count
:   Host names belonging to this zone.


#### SHOW VERSION

Show the PgBouncer version string.

#### SHOW STATE

Show the PgBouncer state settings. Current states are active and paused.

### Process controlling commands

#### PAUSE [db]

PgBouncer disconnects all server connections after their pooling mode permits release. Transaction pooling waits for transaction completion. Statement pooling waits for statement completion. Session pooling waits for client disconnection. The command returns only after all server connections close. Use it during database restarts.

If database name is given, only that database will be paused.

New client connections to a paused database will wait until **RESUME**
is called.

#### DISABLE db

Reject all new client connections on the given database.

#### ENABLE db

Allow new client connections after a previous **DISABLE** command.

#### RECONNECT [db]

Close server connections after release according to their pooling mode, even before their lifetime expires. Apply this to the specified database, or all databases if omitted. New server connections can open immediately as required by pool size settings.

Use this after server connection routing changes, for example for gradual switchover. Reloading changed pgbouncer.ini connection strings with **RELOAD**, or a DNS change, already triggers the equivalent action. This command is necessary only when a downstream component routes connections.

Old and new server destinations can coexist for an extended period after this command. This is generally suitable for read-only traffic between replicas or for switching nodes in a multimaster setup. If all connections must switch together, use **PAUSE**. To close connections immediately, for example during emergency failover, consider **KILL**.

#### KILL [db]

Immediately drop all client and server connections on the given database or all
databases, excluding the admin database.

New client connections to a killed database will wait until **RESUME**
is called.

#### KILL_CLIENT id

Immediately terminate the specified client and all its associated server connections. Find its `id` with `SHOW CLIENTS`.

An example command will look something like `KILL_CLIENT 1234`.

#### RESUME [db]

Resume work from previous **KILL** or **PAUSE** command.

#### SHUTDOWN

The PgBouncer process will exit.

#### SHUTDOWN WAIT_FOR_SERVERS

Stop accepting new connections and shut down after all servers are released. This is similar to **PAUSE** followed by **SHUTDOWN**, but also stops new connections while waiting. It immediately disconnects clients waiting for a server. Unix sockets remain open but accept only administration console connections.

#### SHUTDOWN WAIT_FOR_CLIENTS

Stop accepting new connections and shut down after all existing clients disconnect. Unix sockets remain open but accept only administration console connections. Use this command for a zero-downtime rolling restart of two PgBouncer processes:

1. Run two or more PgBouncer processes on one port with `so_reuseport`. [Peering](/docs/pgbouncer/config/#section-peers) is recommended but optional. Restart processes one at a time so the others continue to accept connections.
2. Select the first process, called A here.
3. Send `SHUTDOWN WAIT_FOR_CLIENTS` or `SIGTERM` to A.
4. Make all clients reconnect. You can wait for a client pooler's `server_idle_timeout` or equivalent setting. Without a client pooler, you can restart clients. After all clients reconnect elsewhere, A exits automatically because it has no clients.
5. Start A again.
6. Repeat steps 3, 4, and 5 for each remaining process, one at a time.


#### RELOAD

PgBouncer reloads its configuration files and applies changeable settings. This includes the main file, `auth_file`, and `auth_hba_file`.

If reload changes a database connection definition, PgBouncer closes old server connections on their next release according to the pooling mode. New connections use the changed parameters immediately.

#### WAIT_CLOSE [db]

Wait until all server connections clear "close_needed"; see **SHOW SERVERS**. Apply to the specified database, or all databases if omitted. After **RECONNECT** or **RELOAD**, this waits for the change to apply fully, for example in switchover scripts.

### Other commands

#### SET key = arg

Changes a configuration setting (see also **SHOW CONFIG**).  For example:

    SET log_connections = 1;
    SET server_check_query = 'select 2';

Run this command in the PgBouncer admin console to change PgBouncer settings. **SET** on another database passes to PostgreSQL like other SQL commands.

### Signals

SIGHUP
:   Reload config. Same as issuing the command **RELOAD** on the console.

SIGTERM
:   Wait for existing clients to disconnect and reject new connections, like **SHUTDOWN WAIT_FOR_CLIENTS**. If shutdown is already in progress, this signal triggers immediate shutdown. Before PgBouncer 1.23.0, SIGTERM caused immediate shutdown.

SIGINT
:   Wait for server release, like **SHUTDOWN WAIT_FOR_SERVERS**. If shutdown is already in progress, this signal triggers immediate shutdown.

SIGQUIT
:   Immediate shutdown. Same as issuing **SHUTDOWN** on the console.

SIGUSR1
:   Same as issuing **PAUSE** on the console.

SIGUSR2
:   Same as issuing **RESUME** on the console.

### Libevent settings

From the Libevent documentation:

> It is possible to disable support for epoll, kqueue, devpoll, poll
> or select by setting the environment variable EVENT_NOEPOLL,
> EVENT_NOKQUEUE, EVENT_NODEVPOLL, EVENT_NOPOLL or EVENT_NOSELECT,
> respectively.
>
> By setting the environment variable EVENT_SHOW_METHOD, libevent
> displays the kernel notification method that it uses.

--------

## See also

pgbouncer(5) - man page of configuration settings descriptions

<https://www.pgbouncer.org/>
