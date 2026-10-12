---
title: "Getting Started with PostgreSQL"
linkTitle: Use PG
weight: 265
description: Connect to PostgreSQL with command-line tools and graphical clients.
icon: fa-solid fa-database
module: [PGSQL]
categories: [Tutorial]
---

[PostgreSQL](https://www.postgresql.org/) is an open-source relational database.
It can store and retrieve different types of data.
This guide uses PG as an abbreviation for PostgreSQL.

Use this guide if you know basic Linux commands and want to start with PostgreSQL in Pigsty.
The examples use the default single-node installation.
For production clusters with multiple nodes, see [Service Access](/docs/pgsql/service/).

## Basics

The default [single-node template](/docs/setup/install/) creates the `pg-meta` cluster on the current node.
This cluster has one primary instance.
PostgreSQL listens on port `5432`.
The template also creates the `meta` database.

After installation, close your administration account SSH session.
Log in again to load the new environment variables.
Enter `pp` to open `psql`:

```bash
vagrant@pg-meta-1:~$ pp
psql ({{< param pg_version >}} (Ubuntu {{< param pg_version >}}-1.pgdg24.04+1))
Type "help" for help.

postgres=#
```

The command uses `p` as a shortcut for the `pig` command-line tool.
You can also use the `postgres` operating system account to run `psql`.
This connects to the default `postgres` administration database.

## Connecting to Database

Use a command-line tool or a graphical client to connect.
Supply a PostgreSQL connection string in this format:

```bash
postgres://username:password@host:port/dbname
```

Some drivers and clients require separate connection parameters:

| Parameter  | Description             | Example Value | Notes                                                       |
|------------|-------------------------|---------------|-------------------------------------------------------------|
| `host`     | Database server address | `10.10.10.10` | Replace with your node IP or domain; can omit for localhost |
| `port`     | Port number             | `5432`        | PG default port, can be omitted                             |
| `username` | Username                | `dbuser_dba`  | Pigsty default database admin                               |
| `password` | Password                | `DBUser.DBA`  | Pigsty default admin password (**change this!**)            |
| `dbname`   | Database name           | `meta`        | Default template database name                              |
{.full-width}

For personal administration, you can use `dbuser_dba`.
This account is a database superuser with full privileges.

If you ran `configure -g`, the script generated a random administration password.
Find the password in `~/pigsty/pigsty.yml`:

```bash
cat ~/pigsty/pigsty.yml | grep pg_admin_password
```

## Default Accounts

The default [single-node template](/docs/conf/meta/) defines these database accounts:

| Username      | Password        | Role           | Purpose                            |
|---------------|-----------------|----------------|------------------------------------|
| `dbuser_dba`  | `DBUser.DBA`    | Superuser      | Database admin (**change this!**)  |
| `dbuser_meta` | `DBUser.Meta`   | Business admin | App R/W (**change this!**)  |
| `dbuser_view` | `DBUser.Viewer` | Read-only user | Data viewing (**change this!**)    |
{.full-width}

These examples connect to the same `meta` database with different accounts:

```bash
postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta
postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
postgres://dbuser_view:DBUser.Viewer@10.10.10.10:5432/meta
```

Replace the example IP address and password with your actual values.
The `configure -g` command replaces the three example passwords with random passwords.
See [Security Recommendations](/docs/setup/security/) for its complete scope and limitations.

## Using CLI Tools

`psql` is the PostgreSQL command-line client.
On a Pigsty node, use one of these methods to connect to the local database:

```bash
# Simplest way: use postgres system user for local connection (no password needed)
sudo -u postgres psql

# Use connection string (recommended, most universal)
psql 'postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta'

# Use parameter form
psql -h 10.10.10.10 -p 5432 -U dbuser_dba -d meta

# Use env vars to avoid password appearing in command line
export PGPASSWORD='DBUser.DBA'
psql -h 10.10.10.10 -p 5432 -U dbuser_dba -d meta
```

Replace the example IP address and password before you run the connection commands.
After a successful connection, `psql` shows a prompt:

```bash
psql ({{< param pg_version >}})
Type "help" for help.

meta=#
```

**Common psql commands**

Enter SQL statements at the prompt.
To run a psql meta-command, start the command with `\`.

| Command    | Description            | Command     | Description               |
|------------|------------------------|-------------|---------------------------|
| `Ctrl+C`   | Interrupt query        | `Ctrl+D`    | Exit psql                 |
| `\?`       | Show all meta commands | `\h`        | Show SQL command help     |
| `\l`       | List all databases     | `\c dbname` | Switch to database        |
| `\d table` | View table structure   | `\d+ table` | View table details        |
| `\du`      | List all users/roles   | `\dx`       | List installed extensions |
| `\dn`      | List all schemas       | `\dt`       | List all tables           |

**SQL example**

End each SQL statement with a semicolon (`;`).
This example creates a test table, adds two rows, queries the rows, and removes the table:

```sql
-- Check PostgreSQL version
SELECT version();

-- Check current time
SELECT now();

-- Create a test table
CREATE TABLE test (id SERIAL PRIMARY KEY, name TEXT, created_at TIMESTAMPTZ DEFAULT now());

-- Insert data
INSERT INTO test (name) VALUES ('hello'), ('world');

-- Query data
SELECT * FROM test;

-- Drop test table
DROP TABLE test;
```

## Using Graphical Clients

You can also connect with a graphical client.

### Grafana

The [INFRA module](/docs/infra/) includes Grafana and a PostgreSQL data source named **Meta**.
Open the [Web UI](/docs/setup/webui/).
Use the Grafana **Explore** panel to query PostgreSQL with SQL.
This method requires no additional client software.

The default Grafana username is `admin`.
Find its password in [`grafana_admin_password`](/docs/infra/param#grafana_admin_password) in the [inventory](/docs/concept/iac/inventory/).
The default password is `pigsty`.

### DataGrip

[DataGrip](https://www.jetbrains.com/datagrip/) is a database development tool from JetBrains.
IntelliJ IDEA also has a Database Console that can connect to PostgreSQL.

### DBeaver

[DBeaver](https://dbeaver.io/) is a free, open-source database client.
It runs on multiple desktop operating systems and supports PostgreSQL and other databases.

### pgAdmin

[pgAdmin](https://www.pgadmin.org/) is a PostgreSQL administration client from PGDG.
You can use its browser interface or desktop application.
Pigsty supplies a [pgAdmin template](/docs/app/pgadmin/) for deployment with Docker.

## Viewing Monitoring Dashboards

Pigsty supplies [PostgreSQL monitoring dashboards](/docs/pgsql/monitor/).
They show information from cluster summaries to individual tables.

Open **PGSQL Overview** first.
Select a cluster to see its instances and databases.
Use the dashboard links to examine tables, indexes, and functions.

## Trying Extensions

[PostgreSQL extensions](/docs/pgsql/ext/) add data types, functions, index methods, and other database features.
Pigsty packages [{{< param pgext_count >}} extensions](/ext/list) in 16 categories.
These categories include time-series data, geographic data, vectors, and full-text search.

Start with these extensions:

- [`postgis`](/ext/e/postgis) processes geographic and location data. The default template installs it.
- [`pgvector`](/ext/e/vector) supplies vector similarity search for AI embeddings. The default template installs it.
- [`timescaledb`](/ext/e/timescaledb) stores and queries time-series data. [Install it](/docs/pgsql/ext/install/) when required.

Use these commands to list and enable extensions:

```sql
\dx                            -- psql meta command, list installed extensions
TABLE pg_available_extensions; -- Query installed, available extensions
CREATE EXTENSION postgis;      -- Enable postgis extension
```

## Next Steps

[Change the configuration](/docs/setup/config/) to define your databases, users, and extensions.
