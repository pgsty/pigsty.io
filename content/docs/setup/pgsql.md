---
title: "Getting Started with PostgreSQL"
linkTitle: Use PG
weight: 265
description: Get started with PostgreSQL—connect using CLI and graphical clients
icon: fa-solid fa-database
module: [PGSQL]
categories: [Tutorial]
---


[**PostgreSQL**](https://www.postgresql.org/) (abbreviated as PG) is the world's most advanced and popular open-source relational database. Use it to store and retrieve multi-modal data.

This guide is for developers with basic Linux CLI experience but not very familiar with PostgreSQL, helping you quickly get started with PG in Pigsty.

We assume you're a personal user deploying in the default single-node mode. For prod multi-node HA cluster access, refer to [**Prod Service Access**](/docs/pgsql/service/).

--------

## Basics

In the default [**single-node installation**](/docs/setup/install) template, you'll create a PostgreSQL database cluster named `pg-meta` on the current node, with only one primary instance.

PostgreSQL listens on port `5432`, and the cluster has a preset database `meta` available for use.

After installation, exit the current admin user ssh session and re-login to refresh environment variables.
Then simply type `p` and press Enter to access the database cluster via the `psql` CLI tool:

```bash
vagrant@pg-meta-1:~$ p
psql (18.1 (Ubuntu 18.1-1.pgdg24.04+2))
Type "help" for help.

postgres=#
```

You can also switch to the `postgres` OS user and execute `psql` directly to connect to the default `postgres` admin database.



--------

## Connecting to Database

To access a PostgreSQL database, use a CLI tool or graphical client and fill in the PostgreSQL **connection string**:

```bash
postgres://username:password@host:port/dbname
```

Some drivers and tools may require you to fill in these parameters separately. The following five are typically required:

| Parameter  | Description             | Example Value | Notes                                                       |
|------------|-------------------------|---------------|-------------------------------------------------------------|
| `host`     | Database server address | `10.10.10.10` | Replace with your node IP or domain; can omit for localhost |
| `port`     | Port number             | `5432`        | PG default port, can be omitted                             |
| `username` | Username                | `dbuser_dba`  | Pigsty default database admin                               |
| `password` | Password                | `DBUser.DBA`  | Pigsty default admin password (**change this!**)            |
| `dbname`   | Database name           | `meta`        | Default template database name                              |
{.full-width}

For personal use, you can directly use the Pigsty default database superuser `dbuser_dba` for connection and management. The `dbuser_dba` has full database privileges.
By default, if you specified the `configure -g` parameter when configuring Pigsty, the password will be randomly generated and saved in `~/pigsty/pigsty.yml`:

```bash
cat ~/pigsty/pigsty.yml | grep pg_admin_password
```

--------

## Default Accounts

Pigsty's default [**single-node template**](/docs/conf/meta) presets the following database users, ready to use out of the box:

| Username      | Password        | Role           | Purpose                            |
|---------------|-----------------|----------------|------------------------------------|
| `dbuser_dba`  | `DBUser.DBA`    | Superuser      | Database admin (**change this!**)  |
| `dbuser_meta` | `DBUser.Meta`   | Business admin | App R/W (**change this!**)  |
| `dbuser_view` | `DBUser.Viewer` | Read-only user | Data viewing (**change this!**)    |
{.full-width}

For example, you can connect to the `meta` database in the `pg-meta` cluster using three different connection strings with three different users:

```bash
postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta
postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
postgres://dbuser_view:DBUser.View@10.10.10.10:5432/meta
```

Note: These default passwords are automatically replaced with random strong passwords when using `configure -g`. Remember to replace the IP address and password with actual values.


--------

## Using CLI Tools

`psql` is the official PostgreSQL CLI client tool, powerful and the first choice for DBAs and developers.

On a server with Pigsty deployed, you can directly use `psql` to connect to the local database:

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

After successful connection, you'll see a prompt like this:

```bash
psql (18.1)
Type "help" for help.

meta=#
```

**Common psql Commands**

After entering psql, you can execute SQL statements or use meta-commands starting with `\`:

| Command    | Description            | Command     | Description               |
|------------|------------------------|-------------|---------------------------|
| `Ctrl+C`   | Interrupt query        | `Ctrl+D`    | Exit psql                 |
| `\?`       | Show all meta commands | `\h`        | Show SQL command help     |
| `\l`       | List all databases     | `\c dbname` | Switch to database        |
| `\d table` | View table structure   | `\d+ table` | View table details        |
| `\du`      | List all users/roles   | `\dx`       | List installed extensions |
| `\dn`      | List all schemas       | `\dt`       | List all tables           |

**Executing SQL**

In `psql`, directly enter SQL statements ending with semicolon `;`:

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



--------

## Using Graphical Clients

If you prefer graphical interfaces, here are some popular PostgreSQL clients:

**Grafana**

Pigsty's [**`INFRA`**](/docs/infra) module includes [**Grafana**](/docs/infra) with a pre-configured PostgreSQL data source (Meta).
You can directly query the database using SQL from the Grafana Explore panel through the [**browser graphical interface**](/docs/setup/webui), no additional client tools needed.

Grafana's default username is **`admin`**, and the password can be found in the [**`grafana_admin_password`**](/docs/infra/param#grafana_admin_password) field in the [**inventory**](/docs/concept/iac/inventory) (default `pigsty`).

**DataGrip**

[**DataGrip**](https://www.jetbrains.com/datagrip/) is a professional database IDE from JetBrains, with powerful features.
IntelliJ IDEA's built-in Database Console can also connect to PostgreSQL in a similar way.

**DBeaver**

[**DBeaver**](https://dbeaver.io/) is a free open-source universal database tool supporting almost all major databases. It's a cross-platform desktop client.

**pgAdmin**

[**pgAdmin**](https://www.pgadmin.org/) is the official PostgreSQL-specific GUI tool from PGDG, available through browser or as a desktop client.

Pigsty provides a configuration template for one-click pgAdmin service deployment using Docker in [**Software Template: pgAdmin**](/docs/app/pgadmin).



--------

## Viewing Monitoring Dashboards

Pigsty provides many PostgreSQL [**monitoring dashboards**](/docs/pgsql/monitor/dashboard), covering everything from cluster overview to single-table analysis.

We recommend starting with **PGSQL Overview**. Many elements in the dashboards are clickable, allowing you to drill down layer by layer to view details of each cluster, instance, database, and even internal database objects like tables, indexes, and functions.




--------

## Trying Extensions

One of PostgreSQL's most powerful features is its [**extension ecosystem**](/docs/pgsql/ext). Extensions can add new data types, functions, index methods, and more to the database.

Pigsty provides an unparalleled [**440+ extensions**](https://pgext.cloud/list) in the PG ecosystem, covering 16 major categories including time-series, geographic, vector, and full-text search—install with one click.
Start with three powerful and commonly used extensions that are automatically installed in Pigsty's [**default template**](/docs/conf/meta). You can also [**install**](/docs/pgsql/ext/install) more extensions as needed.

- [**`postgis`**](https://pgext.cloud/e/postgis): Geographic information system for processing maps and location data
- [**`pgvector`**](https://pgext.cloud/e/vector): Vector database supporting AI embedding vector similarity search
- [**`timescaledb`**](https://pgext.cloud/e/timescaledb): Time-series database for efficient storage and querying of time-series data

```sql
\dx                            -- psql meta command, list installed extensions
TABLE pg_available_extensions; -- Query installed, available extensions
CREATE EXTENSION postgis;      -- Enable postgis extension
```



--------

## Next Steps

Congratulations on completing the PostgreSQL basics! Next, you can start [**configuring and customizing**](/docs/setup/config) your database.
