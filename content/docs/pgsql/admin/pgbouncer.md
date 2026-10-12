---
title: Pgbouncer Connection Pooling
linkTitle: Pgbouncer Admin
weight: 50
description: Manage Pgbouncer connection pool, including pause, resume, disable, enable, reconnect, kill, and reload operations.
icon: fa-solid fa-filter
module: [PGSQL]
categories: [Task]
---


## Overview

Pigsty uses [**Pgbouncer**](https://www.pgbouncer.org/) for PostgreSQL connection pooling.
By default, it listens on port `6432` and proxies connections to local PostgreSQL on port `5432`.

This component is **optional**.
If you do not need many connections, transaction pooling, or query metrics, you can disable it.
You can also connect directly to the database or leave Pgbouncer unused.



----------------

## User & Database Management

Pigsty automatically manages Pgbouncer users and databases.
When you [**create databases**](/docs/pgsql/admin/db) or [**users**](/docs/pgsql/admin/user), it applies the [**database configuration**](/docs/pgsql/config/db) and [**user configuration**](/docs/pgsql/config/user).

**Database Management**: By default, Pigsty adds databases from [**`pg_databases`**](/docs/pgsql/param#pg_databases) to Pgbouncer.
To exclude a database, set [**`pgbouncer: false`**](/docs/pgsql/admin/db#pgbouncer).

```yaml
pg_databases:
  - name: mydb                # Added to connection pool by default
    pool_auth_user: dbuser_meta # Optional, auth query user (with pgbouncer_auth_query)
    pool_mode: transaction    # Database-level pool mode
    pool_size: 50             # Default pool size
    pool_reserve: 30          # Reserve pool size
    pool_size_min: 0          # Minimum pool size
    pool_connlimit: 100       # Max database connections
  - name: internal
    pgbouncer: false          # Excluded from connection pool
```

**User Management**: To add a user from [**`pg_users`**](/docs/pgsql/param#pg_users) to the pool user list, explicitly set [**`pgbouncer: true`**](/docs/pgsql/admin/user#pgbouncer).

```yaml
pg_users:
  - name: dbuser_app
    password: DBUser.App
    pgbouncer: true           # Add to connection pool user list
    pool_mode: transaction    # User-level pool mode
    pool_connlimit: 50        # User-level max connections
```

> Since Pigsty `v4.1.0`, use `pool_reserve` and `pool_connlimit` for database pool fields.
> These names replace the legacy aliases `pool_size_reserve` and `pool_max_db_conn`.


----------------

## Service Management

By default, the PostgreSQL [**Primary Service**](/docs/concept/ha/svc#primary-service) and Replica Service connect to Pgbouncer on port 6432.
To connect directly to PostgreSQL, customize [**`pg_services`**](/docs/pgsql/param#pg_services).
Alternatively, set [**`pg_default_service_dest`**](/docs/pgsql/param#pg_default_service_dest) to `postgres`.


----------------

## Config Management

Pgbouncer config files are in `/etc/pgbouncer/`, generated and managed by Pigsty:

| File              | Description                          |
|-------------------|--------------------------------------|
| `pgbouncer.ini`   | Main config, pool-level params       |
| `database.txt`    | Database list, database-level params |
| `userlist.txt`    | User password list                   |
| `useropts.txt`    | User-level pool params               |
| `pgb_hba.conf`    | HBA access control rules             |
{.full-width}

Pigsty automatically manages `database.txt` and `userlist.txt`.
It updates them when you [**create databases**](/docs/pgsql/admin/db#create-database) or [**users**](/docs/pgsql/admin/user#create-user).

You can edit configuration manually, then run `RELOAD` to apply the changes:

```bash
# Edit config
$ vim /etc/pgbouncer/pgbouncer.ini

# Reload via systemctl
$ sudo systemctl reload pgbouncer

# Reload as pg_dbsu / postgres user
$ pgb -c "RELOAD;"
```



----------------

## Pool Management

Pgbouncer runs as the same `dbsu` as PostgreSQL.
The default is the `postgres` operating system user.
Pigsty provides the `pgb` alias for administration:

```bash
alias pgb='psql -p6432 -dpgbouncer'
```

On database nodes, use `pgb` to connect to the Pgbouncer administration console.
You can then run administration commands and monitoring queries.

```bash
$ pgb
pgbouncer=# SHOW POOLS;
pgbouncer=# SHOW CLIENTS;
pgbouncer=# SHOW SERVERS;
```

| Command                             | Function    | Description                                                 |
|-------------------------------------|-------------|-------------------------------------------------------------|
| [**`PAUSE`**](#pause)               | Pause       | Pause database, wait for txn completion then disconnect     |
| [**`RESUME`**](#resume)             | Resume      | Resume database paused by PAUSE/KILL/SUSPEND                |
| [**`DISABLE`**](#disable)           | Disable     | Reject new client connections for database                  |
| [**`ENABLE`**](#enable)             | Enable      | Allow new client connections for database                   |
| [**`RECONNECT`**](#reconnect)       | Reconnect   | Gracefully close and rebuild server connections             |
| [**`KILL`**](#kill)                 | Kill        | Immediately disconnect all client and server connections    |
| [**`KILL_CLIENT`**](#kill_client)   | Kill Client | Terminate specific client connection                        |
| [**`SUSPEND`**](#suspend)           | Suspend     | Flush buffers and stop listening, for online restart        |
| [**`SHUTDOWN`**](#shutdown)         | Shutdown    | Shutdown Pgbouncer process                                  |
| [**`RELOAD`**](#reload)             | Reload      | Reload config files                                         |
| [**`WAIT_CLOSE`**](#wait_close)     | Wait Close  | Wait for server connections to close after RECONNECT/RELOAD |
| [**Monitor Commands**](#monitoring) | Monitor     | View pool status, clients, servers, etc.                    |
{.full-width}


----------------

### PAUSE

Use `PAUSE` to pause database connections.
Pgbouncer waits for the active transaction or session to finish, according to the pool mode.
It then disconnects server connections.
New client requests wait until `RESUME`.

```sql
PAUSE [db];           -- Pause specified database, or all if not specified
```

Typical use cases:

- Online backend database switch (e.g., update connection target after switchover)
- Maintenance operations requiring all connections disconnected
- Combined with `SUSPEND` for Pgbouncer online restart

```bash
$ pgb -c "PAUSE mydb;"        # Pause mydb database
$ pgb -c "PAUSE;"             # Pause all databases
```

After pause, `SHOW DATABASES` shows `paused` status:

```sql
pgbouncer=# SHOW DATABASES;
   name   |   host    | port | database | ... | paused | disabled
----------+-----------+------+----------+-----+--------+----------
 mydb     | /var/run  | 5432 | mydb     | ... |      1 |        0
```


----------------

### RESUME

Use `RESUME` to restore databases paused by `PAUSE`, `KILL`, or `SUSPEND`.
This allows new connections and resumes normal service.

```sql
RESUME [db];          -- Resume specified database, or all if not specified
```

```bash
$ pgb -c "RESUME mydb;"       # Resume mydb database
$ pgb -c "RESUME;"            # Resume all databases
```


----------------

### DISABLE

Use `DISABLE` to reject all new client connections for a database.
Existing connections continue.

```sql
DISABLE db;           -- Disable specified database (database name required)
```

Typical use cases:

- Temporarily offline a database for maintenance
- Block new connections for safe database migration
- Gradually decommission a database being removed

```bash
$ pgb -c "DISABLE mydb;"      # Disable mydb, new connections rejected
```


----------------

### ENABLE

Use `ENABLE` to enable a database that `DISABLE` stopped.
The database accepts new client connections again.

```sql
ENABLE db;            -- Enable specified database (database name required)
```

```bash
$ pgb -c "ENABLE mydb;"       # Enable mydb, allow new connections
```


----------------

### RECONNECT

Use `RECONNECT` to rebuild server connections gracefully.
Pgbouncer closes connections when they return to the pool.
It creates new connections as needed.

```sql
RECONNECT [db];       -- Rebuild server connections for database, or all if not specified
```

Typical use cases:

- Refresh connections after backend database IP change
- Reroute traffic after switchover
- Rebuild connections after DNS update

```bash
$ pgb -c "RECONNECT mydb;"    # Rebuild mydb server connections
$ pgb -c "RECONNECT;"         # Rebuild all server connections
```

After `RECONNECT`, use `WAIT_CLOSE` to wait for old connections to fully release.


----------------

### KILL

Use `KILL` to disconnect all client and server connections for a database immediately.
Unlike `PAUSE`, it does not wait for transactions to finish.

```sql
KILL [db];            -- Kill all connections for database, or all (except admin) if not specified
```

```bash
$ pgb -c "KILL mydb;"         # Force disconnect all mydb connections
$ pgb -c "KILL;"              # Force disconnect all database connections (except admin)
```

After `KILL`, new connections are blocked until `RESUME`.


----------------

### KILL_CLIENT

Use `KILL_CLIENT` to terminate a specific client connection.
Get the client ID from `SHOW CLIENTS`.

```sql
KILL_CLIENT id;       -- Terminate client connection with specified ID
```

```bash
# View client connections
$ pgb -c "SHOW CLIENTS;"

# Terminate specific client (assuming ptr column shows ID 0x1234567890)
$ pgb -c "KILL_CLIENT 0x1234567890;"
```


----------------

### SUSPEND

Use `SUSPEND` to suspend Pgbouncer.
It flushes all socket buffers and stops listening until `RESUME`.

```sql
SUSPEND;              -- Suspend Pgbouncer
```

`SUSPEND` is mainly for Pgbouncer online restart (zero-downtime upgrade):

```bash
# 1. Suspend current Pgbouncer
$ pgb -c "SUSPEND;"

# 2. Start new Pgbouncer process (with -R option to take over sockets)
$ pgbouncer -R /etc/pgbouncer/pgbouncer.ini

# 3. New process takes over, old process exits automatically
```


----------------

### SHUTDOWN

Use `SHUTDOWN` to stop the Pgbouncer process.
The command supports several shutdown modes:

```sql
SHUTDOWN;                      -- Immediate shutdown
SHUTDOWN WAIT_FOR_SERVERS;     -- Wait for server connections to release
SHUTDOWN WAIT_FOR_CLIENTS;     -- Wait for clients to disconnect (zero-downtime rolling restart)
```

| Mode               | Description                                                                          |
|--------------------|--------------------------------------------------------------------------------------|
| `SHUTDOWN`         | Immediately shutdown Pgbouncer                                                       |
| `WAIT_FOR_SERVERS` | Stop accepting new connections, wait for server release                              |
| `WAIT_FOR_CLIENTS` | Stop accepting new connections, wait for all clients disconnect, for rolling restart |
{.full-width}

```bash
$ pgb -c "SHUTDOWN WAIT_FOR_CLIENTS;"   # Graceful shutdown, wait for clients
```


----------------

### RELOAD

Use `RELOAD` to read the Pgbouncer configuration files again.
It dynamically updates most parameters without a process restart.

```sql
RELOAD;               -- Reload config files
```

```bash
$ pgb -c "RELOAD;"              # Reload via admin console
$ systemctl reload pgbouncer    # Reload via systemd
$ kill -SIGHUP $(cat /run/postgresql/pgbouncer.pid)  # Reload via signal
```

Pigsty provides playbook task to reload Pgbouncer config:

```bash
./pgsql.yml -l <cls> -t pgbouncer_reload    # Reload cluster Pgbouncer config
```


----------------

### WAIT_CLOSE

Use `WAIT_CLOSE` to wait until server connections finish closing.
Usually, run it after `RECONNECT` or `RELOAD` to verify that old connections have closed.

```sql
WAIT_CLOSE [db];      -- Wait for server connections to close, or all if not specified
```

```bash
# Complete connection rebuild flow
$ pgb -c "RECONNECT mydb;"
$ pgb -c "WAIT_CLOSE mydb;"    # Wait for old connections to release
```


----------------

### Monitoring

Pgbouncer provides these `SHOW` commands to monitor pool status:

| Command                 | Description                         |
|-------------------------|-------------------------------------|
| `SHOW HELP`             | Show available commands             |
| `SHOW DATABASES`        | Show database config and status     |
| `SHOW POOLS`            | Show pool statistics                |
| `SHOW CLIENTS`          | Show client connection list         |
| `SHOW SERVERS`          | Show server connection list         |
| `SHOW USERS`            | Show user config                    |
| `SHOW STATS`            | Show statistics (requests, bytes)   |
| `SHOW STATS_TOTALS`     | Show cumulative statistics          |
| `SHOW STATS_AVERAGES`   | Show average statistics             |
| `SHOW CONFIG`           | Show current config params          |
| `SHOW MEM`              | Show memory usage                   |
| `SHOW DNS_HOSTS`        | Show DNS cached hostnames           |
| `SHOW DNS_ZONES`        | Show DNS cached zones               |
| `SHOW SOCKETS`          | Show open socket info               |
| `SHOW ACTIVE_SOCKETS`   | Show active sockets                 |
| `SHOW LISTS`            | Show internal list counts           |
| `SHOW FDS`              | Show file descriptor usage          |
| `SHOW STATE`            | Show Pgbouncer running state        |
| `SHOW VERSION`          | Show Pgbouncer version              |
{.full-width}

Common monitoring examples:

```bash
# View pool status
$ pgb -c "SHOW POOLS;"

# View client connections
$ pgb -c "SHOW CLIENTS;"

# View server connections
$ pgb -c "SHOW SERVERS;"

# View statistics
$ pgb -c "SHOW STATS;"

# View database status
$ pgb -c "SHOW DATABASES;"
```

For more monitoring command details, see [**Pgbouncer official docs**](https://www.pgbouncer.org/usage.html).


----------------

### Unix Signals

Use Unix signals to control Pgbouncer when the administration console is unavailable:

| Signal    | Equivalent Command          | Description                     |
|-----------|-----------------------------|---------------------------------|
| `SIGHUP`  | `RELOAD`                    | Reload config files             |
| `SIGTERM` | `SHUTDOWN WAIT_FOR_CLIENTS` | Graceful shutdown, wait clients |
| `SIGINT`  | `SHUTDOWN WAIT_FOR_SERVERS` | Graceful shutdown, wait servers |
| `SIGQUIT` | `SHUTDOWN`                  | Immediate shutdown              |
| `SIGUSR1` | `PAUSE`                     | Pause all databases             |
| `SIGUSR2` | `RESUME`                    | Resume all databases            |
{.full-width}

```bash
# Reload config via signal
$ kill -SIGHUP $(cat /run/postgresql/pgbouncer.pid)

# Graceful shutdown via signal
$ kill -SIGTERM $(cat /run/postgresql/pgbouncer.pid)

# Pause via signal
$ kill -SIGUSR1 $(cat /run/postgresql/pgbouncer.pid)

# Resume via signal
$ kill -SIGUSR2 $(cat /run/postgresql/pgbouncer.pid)
```



----------------

## Traffic Switching

Pigsty stores managed database routes in `/etc/pgbouncer/database.txt`.
To move Pgbouncer traffic for one database to another node, edit this file and reload the configuration.
Then drain and rebuild the existing server connections:

```bash
# 1. Change only mydb's backend target to 10.10.10.12
$ sed -i -E '/^mydb[[:space:]]*=/ s#host=[^[:space:]]+#host=10.10.10.12#' /etc/pgbouncer/database.txt

# 2. Reload config
$ pgb -c "RELOAD;"

# 3. Rebuild this database's connections and wait for old connections to close
$ pgb -c "RECONNECT mydb;"
$ pgb -c "WAIT_CLOSE mydb;"
```

> The `pgb-route` function currently shipped in the source edits only `/etc/pgbouncer/pgbouncer.ini`.
> That file includes `database.txt` but does not contain the generated `host=` routes for each database.
> Thus, the function does not change managed database backends.
> Use the procedure above instead.
