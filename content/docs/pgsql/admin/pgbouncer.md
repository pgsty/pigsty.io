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

Pigsty uses [**Pgbouncer**](https://www.pgbouncer.org/) as PostgreSQL connection pooling middleware, listening on port `6432` by default, proxying access to local PostgreSQL on port `5432`.

This is an **optional component**. If you don't have massive connections or need transaction pooling and query metrics, you can disable it, connect directly to the database, or keep it unused.



----------------

## User & Database Management

Pgbouncer users and databases are auto-managed by Pigsty, applying [**database config**](/docs/pgsql/config/db) and [**user config**](/docs/pgsql/config/user) when [**creating databases**](/docs/pgsql/admin/db) and [**creating users**](/docs/pgsql/admin/user).

**Database Management**: Databases defined in [**`pg_databases`**](/docs/pgsql/param#pg_databases) are auto-added to Pgbouncer by default. Set [**`pgbouncer: false`**](/docs/pgsql/admin/db#pgbouncer) to exclude specific databases.

```yaml
pg_databases:
  - name: mydb                # Added to connection pool by default
    pool_mode: transaction    # Database-level pool mode
    pool_size: 64             # Default pool size
  - name: internal
    pgbouncer: false          # Excluded from connection pool
```

**User Management**: Users defined in [**`pg_users`**](/docs/pgsql/param#pg_users) need explicit [**`pgbouncer: true`**](/docs/pgsql/admin/user#pgbouncer) to be added to connection pool user list.

```yaml
pg_users:
  - name: dbuser_app
    password: DBUser.App
    pgbouncer: true           # Add to connection pool user list
    pool_mode: transaction    # User-level pool mode
```


----------------

## Service Management

In Pigsty, PostgreSQL cluster [**Primary Service**](/docs/concept/ha/svc#primary-service) and Replica Service default to Pgbouncer port 6432.
To bypass connection pool and access PostgreSQL directly, customize [**`pg_services`**](/docs/pgsql/param#pg_services), or set [**`pg_default_service_dest`**](/docs/pgsql/param#pg_default_service_dest) to `postgres`.


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

Pigsty auto-manages `database.txt` and `userlist.txt`, updating them when [**creating databases**](/docs/pgsql/admin/db#create-database) or [**creating users**](/docs/pgsql/admin/user#create-user).

You can manually edit config then `RELOAD` to apply:

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

Pgbouncer runs as the same `dbsu` as PostgreSQL, default `postgres` OS user. Pigsty provides `pgb` alias for easy management:

```bash
alias pgb="psql -p 6432 -d pgbouncer -U postgres"
```

Use `pgb` on database nodes to connect to Pgbouncer admin console for management commands and monitoring queries.

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

Use `PAUSE` to pause database connections. Pgbouncer waits for active txn/session to complete based on pool mode, then disconnects server connections. New client requests are blocked until `RESUME`.

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

Use `RESUME` to restore databases paused by `PAUSE`, `KILL`, or `SUSPEND`, allowing new connections and resuming normal service.

```sql
RESUME [db];          -- Resume specified database, or all if not specified
```

```bash
$ pgb -c "RESUME mydb;"       # Resume mydb database
$ pgb -c "RESUME;"            # Resume all databases
```


----------------

### DISABLE

Use `DISABLE` to disable a database, rejecting all new client connection requests. Existing connections are unaffected.

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

Use `ENABLE` to enable a database previously disabled by `DISABLE`, accepting new client connections again.

```sql
ENABLE db;            -- Enable specified database (database name required)
```

```bash
$ pgb -c "ENABLE mydb;"       # Enable mydb, allow new connections
```


----------------

### RECONNECT

Use `RECONNECT` to gracefully rebuild server connections. Pgbouncer closes connections when released back to pool, creating new ones when needed.

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

Use `KILL` to immediately disconnect all client and server connections for a database. Unlike `PAUSE`, `KILL` doesn't wait for transaction completion - forces immediate disconnect.

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

Use `KILL_CLIENT` to terminate a specific client connection. Client ID can be obtained from `SHOW CLIENTS` output.

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

Use `SUSPEND` to suspend Pgbouncer. Flushes all socket buffers and stops listening until `RESUME`.

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

Use `SHUTDOWN` to shut down Pgbouncer process. Multiple shutdown modes supported:

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

Use `RELOAD` to reload Pgbouncer config files. Dynamically updates most config params without process restart.

```sql
RELOAD;               -- Reload config files
```

```bash
$ pgb -c "RELOAD;"              # Reload via admin console
$ systemctl reload pgbouncer    # Reload via systemd
$ kill -SIGHUP $(cat /var/run/pgbouncer/pgbouncer.pid)  # Reload via signal
```

Pigsty provides playbook task to reload Pgbouncer config:

```bash
./pgsql.yml -l <cls> -t pgbouncer_reload    # Reload cluster Pgbouncer config
```


----------------

### WAIT_CLOSE

Use `WAIT_CLOSE` to wait for server connections to finish closing. Typically used after `RECONNECT` or `RELOAD` to ensure old connections are fully released.

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

Pgbouncer provides rich `SHOW` commands for monitoring pool status:

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

Pgbouncer supports Unix signal control, useful when admin console is unavailable:

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
$ kill -SIGHUP $(cat /var/run/pgbouncer/pgbouncer.pid)

# Graceful shutdown via signal
$ kill -SIGTERM $(cat /var/run/pgbouncer/pgbouncer.pid)

# Pause via signal
$ kill -SIGUSR1 $(cat /var/run/pgbouncer/pgbouncer.pid)

# Resume via signal
$ kill -SIGUSR2 $(cat /var/run/pgbouncer/pgbouncer.pid)
```



----------------

## Traffic Switching

Pigsty provides `pgb-route` utility function to quickly switch Pgbouncer traffic to other nodes for zero-downtime migration:

```bash
# Definition (already in /etc/profile.d/pg-alias.sh)
function pgb-route(){
  local ip=${1-'\/var\/run\/postgresql'}
  sed -ie "s/host=[^[:space:]]\+/host=${ip}/g" /etc/pgbouncer/pgbouncer.ini
  cat /etc/pgbouncer/pgbouncer.ini
}

# Usage: Route traffic to 10.10.10.12
$ pgb-route 10.10.10.12
$ pgb -c "RECONNECT; WAIT_CLOSE;"
```

Complete zero-downtime switching flow:

```bash
# 1. Modify route target
$ pgb-route 10.10.10.12

# 2. Reload config
$ pgb -c "RELOAD;"

# 3. Rebuild connections and wait for old connections to release
$ pgb -c "RECONNECT;"
$ pgb -c "WAIT_CLOSE;"
```
